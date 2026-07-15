package com.fashionstore.dao;

import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.fashionstore.model.Product;
import com.fashionstore.util.DBConnection;

public class ProductDAO {
	public List<Product> getAllProducts() {

	    List<Product> list = new ArrayList<>();

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql = "SELECT * FROM products";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while(rs.next()){

	            Product p = new Product();

	            p.setProductId(rs.getInt("product_id"));
	            p.setCategoryId(rs.getInt("category_id"));
	            p.setProductName(rs.getString("product_name"));
	            p.setDescription(rs.getString("description"));
	            p.setBrand(rs.getString("brand"));
	            p.setPrice(rs.getDouble("price"));
	            p.setStock(rs.getInt("stock"));
	            p.setStatus(rs.getString("status"));
	            p.setImage(rs.getString("image"));

	            list.add(p);

	        }

	        con.close();

	    } catch(Exception e){
	        e.printStackTrace();
	    }

	    return list;
	}

    public boolean addProduct(Product product) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO products(category_id,product_name,description,brand,price,stock,status,image) VALUES(?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, product.getCategoryId());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getDescription());
            ps.setString(4, product.getBrand());
            ps.setDouble(5, product.getPrice());
            ps.setInt(6, product.getStock());
            ps.setString(7, product.getStatus());
            ps.setString(8, product.getImage());

            int i = ps.executeUpdate();

            if(i > 0) {
                status = true;
            }

            con.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    
 // Get Product By ID
    public Product getProductById(int productId) {

        Product p = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM products WHERE product_id=?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, productId);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                p = new Product();

                p.setProductId(rs.getInt("product_id"));
                p.setCategoryId(rs.getInt("category_id"));
                p.setProductName(rs.getString("product_name"));
                p.setDescription(rs.getString("description"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setStatus(rs.getString("status"));

            }

            con.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return p;
    }


    // Update Product
    public boolean updateProduct(Product p) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE products SET category_id=?, product_name=?, description=?, brand=?, price=?, image=?, status=? WHERE product_id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, p.getCategoryId());
            ps.setString(2, p.getProductName());
            ps.setString(3, p.getDescription());
            ps.setString(4, p.getBrand());
            ps.setDouble(5, p.getPrice());
            ps.setString(6, p.getImage());
            ps.setString(7, p.getStatus());
            ps.setInt(8, p.getProductId());

            status = ps.executeUpdate() > 0;

            con.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    
 // Delete Product
    public boolean deleteProduct(int productId) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM products WHERE product_id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, productId);

            status = ps.executeUpdate() > 0;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}