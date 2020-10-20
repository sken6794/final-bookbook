package site.itwill.dto;

import org.springframework.web.multipart.MultipartFile;

public class Book {

	private int bcode;
	private String bname;
	private String bpublisher;
	private String bwriter;
	private String bcategory;
	private int bprice;
	private String bimage;
	private String binfo;
	private String bloc;
	private int bquantity;
	private String boutdate;
	private String bindate;
	
	//입력파일을 저장하기 위한 필드
	private MultipartFile file;
	
	private BookStock bookstock;
	private BookIn bookin;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}
	
	public BookStock getBookstock() {
		return bookstock;
	}

	public void setBookstock(BookStock bookstock) {
		this.bookstock = bookstock;
	}

	public BookIn getBookin() {
		return bookin;
	}

	public void setBookin(BookIn bookin) {
		this.bookin = bookin;
	}

	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBpublisher() {
		return bpublisher;
	}

	public void setBpublisher(String bpublisher) {
		this.bpublisher = bpublisher;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBcategory() {
		return bcategory;
	}

	public void setBcategory(String bcategory) {
		this.bcategory = bcategory;
	}

	public int getBprice() {
		return bprice;
	}

	public void setBprice(int bprice) {
		this.bprice = bprice;
	}

	public String getBimage() {
		return bimage;
	}

	public void setBimage(String bimage) {
		this.bimage = bimage;
	}

	public String getBinfo() {
		return binfo;
	}

	public void setBinfo(String binfo) {
		this.binfo = binfo;
	}

	public String getBloc() {
		return bloc;
	}

	public void setBloc(String bloc) {
		this.bloc = bloc;
	}

	public int getBquantity() {
		return bquantity;
	}

	public void setBquantity(int bquantity) {
		this.bquantity = bquantity;
	}

	public String getBoutdate() {
		return boutdate;
	}

	public void setBoutdate(String boutdate) {
		this.boutdate = boutdate;
	}

	public String getBindate() {
		return bindate;
	}

	public void setBindate(String bindate) {
		this.bindate = bindate;
	}

}
