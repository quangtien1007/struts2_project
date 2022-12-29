package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Model.Order;
public class OrderDAO {
	public List<Order> getList(){
		List<Order> list=new ArrayList<Order>();
		DBService db=new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT id, idnguoidung, idloaicaphe, soluong, gia, thanhtien, tencaphe, hinhanh\r\n"
					+ "FROM COFFEE.`ORDER` ;");
			ResultSet res=db.executeQuery(statement);	        
			if(res!=null)
			{
				while(res.next())
				{
					list.add( new Order(res.getInt("id"),
							res.getInt("idnguoidung"),
							res.getInt("idloaicaphe"),
							res.getInt("soluong"),
							res.getInt("gia"),
							res.getInt("thanhtien"),
							res.getString("tencaphe"),
							res.getString("hinhanh"))
							);
				}
			}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
}
