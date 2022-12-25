package Model;

public class User {
	int id;
	String tendangnhap,loaiquyen;
	
	public User(int id, String tendangnhap, String loaiquyen) {
		super();
		this.id = id;
		this.tendangnhap = tendangnhap;
		this.loaiquyen = loaiquyen;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getLoaiquyen() {
		return loaiquyen;
	}

	public void setLoaiquyen(String loaiquyen) {
		this.loaiquyen = loaiquyen;
	}
	
	
}
