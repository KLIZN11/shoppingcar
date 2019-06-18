package cn.edu.imnu.shoppingcar.bean;

import java.util.ArrayList;
import java.util.List;

import cn.edu.imnu.shoppingcar.dao.bookDAO;

public class BookPagebean {
	private int pageSize=2;
	private int pageNo=1;
	private int totalPage;
	private List<Book> list=new ArrayList<Book>();
	private boolean hasNextPage;
	private boolean hasPreviousPage;
	public int getTotalPages() {
		bookDAO dao=new bookDAO();
		int recordCount=dao.getRecordCount();
		totalPage=(recordCount+pageSize-1)/pageSize;
		return totalPage;
	}
	public List<Book> getList(){
		bookDAO dao=new bookDAO();
		list=dao.getBookPageList(pageNo, pageSize);
		return list;
	}
	public boolean isHasNextPage() {
		return (this.getPageNo()<this.getTotalPages());
	}
	public boolean  isHasPreviousPage(){
		return (this.getPageNo()>1);
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}
	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}
}
