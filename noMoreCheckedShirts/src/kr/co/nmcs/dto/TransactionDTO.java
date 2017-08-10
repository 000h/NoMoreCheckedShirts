package kr.co.nmcs.dto;

public class TransactionDTO {
	private int tcode;
	private int ocode;
	private int acode;
	private String rname;
	private String tradate;
	private int trastatus;
	private String rhp;
	private String raddrs;
	private String rpost;
	// join
	private String id;
	private String name;
	private String hp;
	private String addrs;
	private String postcode;
	private int price;
	private String info;

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getAddrs() {
		return addrs;
	}

	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public int getAcode() {
		return acode;
	}

	public void setAcode(int acode) {
		this.acode = acode;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getTradate() {
		return tradate;
	}

	public void setTradate(String tradate) {
		this.tradate = tradate;
	}

	public int getTrastatus() {
		return trastatus;
	}

	public void setTrastatus(int trastatus) {
		this.trastatus = trastatus;
	}

	public String getRhp() {
		return rhp;
	}

	public void setRhp(String rhp) {
		this.rhp = rhp;
	}

	public String getRaddrs() {
		return raddrs;
	}

	public void setRaddrs(String raddrs) {
		this.raddrs = raddrs;
	}

	public String getRpost() {
		return rpost;
	}

	public void setRpost(String rpost) {
		this.rpost = rpost;
	}

}
