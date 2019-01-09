/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ims.dto;

/**
 *
 * @author ACER
 */
public class Salary {
    private int id_salary;
    private int salary;

    public Salary() {
    }

    public Salary(int id_salary, int salary) {
        this.id_salary = id_salary;
        this.salary = salary;
    }

    public int getId_salary() {
        return id_salary;
    }

    public void setId_salary(int id_salary) {
        this.id_salary = id_salary;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
    
}
