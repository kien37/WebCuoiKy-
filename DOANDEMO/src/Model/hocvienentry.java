package Model;

public class hocvienentry {
	int MAHV;
	String TENHV;
	String TENDANGNHAP;
	String MATKHAU;
	String EMAIL;
	String SDT;
	String GIOITINH;
	public hocvienentry() {}
	public int getMAHV() {
		return MAHV;
	}
	public void setMAHV(int mAHV) {
		MAHV = mAHV;
	}
	public String getTENHV() {
		return TENHV;
	}
	public void setTENHV(String tENHV) {
		TENHV = tENHV;
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
	public hocvienentry(int mAHV, String tENHV, String tENDANGNHAP, String mATKHAU, String eMAIL, String sDT,
			String gIOITINH) {
		super();
		MAHV = mAHV;
		TENHV = tENHV;
		TENDANGNHAP = tENDANGNHAP;
		MATKHAU = mATKHAU;
		EMAIL = eMAIL;
		SDT = sDT;
		GIOITINH = gIOITINH;
	}
	
}
