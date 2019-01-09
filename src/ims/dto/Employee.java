/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ims.dto;

import java.util.Date;

/**
 *
 * @author ACER
 */
public class Employee {
    private String id_emp;private String id_room;private String sex;

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Employee(String sex) {
        this.sex = sex;
    }
    private String room;private String id_position;private String position;private String id_specialism;
    private String specialism;private Date date_birth;private String place_birth;
    private String id_card; private String family;private String nation;private String religion;
    private String home_town;private String address;private String phone;private int salary; 
    private double allowance;private String contract;private String id_contract; private String type_contract;
    private Date date_contract; private Date date_start;private Date date_end;private String full_name;private int id_salary;
   private int id_nation;private int id_religion; private int id_family;private String id_level;private String level;

    public String getId_level() {
        return id_level;
    }

    public void setId_level(String id_level) {
        this.id_level = id_level;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public Employee(String id_level, String level) {
        this.id_level = id_level;
        this.level = level;
    }
    public Employee() {
    }

    public Employee(String id_emp, String first_name, String last_name, String id_room, String room, String id_position, String position, String id_specialism, String specialism, Date date_birth, String place_birth, String id_card, String family, String nation, String religion, String home_town, String address, String phone, int salary, double allowance, String contract, String id_contract, String type_contract, Date date_contract, Date date_start, Date date_end, String full_name, int id_salary, int id_sex, int id_nation, int id_religion, int id_family) {
        this.id_emp = id_emp;
        
        this.id_room = id_room;
        this.room = room;
        this.id_position = id_position;
        this.position = position;
        this.id_specialism = id_specialism;
        this.specialism = specialism;
       
        this.date_birth = date_birth;
        this.place_birth = place_birth;
        this.id_card = id_card;
        this.family = family;
        this.nation = nation;
        this.religion = religion;
        this.home_town = home_town;
        this.address = address;
        this.phone = phone;
        this.salary = salary;
        this.allowance = allowance;
        this.contract = contract;
        this.id_contract = id_contract;
        this.type_contract = type_contract;
        this.date_contract = date_contract;
        this.date_start = date_start;
        this.date_end = date_end;
        this.full_name = full_name;
        this.id_salary = id_salary;
       
        this.id_nation = id_nation;
        this.id_religion = id_religion;
        this.id_family = id_family;
    }

    public String getId_emp() {
        return id_emp;
    }

    public void setId_emp(String id_emp) {
        this.id_emp = id_emp;
    }

   
    

    public String getId_room() {
        return id_room;
    }

    public void setId_room(String id_room) {
        this.id_room = id_room;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getId_position() {
        return id_position;
    }

    public void setId_position(String id_position) {
        this.id_position = id_position;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getId_specialism() {
        return id_specialism;
    }

    public void setId_specialism(String id_specialism) {
        this.id_specialism = id_specialism;
    }

    public String getSpecialism() {
        return specialism;
    }

    public void setSpecialism(String specialism) {
        this.specialism = specialism;
    }

   

    public Date getDate_birth() {
        return date_birth;
    }

    public void setDate_birth(Date date_birth) {
        this.date_birth = date_birth;
    }

    public String getPlace_birth() {
        return place_birth;
    }

    public void setPlace_birth(String place_birth) {
        this.place_birth = place_birth;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getFamily() {
        return family;
    }

    public void setFamily(String family) {
        this.family = family;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getHome_town() {
        return home_town;
    }

    public void setHome_town(String home_town) {
        this.home_town = home_town;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public double getAllowance() {
        return allowance;
    }

    public void setAllowance(double allowance) {
        this.allowance = allowance;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }

    public String getId_contract() {
        return id_contract;
    }

    public void setId_contract(String id_contract) {
        this.id_contract = id_contract;
    }

    public String getType_contract() {
        return type_contract;
    }

    public void setType_contract(String type_contract) {
        this.type_contract = type_contract;
    }

    public Date getDate_contract() {
        return date_contract;
    }

    public void setDate_contract(Date date_contract) {
        this.date_contract = date_contract;
    }

    public Date getDate_start() {
        return date_start;
    }

    public void setDate_start(Date date_start) {
        this.date_start = date_start;
    }

    public Date getDate_end() {
        return date_end;
    }

    public void setDate_end(Date date_end) {
        this.date_end = date_end;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public int getId_salary() {
        return id_salary;
    }

    public void setId_salary(int id_salary) {
        this.id_salary = id_salary;
    }

    public int getId_nation() {
        return id_nation;
    }

    public void setId_nation(int id_nation) {
        this.id_nation = id_nation;
    }

    public int getId_religion() {
        return id_religion;
    }

    public void setId_religion(int id_religion) {
        this.id_religion = id_religion;
    }

    public int getId_family() {
        return id_family;
    }

    public void setId_family(int id_family) {
        this.id_family = id_family;
    }
    
    
}
