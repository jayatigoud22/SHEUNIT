<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.DAO.UserDAO"%>
<%@page import="com.Db.*"%>
<%@page import="com.User.Post"%>
<%@page import="com.User.UserDetails"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 
<%
UserDetails user6 = (UserDetails) session.getAttribute("userD");

if (user6 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login!");
}
%> 

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>View Users</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>

  <%
   String updateMsg = (String)session.getAttribute("updateMsg");
  if(updateMsg!=null)
  {
	%>  
  <div class="alet alert-success" role="alert"><%=updateMsg%></div>
  
  <%
  session.removeAttribute("updateMsg");
  }
  %>
  
   <%
   String wrongMsg = (String)session.getAttribute("wrongMsg");
  if(wrongMsg!=null)
  {
	%>  
  <div class="alet alert-success" role="alert"><%=wrongMsg%></div>
  
  <%
  session.removeAttribute("wrongMsgg");
  }
  %>

	<div class="container">
		<h2 class="text-center mt-5 mb-5">MANAGE USERS!</h2>
		<!-- <a href="admin.jsp" class="btn btn-sm btn-light mt-3 ml-2" style="color:teal;">Back </a>
 -->
 

 
 <a href="admin.jsp" class="btn btn-sm btn-light mt-3 ml-2" style="color:teal;">Back to posts</a>
 
		<div class="row">
			<!-- <div class="offset-md-3 col-md-6 offset-md-3"> -->
                                     
  
  

				<%
				if (user6 != null) {
					UserDAO ob = new UserDAO(DBConnect.getConn());
			/* 		List<Post> post = ob.getData(user5.getId()); */
			    List<UserDetails> us1 = ob.viewUsers();
					for (UserDetails ad : us1) {
						
				%>
				
				<div class="card mt-5 mb-5 mr-2">
					<div class="card-body">
						<h5 class="card-title"> Id:&nbsp;<%=ad.getId()%></h5>
						<p class="card-text"><i>User Name:</i>	&nbsp;<%=ad.getName() %></p>
						<p class="card-text"><i>Email:</i>&nbsp;<%=ad.getEmail() %></p>
						<p class="card-text"><i>Password:</i>&nbsp;<%=ad.getPassword() %></p>
						<div class=" container ">
						<%-- <a href="adminEdit.jsp?job_id=<%=ad.getId() %>" class="btn btn-primary text-white">Edit</a>
						 --%>
						 <a href="deleteServlet2?uid=<%=ad.getId() %>">Delete</a>
						</div>
					</div>
				</div> 
                   
   <%--  <table class="table">
  
    <tbody>
      <tr>
        <td><%=ad.getId()%></td>
        <td><%=ad.getName()%></td>
        <td><%=ad.getEmail()%></td>
        <td><%=ad.getPassword()%></td>
         <td><a href="deleteServlet?job_id=<%=ad.getId() %>" class="">Delete</a>
						</td>
      </tr>
    </tbody>
  </table> --%>
                     

				<%
				}
				}
				%>

 	







			</div>
		</div>
	</div>
	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>