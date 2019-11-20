package GUI;


import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author DEll
 */
import java.sql.*;

public class Connect {

    public static Connection ConnectDB() //อินเตอร์เฟสconnection
    {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            String db = "vegetabledb";
            String url = "jdbc:mysql://localhost:3306/" + db + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            Connection con = DriverManager.getConnection(url, "root", "");
            return con; 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
