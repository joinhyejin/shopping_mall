package com.team2.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

public class Model2 {
	public static ArrayList<Product> showAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();
			System.out.println("¿¬°á");
			String sql = "select * from SHOP order by s_name, s_price";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<Product> products = new ArrayList<Product>();
			Product p = null;

			String name = null;
			int price = 0;
			String photo = null;
			String info = null;
			String cont = null;

			while (rs.next()) {
				name = rs.getString("s_name");
				price = rs.getInt("s_price");
				photo = rs.getString("s_img");
				info = rs.getString("s_info");
				cont = rs.getString("s_con");

				p = new Product(name, price, photo, info, cont);
				products.add(p);
				System.out.println(p.getName());
			}
			return products;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static ArrayList<Product> showEtc() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();

			String sql = "select * from SHOP where s_category = 'etc'";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<Product> products = new ArrayList<Product>();
			Product p = null;

			String name = null;
			int price = 0;
			String photo = null;
			String info = null;
			String cont = null;

			while (rs.next()) {
				name = rs.getString("s_name");
				price = rs.getInt("s_price");
				photo = rs.getString("s_img");
				info = rs.getString("s_info");
				cont = rs.getString("s_con");

				p = new Product(name, price, photo, info, cont);
				products.add(p);
			}
			return products;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static ArrayList<Product> showLife() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();

			String sql = "select * from SHOP where s_category = 'life'";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<Product> products = new ArrayList<Product>();
			Product p = null;

			String name = null;
			int price = 0;
			String photo = null;
			String info = null;
			String cont = null;

			while (rs.next()) {
				name = rs.getString("s_name");
				price = rs.getInt("s_price");
				photo = rs.getString("s_img");
				info = rs.getString("s_info");
				cont = rs.getString("s_con");
				
				p = new Product(name, price, photo, info, cont);
				products.add(p);
			}
			return products;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static ArrayList<Product> showPerson() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();

			String sql = "select * from SHOP where s_category = 'person'";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<Product> products = new ArrayList<Product>();
			Product p = null;

			String name = null;
			int price = 0;
			String photo = null;
			String info = null;
			String cont = null;

			while (rs.next()) {
				name = rs.getString("s_name");
				price = rs.getInt("s_price");
				photo = rs.getString("s_img");
				info = rs.getString("s_info");
				cont = rs.getString("s_con");

				p = new Product(name, price, photo, info, cont);
				products.add(p);
			}
			return products;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void calc(HttpServletRequest request) {
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String photo = request.getParameter("photo");

		if (request.getParameterValues("coupon") != null) {
			price = (int) (0.9 * price);
		}

		Product product = new Product(name, price, quantity, photo, price * quantity, null);
		request.setAttribute("product", product);
	}

}