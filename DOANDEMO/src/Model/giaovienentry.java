package Model;

public class giaovienentry {
int MAGV;
String TENGV;
String TENDANGNHAP;
String MATKHAU;
String EMAIL;
String SDT;
String GIOITINH;
public giaovienentry()
{
	
	}
public giaovienentry(int mAGV, String tENGV, String tENDANGNHAP, String mATKHAU, String eMAIL, String sDT, String gIOITINH) {
	super();
	MAGV = mAGV;
	TENGV = tENGV;
	TENDANGNHAP = tENDANGNHAP;
	MATKHAU = mATKHAU;
	EMAIL = eMAIL;
	SDT = sDT;
	GIOITINH = gIOITINH;
}
public int getMAGV() {
	return MAGV;
}
public void setMAGV(int mAGV) {
	MAGV = mAGV;
}
public String getTENGV() {
	return TENGV;
}
public void setTENGV(String tENGV) {
	TENGV = tENGV;
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
}
