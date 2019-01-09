/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ims.bll;

import ims.dto.Employee;
import ims.dal.EmployeeDAL;


import java.util.ArrayList;
import javax.swing.JComboBox;

/**
 *
 * @author ACER
 */
public class EmployeeBLL {
    EmployeeDAL dal = new EmployeeDAL();
    public ArrayList<Employee>readEmployee(){
        ArrayList<Employee> list = dal.readEmployee();
        return list;
    }
    public void addNew(Employee emp) {
        dal.addNew(emp);
    }
    public void deleteEmp(String id){
        dal.deleteEmp(id);
    }
    public void LoadDataCB(String sql,JComboBox cb,String bien){
        dal.LoadDataCB(sql, cb, bien);
    }
    public void InsertImage(String imgPath){
        dal.InsertImage(imgPath);
    }
}
