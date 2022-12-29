package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.UserDAO;
import Model.User;

public class LoginAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;

	private String tendangnhap;
	private String matkhau;

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public String login() {
		User nd = new UserDAO().login(tendangnhap, matkhau);

		if (nd != null) {
			session.put("nguoidung", nd);
			System.out.println("Login success");
			if (nd.getLoaiquyen().equals("ADMIN")) {
				return "admin";
			} else
				return "khach";

		} else {
			addActionMessage("Đăng nhập thất bại");
			System.out.println("Login fail");
			return "error";
		}
	}

	public String logout() {
		//User nd = new UserDAO().login(tendangnhap, matkhau);
		//if (nd != null) {
//			session.remove("nguoidung", nd);
			return "success";
	}

}
