package com.example.book.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




public class DBCrud {

    PreparedStatement ps = null;
    ResultSet rs = null;
    Connection conn = null;


    //dang nhap
    public Account login(String user, String pass) {
        String sql = "SELECT * FROM account WHERE user = ? AND pass = ?";

        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Account(rs.getInt(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    //checkAccount: tra cuu username xem da co trong db chua
    public Account checkAccountExit(String user) {
        String sql = "SELECT * FROM account WHERE user = ?";

        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Account(rs.getInt(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    //Registe
    public void register(String user, String pass) {
        String query = "insert into account values (0,?,?,0)";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
            
        } catch (Exception e) {
            
        }
    }



    //tra ve list sach
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from book";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Product(rs.getString(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getString(4),
                    rs.getDouble(5),
                     rs.getString(6),
                      rs.getString(7)));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }


        return list;
    }

    //tra ve list loai sach
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from loaisach";
        try {   
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Category(rs.getString(1),
                 rs.getString(2)));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }


        return list;
    }
    
    //tra ve list sach theo ID loai (by category)
    public List<Product> getAllProductByCID(String idLoai) {
        List<Product> list = new ArrayList<>();
        String query = "select * from book where idLoai = ? ";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idLoai);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Product(rs.getString(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getString(4),
                    rs.getDouble(5),
                     rs.getString(6),
                      rs.getString(7)));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }


        return list;
    }

    //tra ve sach theo ID sach 
    public Product getAllProductByID(String idSach) {
        
        String query = "select * from book where idSach = ? ";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idSach);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Product(rs.getString(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getString(4),
                    rs.getDouble(5),
                     rs.getString(6),
                      rs.getString(7));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }
}




    /*public static List<Product> getAllProduct(Connection conn){
        List<Product> productList = null;
        String sql = "SELECT * FROM product";
        PreparedStatement ps = null;
        ResultSet rs = null;
        productList = new ArrayList<>();

        //code
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            //chuyen ResultSet sang List<Product>
            while(rs.next()){
                String code = rs.getString("code");
                String name = rs.getString("name");
                double price = rs.getDouble("price");

                Product product = new Product(code, name, price);
                productList.add(product);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return productList;


    }
    

    public static void addProduct(Connection conn, Product product){

        //cau lenh sql - insert vao csdl
        String sql = "insert into product (code, name, price) values(?, ?, ?)";
        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getCode());
            ps.setString(2, product.getName());
            ps.setDouble(3, product.getPrice());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        

    }

    public static Product findProductByCode(Connection conn, String code){
        Product product = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "select * from product where code = ?";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, code);
            rs = ps.executeQuery();

            while(rs.next()){
                String name = rs.getString("name");
                double price = rs.getDouble("price");

                product = new Product(code, name, price);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return product;
    }

    public static void updateProduct(Connection conn, Product product){

        String sql = " update product set name = ?, price = ? where code = ?";

        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setDouble(2, product.getPrice());
            ps.setString(3, product.getCode());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        

    }

    


*/


