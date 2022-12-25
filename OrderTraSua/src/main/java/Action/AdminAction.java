package Action;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import DAO.FoodDAO;
import DAO.UserDAO;
import DAO.OrderDAO;
import Model.Food;
import Model.User;
import Model.Order;

public class AdminAction extends ActionSupport {
	
	private List<Order> orderlist;
 
    public String home() {
        System.out.println("Welcome home");
        return SUCCESS;
    }
}