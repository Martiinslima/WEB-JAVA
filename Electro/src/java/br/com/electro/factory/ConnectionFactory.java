/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.electro.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.net.URL;

/**
 *
 * @author jsoft-ti
 */
public class ConnectionFactory {
    
   public static final String SERVIDOR = "localhost";
   public static final String PORTA    = "3306";
   public static final String USUARIO  = "root";
   public static final String SENHA  = "";
   public static final String BANCO    = "electrodb"; 
   
   
   
   public Connection getConnection(){
        String url = "jdbc:mysql://" + SERVIDOR + ":" + PORTA + "/"+ BANCO;
        Connection cnn;
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            cnn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);            
            return cnn;
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver não encontrado");
        } catch (SQLException ex) {
            System.out.println("Não conectou no servidor");
        }catch(Exception ex){
            System.out.println("Outro erro: "+ex.getMessage());
        }
        return null;
   }
}
