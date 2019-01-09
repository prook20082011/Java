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
public class Family {
    private int id_family;
    private String family;

    public Family() {
    }

    public Family(int id_family, String family) {
        this.id_family = id_family;
        this.family = family;
    }

    public int getId_family() {
        return id_family;
    }

    public void setId_family(int id_family) {
        this.id_family = id_family;
    }

    public String getFamily() {
        return family;
    }

    public void setFamily(String family) {
        this.family = family;
    }
    
}
