package com.XieYiqiang.week4;

import java.sql.*;

public class DBUtil {

    //private static ResourceBundle bundle=ResourceBundle.getBundle("resources/jdbc");
    private static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static String url = "jdbc:sqlserver://localhost:1433;databaseName=userdb;trustServerCertificate=true";
    private static String user = "sa";
    private static String password = "123456";

    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private DBUtil() {
    }

    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        conn = DriverManager.getConnection(url, user, password);
        return conn;
    }

    public static void close(Connection conn, Statement stmt, ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

}
