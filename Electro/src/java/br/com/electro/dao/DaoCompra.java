/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.electro.dao;

import br.com.electro.factory.ConnectionFactory;
import br.com.electro.model.Compra;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author internet
 */
public class DaoCompra implements Dao {
     @Override
    public boolean save (Object object){
       Compra cp=null;
       if(object instanceof Compra){
       cp =(Compra)object;
       }else{
           return false;
       }
       String comando="insert into compra(nome, quantidade, preco) values(?,?,?)";
       try{
           PreparedStatement stmt = new ConnectionFactory().getConnection().prepareStatement(comando);
           stmt.setString(1, cp.getNome());
           stmt.setString(2, cp.getQuantidade());
           stmt.setString(3, cp.getPreco());
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
            String comando="delete from compra where id=?";
            PreparedStatement stmt = new ConnectionFactory().getConnection().prepareStatement(comando);
            stmt.setInt(1, id);
            stmt.execute();
            return true;
            
        } catch (SQLException ex) {
            Logger.getLogger(DaoCompra.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
        
    }

    @Override
    public Object get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Object> get() {
        List<Object> lstCompra= new ArrayList<>();
        try {
            String comando= "select * from compra";
            PreparedStatement stmt = new ConnectionFactory().getConnection().prepareStatement(comando);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
        
                Compra cp = new Compra (rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("quantidade"),
                    rs.getString("preco"));
                lstCompra.add(cp);
            }
            return lstCompra;
        } catch (SQLException ex) {
            System.out.println("Erro"+ex.getMessage());
        }
        return null;
    }
}
