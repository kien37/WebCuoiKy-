package Model;

public class adminentry {
	int MAAD;
	String TENAD;
	String TENDANGNHAP;
	String MATKHAU;
	String EMAIL;
	String SDT;
	String GIOITINH;
	public adminentry() {}
	public int getMAAD() {
		return MAAD;
	}
	public void setMAAD(int mAAD) {
		MAAD = mAAD;
	}
	public String getTENAD() {
		return TENAD;
	}
	public void setTENAD(String tENAD) {
		TENAD = tENAD;
	}
	public String getTENDANGNHAP() {
		return TENDANGNHAP;
	}
	public void setTENDANGNHAP(String tENDANGNHAP) {
		TENDANGNHAP = tENDANGNHAP;
	}
	public String getMATKHAU() {
		return MATKHAU;
	}
	public void setMATKHAU(String mATKHAU) {
		MATKHAU = mATKHAU;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getGIOITINH() {
		return GIOITINH;
	}
	public void setGIOITINH(String gIOITINH) {
		GIOITINH = gIOITINH;
	}
	public adminentry(int mAAD, String tENAD, String tENDANGNHAP, String mATKHAU, String eMAIL, String sDT,
			String gIOITINH) {
		super();
		MAAD = mAAD;
		TENAD = tENAD;
		TENDANGNHAP = tENDANGNHAP;
		MATKHAU = mATKHAU;
		EMAIL = eMAIL;
		SDT = sDT;
		GIOITINH = gIOITINH;
	}
	
}
