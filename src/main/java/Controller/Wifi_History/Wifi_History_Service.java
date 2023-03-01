package Controller.Wifi_History;

import Controller.SQL_Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class Wifi_History_Service extends SQL_Connection {
    public List<Wifi_History_Entity> getHistory(){
        List<Wifi_History_Entity> list = new LinkedList<>();
        String sql = "select * from wifi_history order by id desc";
        init();
        try{
            PreparedStatement p = connection.prepareStatement(sql);
            ResultSet rs = p.executeQuery();
            while(rs.next()){
                Wifi_History_Entity w = new Wifi_History_Entity(
                        rs.getDouble("LAT"),
                        rs.getDouble("LNT"),
                        rs.getString("DATE")
                );
                w.setId(rs.getInt("id"));
                list.add(w);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        close(this.connection);
        return list;
    }
    public void deleteHistory(String id){
        String sql = "delete from wifi_history where id ="+id;
        init();
        try{
            PreparedStatement p = connection.prepareStatement(sql);
            p.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
        close(this.connection);
    }
}
