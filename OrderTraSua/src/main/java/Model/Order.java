package Model;

public class Order {
	int id;
	int idnguoidung;
	int idloaicaphe;
	int soluong;
	int gia;
	int thanhtien;
	
	public Order(int id, int idnguoidung, int idloaicaphe, int soluong, int gia, int thanhtien) {
		super();
		this.id = id;
		this.idnguoidung = idnguoidung;
		this.idloaicaphe = idloaicaphe;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = thanhtien;
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
