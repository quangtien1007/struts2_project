package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Model.Food;
import Model.User;

public class FoodDAO {
	public List<Food> getList() {
		List<Food> list = new ArrayList<Food>();
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT *	from LOAICAPHE");
			ResultSet rs = db.executeQuery(statement);
			if (rs != null) {
				while (rs.next()) {
					list.add(new Food(rs.getInt("id"), rs.getString("tencaphe"), rs.getString("hinhanh"),
							rs.getInt("gia")));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	

	public Food getFoodByID(int id) {
		Food food = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from LOAICAPHE WHERE id = ? ");
			statement.setInt(1, id);
			ResultSet rs = db.executeQuery(statement);
			if (rs != null) {
				while (rs.next()) {
					food = new Food(rs.getInt("id"), rs.getString("tencaphe"), rs.getString("hinhanh"),
							rs.getInt("gia"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return food;
	}

	public void store(String ten, String hinh, int gia) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO LOAICAPHE(tencaphe,hinhanh,gia) values(?,?,?)");
			statement.setString(1, ten);
			statement.setString(2, hinh);
			statement.setInt(3, gia);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void Order(int idnguoidung, int idloaicaphe, int soluong, int gia, int thanhtien, String tencaphe, String hinhanh) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO COFFEE.`ORDER` \r\n"
					+ "(idnguoidung, idloaicaphe, soluong, gia, thanhtien, tencaphe, hinhanh)\r\n" + "VALUES( ?, ?, ?, ?, ?, ?, ?);");
			statement.setInt(1, idnguoidung);
			statement.setInt(2, idloaicaphe);
			statement.setInt(3, soluong);
			statement.setInt(4, gia);
			statement.setInt(5, thanhtien);
			statement.setString(6,tencaphe);
			statement.setString(7, hinhanh);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void update(int id, String tencaphe, String hinh, int gia) {
		// TODO Auto-generated method stub
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("UPDATE LOAICAPHE SET tencaphe=?, hinhanh=?, gia=? where id=?");
			statement.setString(1, tencaphe);
			statement.setString(2, hinh);
			statement.setInt(3, gia);
			statement.setInt(4, id);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delete(int id) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("DELETE FROM LOAICAPHE where id=?");
			statement.setInt(1, id);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}