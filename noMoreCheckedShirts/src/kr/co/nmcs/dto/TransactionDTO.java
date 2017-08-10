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

	public TransactionDTO() {

	}

	public TransactionDTO(int tcode, int ocode, int acode, String rname, String tradate, int trastatus, String rhp,
			String raddrs, String rpost) {

		this.tcode = tcode;
		this.ocode = ocode;
		this.acode = acode;
		this.rname = rname;
		this.tradate = tradate;
		this.trastatus = trastatus;
		this.rhp = rhp;
		this.raddrs = raddrs;
		this.rpost = rpost;
	}

	@Override
	public String toString() {
		return "TransactionDTO [tcode=" + tcode + ", ocode=" + ocode + ", acode=" + acode + ", rname=" + rname
				+ ", tradate=" + tradate + ", trastatus=" + trastatus + ", rhp=" + rhp + ", raddrs=" + raddrs
				+ ", rpost=" + rpost + "]";
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
