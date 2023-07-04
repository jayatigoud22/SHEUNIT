<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="allcomponents/allcss.jsp" %>

</head>
<body>
	<%@include file="allcomponents/navbar.jsp" %>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4 offset-md-4">
   <div class="card mt-5 mb-5">
       <div class="card-header text-center text-white bg-custom" style="background:#5e35b1;">
       <i class="fa  fa-sign-in fa-3x" aria-hidden="true" style="color: white;"></i>
       <h4>Login</h4>
       </div>
       
 
       <%
         String invalidMsg=(String)session.getAttribute("login-failed");
        if(invalidMsg!=null)
        {
        	%>
        	 <div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
        	 <%
        	 session.removeAttribute("login-failed");
        }
       %>
       
       <%
       String withoutLogin=(String)session.getAttribute("Login-error");
       if(withoutLogin!=null){
    	   %>
    	    <div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
    	   <% 
    	   session.removeAttribute("Login-error");
       }
       %>
       
       <%
       String lgMsg=(String)session.getAttribute("logoutMsg");
       if(lgMsg!=null)
       {%>
    	    <div class="alert alert-success" role="alert"><%=lgMsg%></div>
       <%
       session.removeAttribute("logoutMsg");
       }
       %>
       
       
        <div class="card-body">
        
        <form action="loginServlet" method="post">
        
  
  <div class="form-group" style="color:teal;">
     <label>Enter valid email</label> <input type="email"
									class="form-control" id="exampleInputEmail"
									aria-describedby="emailHelp" name="uemail">

							</div>
  
  <div class="form-group" style="color:teal;">
   <label>Enter Password</label> 
    <input type="password" class="form-control" id="exampleInputPassword" name="upassword" >
  </div>
 
 <div class ="text-center">
  <button type="submit" class="btn btn-light" style="background-color:teal; color:white">Login</button>
 </div>

</form>

       </div>
    </div>
  </div>
</div>
</div>

<%@include file="allcomponents/footer.jsp" %>
</body>
</html>