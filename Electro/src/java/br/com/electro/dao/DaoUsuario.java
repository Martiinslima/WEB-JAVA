/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.electro.dao;

import br.com.electro.dao.Dao;
import br.com.electro.factory.ConnectionFactory;
import br.com.electro.model.Cliente;
import br.com.electro.model.Usuario;
import java.security.interfaces.RSAKey;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import static sun.util.logging.PlatformLogger.Level.SEVERE;

/**
 *
 * @author jsoft-ti
 */
public class DaoUsuario implements Dao {
    
    @Override
    public boolean save (Object object){
       Usuario usu =null;
       if(object instanceof Usuario){
       usu =(Usuario)object;
       }else{
           return false;
       }
       String comando="insert into usuario(nome,endereco,email,senha) values(?,?,?,?)";
       try{
           PreparedStatement stmt=new ConnectionFactory().getConnection().prepareStatement(comando);
           stmt.setString(1, usu.getNome());
           stmt.setString(2, usu.getEndereco());
           stmt.setString(3, usu.getEmail());
           stmt.setString(4, usu.getSenha());
           stmt.execute();
           return true;
           
       }catch (SQLException ex){
           System.out.println("Erro ao cadastrar usuario"+ex.getMessage());
          
       }
       return false;
   }
   
    @Override
    public boolean update(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        try {
            String comando="delete from usuario where id=?";
            PreparedStatement stmt = new ConnectionFactory().getConnection().prepareStatement(comando);
            stmt.setInt(1, id);
            
            stmt.execute();
            return true;
            
        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
        
    }

    @Override
    public Object get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Object> get() {
        List<Object> lstUsuarios= new ArrayList<>();
        try {
            String comando= "select * from usuario";
            PreparedStatement stmt = new ConnectionFactory().getConnection().prepareStatement(comando);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                
                Usuario usu = new Usuario (
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("endereco"),
                    rs.getString("email"),
                    rs.getString("senha"));
                lstUsuarios.add(usu);
            }
            return lstUsuarios;
        } catch (SQLException ex) {
            System.out.println(""+ex.getMessage());
        }
        return null;
    }
    
}
