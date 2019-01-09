/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ims.dal;

import ims.dto.Employee;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;


/**
 *
 * @author ACER
 */
public class EmployeeDAL extends Database{
    Connection conn = null;
    Statement stmt = null;
    public ArrayList<Employee> readEmployee(){
       
       ArrayList<Employee> emList = new ArrayList<Employee>(); 
       try {      
            conn = getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT manv,hoten, ngaysinh, noisinh FROM nhanvien";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                Employee em = new Employee();
                em.setId_card(rs.getString("manv"));
                em.setFull_name(rs.getString("hoten"));
                
                em.setDate_birth(rs.getDate("ngaysinh"));
                em.setPlace_birth(rs.getString("noisinh"));
                emList.add(em);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return emList;
    }
    public void addNew(Employee emp){
        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String idEmp = emp.getId_emp();
            String fullName = emp.getFull_name();         
            String placeBirth = emp.getPlace_birth();
            String idCard = emp.getId_card();
            String homeTown = emp.getHome_town();
            String address = emp.getAddress();
            String phone = emp.getPhone();
            String idRoom = emp.getId_room();
            Double allowance = emp.getAllowance();
            String sex = emp.getSex();
            String idPosition = emp.getId_position();
            String idLevel = emp.getId_level();
            String idSpecialism = emp.getId_specialism();
            String idContract = emp.getId_contract();
            //String idContract = emp.getId_contract();   
            
            String sql = "INSERT INTO `nhanvien`(`manv`, "
                    +"`hoten`, `maphong`, `macv`, `matd`,"
                    +"`macm`, `noisinh`, `ngaysinh`, `cmnd`, "
                    +"`magd`, `madt`, `matg`, `quequan`, `choo`, "
                    +"`dt`, `phucap`, `ngayhd`, `ngaybd`, `ngaykt`, "
                    +" `mahd`, `mabl`, `gioitinh`)"
                    +"VALUES ('"+idEmp+"','"+fullName+"',"
                    +"'"+idRoom+"','"+idPosition+"','"+idLevel+"','"+idSpecialism+"',"
                    +"'"+placeBirth+"','2010/01/01','"+idCard+"','1',"
                    +"'1','1','"+homeTown+"','"+address+"',"
                    +"'"+phone+"','"+allowance+"','2010/01/01','2010/01/01',"
                    +"'2010/01/01','"+idContract+"','2','"+sex+"')";
            stmt.executeUpdate(sql);
        
        } catch (Exception e) {
            e.printStackTrace();
        }     
    }
    public void deleteEmp(String id){
        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql = "DELETE FROM `nhanvien` WHERE manv=\""+id+"\"";
            stmt.executeUpdate(sql);
        } catch (Exception e) {
        }
    }
    public void LoadDataCB(String sql,JComboBox cb,String bien){   
        try {
            Class.forName("com.mysql.jdbc.Driver");    
            conn = DriverManager.getConnection("jdbc:mysql://localhost/database","root","");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            //Vector data = new Vector();
            while (rs.next()){
                cb.addItem(rs.getString(bien));
            }    
        } catch (Exception e) {
            e.printStackTrace();
        }       
    }
    public void InsertImage(String imgPath) {
    try {
        PreparedStatement ps = getConnection().prepareStatement("INSERT INTO nhanvien(hinhanh) VALUES(?)");
        InputStream img = new FileInputStream(new File(imgPath));
        ps.setBlob(1, img);
    } catch (Exception ex) {
       ex.printStackTrace();
    }
    }
}
