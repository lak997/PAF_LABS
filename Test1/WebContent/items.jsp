<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%
    if (request.getParameter("itemCode") != null)
    {
    	Item itemObj = new Item();
   		itemObj.connect();//For testing the connect method
    }
	
%>
    <%
if (request.getParameter("itemcode") != null)
 {
 Item itemObj = new Item();
 String stsMsg = itemObj.insertItem(request.getParameter("itemcode"),
 request.getParameter("itemname"),
 request.getParameter("itemprice"),
 request.getParameter("itemdesc"));
 session.setAttribute("statusMsg", stsMsg);
 }
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Items Management</h1>
<form method="post" action="items.jsp">
 Item code: <input name="itemcode" type="text"><br>
 Item name: <input name="itemname" type="text"><br>
 Item price: <input name="itemprice" type="text"><br>
 Item description: <input name="itemdesc" type="text"><br>
 <input name="btnSubmit" type="submit" value="Save">
</form>
	<%
 System.out.print(session.getAttribute("statusMsg"));
%>

</body>
</html>