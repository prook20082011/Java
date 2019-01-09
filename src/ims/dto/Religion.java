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
public class Religion {
    private int id_religion;
    private String religion;

    public Religion() {
    }

    public Religion(int id_religion, String religion) {
        this.id_religion = id_religion;
        this.religion = religion;
    }

    public int getId_religion() {
        return id_religion;
    }

    public void setId_religion(int id_religion) {
        this.id_religion = id_religion;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }
    
}
