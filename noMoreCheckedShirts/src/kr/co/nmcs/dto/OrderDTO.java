package kr.co.nmcs.dto;

public class OrderDTO {
	private int ocode;
	private int scode;
	private int ea;
	private int price;

	public OrderDTO() {
		super();
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

}
