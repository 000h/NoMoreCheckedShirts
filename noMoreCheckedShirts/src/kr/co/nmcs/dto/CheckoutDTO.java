package kr.co.nmcs.dto;

public class CheckoutDTO {
	private int tcode;
	private int ocode;
	private int scode;
	private String name;
	private String img;
	private int ea;
	private int price;
	private String tradate;

	public CheckoutDTO() {
		super();
	}

	public int getTcode() {
		return tcode;
	}

	public void setTcode(int tcode) {
		this.tcode = tcode;
	}

	public int getOcode() {
		return ocode;
	}

	public void setOcode(int ocode) {
		this.ocode = ocode;
	}

	public int getScode() {
		return scode;
	}

	public void setScode(int scode) {
		this.scode = scode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getEa() {
		return ea;
	}

	public void setEa(int ea) {
		this.ea = ea;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getTradate() {
		return tradate;
	}

	public void setTradate(String tradate) {
		this.tradate = tradate;
	}

}
