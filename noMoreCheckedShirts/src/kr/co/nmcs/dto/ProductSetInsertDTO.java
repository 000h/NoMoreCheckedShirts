package kr.co.nmcs.dto;

public class ProductSetInsertDTO {
	private String name;
	private int price;
	private String img;
	private String info;
	private int setType;
	private int pcode;

	public ProductSetInsertDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductSetInsertDTO(String name, int price, String img, String info, int setType, int pcode) {
		super();
		this.name = name;
		this.price = price;
		this.img = img;
		this.info = info;
		this.setType = setType;
		this.pcode = pcode;
	}

	@Override
	public String toString() {
		return "ProductSetInsertDTO [name=" + name + ", price=" + price + ", img=" + img + ", info=" + info
				+ ", setType=" + setType + ", pcode=" + pcode + "]";
	}

	public int getPcode() {
		return pcode;
	}

	public void setPcode(int pcode) {
		this.pcode = pcode;
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

	public int getSetType() {
		return setType;
	}

	public void setSetType(int setType) {
		this.setType = setType;
	}

}
