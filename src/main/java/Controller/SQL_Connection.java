package Controller;

import Controller.Wifi.Wifi_Utility;
import Controller.Wifi_History.Wifi_History_Utility;

import java.io.File;
import java.sql.*;


public class SQL_Connection {
    protected Connection connection;
    public void tableInitalize(){
        init();
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(
                    Wifi_Utility.wifiTable
            );
            PreparedStatement preparedStatement2 = connection.prepareStatement(
                    Wifi_History_Utility.wifiHistoryTable
            );
            int affected = preparedStatement.executeUpdate();
            int affected2 = preparedStatement2.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
        close(connection);
    }
    protected void init(){
        File file = new File("");
        String currentPath = "jdbc:sqlite:"+file.getAbsolutePath()+"/sample.db";
        try {
            // create a database connection
            connection = DriverManager.getConnection(currentPath);
            Statement statement = connection.createStatement();
        }
        catch(SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    protected void close(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void close(PreparedStatement preparedStatement, ResultSet resultSet) {
        try {
            if (resultSet != null && !resultSet.isClosed()) {
                resultSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if (preparedStatement != null && !preparedStatement.isClosed()) {
                preparedStatement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
