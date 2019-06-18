<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.edu.imnu.shoppingcar.dao.bookDAO"%>
<%@ page import="cn.edu.imnu.shoppingcar.bean.Book"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>

<jsp:useBean id="pagination" class="cn.edu.imnu.shoppingcar.bean.BookPagebean" scope="page"></jsp:useBean>
<jsp:setProperty property="pageSize" name="pagination" value="2"/>
<jsp:setProperty property="pageNo" param="pageNo" name="pagination"/>
<html>
<head>
<meta charset="UTF-8">
<title>书籍选购 </title>
<link href="css/base.css" type="text/css" rel="stylesheet" />
<link href="css/my_resume.css" type="text/css" rel="stylesheet" />
<link href="css/register.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<iframe src="top.jsp" width="100%" height="100"  scrolling="no" frameborder="0" ></iframe>
	<div class="resume_con">
	<div class="page_name">书籍选购</div>
	<div class="login_content">
	<form action="ShoppingCarServlet" method="post">
	<% List<Book> list=pagination.getList();
		if(list!=null){
			for(Book book:list){%>
		<p><input type ="checkbox" name ="book" value="<%=book.getBookId()%>"/><%=book.getBookName()%> <%=book.getBookPrice()%> <%=book.getBookWriter()%></p>
		<% };
			}%>
		
		<a href="bookChoose.jsp?pageNo=1">首页</a>
		
		<% if(pagination.isHasPreviousPage()){%>
		
		<a href="bookChoose.jsp?pageNo=<%=pagination.getPageNo()-1%>">上一页</a>
		<%} %>
		
		<% if(pagination.isHasNextPage()){%>
		
		<a href="bookChoose.jsp?pageNo=<%=pagination.getPageNo()+1%>">下一页</a>
		<%} %>
		
		<a href="bookChoose.jsp?pageNo=<%=pagination.getTotalPages()%>">尾页</a>
		
		
		当前是第<jsp:getProperty property="pageNo" name="pagination"/>页	
		共<jsp:getProperty property="totalPages" name="pagination"/>页
		<p><input type ="submit" value="提交"></p>
		</form>
	</div>
	</div>
<iframe src="foot.jsp" width="100%" height="150"  scrolling="no" frameborder="0" ></iframe>		
</body>
</html> 