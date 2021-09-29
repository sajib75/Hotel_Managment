/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author User
 */
public class table {
    public static void main(String[] args) {
        Connection con = null;
        Statement st = null;
        try { 
            con = DBConnaction.getConn();
            st= con.createStatement();
           // st.executeUpdate("create table users(name varchar(200),email varchar(200),password varchar(50),securityQuestion varchar(500),answer varchar(200),address varchar(200),status varchar(20))");
            //st.executeUpdate("create table room(roomNo varchar(10),roomType varchar(200),bed varchar(200),price int,status varchar(20)");
            st.executeUpdate("create table customer(id int,name varchar(200),mobileNumber varchar(20),nationlity varchar(200),gender varchar(50),email varchar(100),idProof varchar(200),address varchar(100),chaeckIn varchar(100),roomNo varchar(100),bed varchar(100),roomType varchar(100),pricePerDay int(10),numberOfDayStay int(10),totalAmount varchar(100),chackout varchar(100))");
                JOptionPane.showMessageDialog(null, "Table Create Suscsfully");
                    
        } catch (Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
        finally{
            try {
                con.close();
                st.close();
            } catch (Exception e) {
            }
        }
    }
}
