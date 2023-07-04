

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.*"%>
<%@page import="com.User.Post"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user5 = (UserDetails) session.getAttribute("userD");

if (user5 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login!");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Business</title>
<%@include file="allcomponents/allcss.jsp"%>
<style type="text/css">
.card-horizontal {
    display: flex;
    flex: 1 1 auto;
}
</style>
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

    <div class="container-fluid">
    <h2 class="text-center mt-5">Welcome Admin!</h2>
    <a href="admin.jsp"
						class="btn btn-light text-white mt-5 hovering"
						style="background-color: teal; font-size: 24px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Back to Previous</a> <a href="allPost.jsp"
						class="btn btn-light mt-5 ml-2"
						style="color: teal; font-size: 24px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">Explore</a>
			
			
			<a href="alluser.jsp" class="btn btn-sm btn-light mt-3 ml-2" style="color:teal;">View Users</a>
 	<a href="schemes.jsp" class="btn btn-sm btn-light mt-3 ml-2" style="color:teal;">Add Schemes</a>
 	
				<div class="card mt-5 mb-5">
				<a href="alluser.jsp" class="btn btn-sm btn-light mt-3 ml-2" style="color:teal;">View Users</a>
 
    <div class="row">
        <div class="col-12 mt-3">
        <%
				if (user5 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.allPostData();
					//List<Post> post = ob.getData(user5.getId());
					for (Post ad : post) {
						
				%>
				
            <div class="card">
                <div class="card-horizontal">
                    <div class="img-square-wrapper">
                        <img class="" src="http://via.placeholder.com/300x180" alt="Card image cap">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title"><%=ad.getTitle()%></h4>
                        <p class="card-text"><%=ad.getContent() %></p>
                        
                        <p class="card-text"><%=ad.getContact() %></p>
                        <a href="adminEdit.jsp?job_id=<%=ad.getId() %>" class="btn btn-primary text-white">Edit</a>
						<a href="deleteServlet?job_id=<%=ad.getId() %>" class="btn btn-danger text-white">Delete</a>
                    </div>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                    <%-- <p><b class="text-success">Posted By: <%=user3.getName() %> </b> </p> --%>
                </div>
            </div>
            <%
				}
				}
				%>
            
        </div>
    </div>
</div>
</div>
		
	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>