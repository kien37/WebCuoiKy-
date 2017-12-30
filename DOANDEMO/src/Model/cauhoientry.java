package Model;

public class cauhoientry {
	int MACH;
	String TENCH;
	int MADADUNG;
	public cauhoientry() {}
	public int getMACH() {
		return MACH;
	}
	public void setMACH(int mACH) {
		MACH = mACH;
	}
	public String getTENCH() {
		return TENCH;
	}
	public void setTENCH(String tENCH) {
		TENCH = tENCH;
	}
	public int getMADADUNG() {
		return MADADUNG;
	}
	public void setMADADUNG(int mADADUNG) {
		MADADUNG = mADADUNG;
	}
	public cauhoientry(int mACH, String tENCH, int mADADUNG) {
		super();
		MACH = mACH;
		TENCH = tENCH;
		MADADUNG = mADADUNG;
	}
	

}
