package Model;

public class Order {
	int id;
	int idnguoidung;
	int idloaicaphe;
	int soluong;
	int gia;
	int thanhtien;
	String tencaphe;
	String hinhanh;
	
	public Order(int id, int idnguoidung, int idloaicaphe, int soluong, int gia, int thanhtien, String tencaphe, String hinhanh) {
		super();
		this.id = id;
		this.idnguoidung = idnguoidung;
		this.idloaicaphe = idloaicaphe;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.tencaphe = tencaphe;
		this.hinhanh = hinhanh;
	}
	public String getTencaphe() {
		return tencaphe;
	}

	public void setTencaphe(String tencaphe) {
		this.tencaphe = tencaphe;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdnguoidung() {
		return idnguoidung;
	}

	public void setIdnguoidung(int idnguoidung) {
		this.idnguoidung = idnguoidung;
	}

	public int getIdloaicaphe() {
		return idloaicaphe;
	}

	public void setIdloaicaphe(int idloaicaphe) {
		this.idloaicaphe = idloaicaphe;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}
	
}
