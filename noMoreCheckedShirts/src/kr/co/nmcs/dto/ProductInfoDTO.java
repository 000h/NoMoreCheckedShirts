package kr.co.nmcs.dto;

public class ProductInfoDTO {
	private int scode;
	private String name;
	private int price;
	private String img;
	private String info;

	public ProductInfoDTO() {
		super();
	}

	@Override
	public String toString() {
		return "ProductInfoDTO [scode=" + scode + ", name=" + name + ", price=" + price + ", img=" + img + ", info="
				+ info + "]";
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

}
