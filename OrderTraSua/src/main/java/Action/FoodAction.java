package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.FoodDAO;
import Model.Food;

public class FoodAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private List<Food> foodlist;
	
	int id;
	String tencaphe;
	int gia;
	
	File hinh;
	String hinhFileName;
	String hinhFileContent;
	private String message;
	private Food food;
	
	
	public String getMessage() {
		return message;
	}



	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}
	
	
	
	public List<Food> getFoodlist() {
		return foodlist;
	}

	public void setFoodlist(List<Food> foodlist) {
		this.foodlist = foodlist;
	}
		

	public String getTencaphe() {
		return tencaphe;
	}

	public void setTencaphe(String tencaphe) {
		this.tencaphe = tencaphe;
	}
	
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public File getHinh() {
		return hinh;
	}
	public void setHinh(File hinh) {
		this.hinh = hinh;
	}

	public String getHinhFileName() {
		return hinhFileName;
	}
	public void setHinhFileName(String hinhFileName) {
		this.hinhFileName = hinhFileName;
	}

	public String getHinhFileContent() {
		return hinhFileContent;
	}



	public void setHinhFileContent(String hinhFileContent) {
		this.hinhFileContent = hinhFileContent;
	}



	public Map<String, Object> getSession() {
		return session;
	}



	public String list()
	{
		foodlist=new FoodDAO().getList();
		return SUCCESS;
	}
	
	
	public String create()
	{		
		return SUCCESS;
	}
	
	
	
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public Food getFood() {
		return food;
	}



	public void setFood(Food food) {
		this.food = food;
	}



	public String store()
	{	
		String path = ServletActionContext.getServletContext().getRealPath("./img");
		System.out.println("Image Location:" + path);
		System.out.println(hinhFileName);
		 if(hinhFileName!=null)
		 {
			// handling the file
			File file = new File(path, hinhFileName);
			
			try {
				
				FileUtils.copyFile(hinh, file);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }

		
		new FoodDAO().store(tencaphe,hinhFileName,gia);
		
		message="Thêm mới thành công!";
		return "list";
	}

	public String edit()
	{		
		food=new FoodDAO().getFoodByID(id);
		return SUCCESS;
	}

	public String update()
	{	
		String path = ServletActionContext.getServletContext().getRealPath("./img");
		System.out.println("Image Location:" + path);
		System.out.println(hinhFileName);
		 if(hinhFileName!=null)
		 {
			// handling the file
			File file = new File(path, hinhFileName);
			
			try {
				
				FileUtils.copyFile(hinh, file);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		 else
		 {
			 food=new FoodDAO().getFoodByID(id);
			 hinhFileName=food.getHinh();
		 }
		
		new FoodDAO().update(id,tencaphe,hinhFileName,gia);
		
		message="Cập nhật thành công!";
		return "list";
	}
	
	public String delete()
	{		
		new FoodDAO().delete(id);
		message="Xóa thành công!";
		return "list";
	}
}
