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
public class Nation {
    private int id_nation;
    private String nation;

    public Nation() {
    }

    public Nation(int id_nation, String nation) {
        this.id_nation = id_nation;
        this.nation = nation;
    }

    public int getId_nation() {
        return id_nation;
    }

    public void setId_nation(int id_nation) {
        this.id_nation = id_nation;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }
    
}
