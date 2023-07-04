<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="allcomponents/allcss.jsp" %>

>
</head>
<body>
<%@include file="allcomponents/navbar.jsp" %>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4 offset-md-4">
   <div class="card mt-5 mb-5">
       <div class="card-header text-center text-white bg-custom" style="background:#5e35b1">
       <i class="fa fa-user-plus fa-3x" aria-hidden="true" style="color: white;"></i>
       <h4>Registration</h4>
       </div>
      

  
  <%
   String regMsg = (String)session.getAttribute("reg-success");
   if(regMsg!=null)
   {
	%>   
	   <div class="alert alert-success" role="alert"><%=regMsg%><a href="login.jsp"> Login</a></div> 
  <%
  session.removeAttribute("reg-success");
   }
  %>
  
    <%
   String FailedMsg = (String)session.getAttribute("failed-msg");
   if(FailedMsg!=null)
   {
	%>   
	   <div class="alert alert-danger" role="alert"><%=FailedMsg%></div> 
  <%
  session.removeAttribute("failed-msg");
   }
  %>
       
        <div class="card-body">
        <form action="UserServlet" method="post">
        
        <div class="form-group" style="color:teal;">
    
    <label>Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" 
    name="fname">
  </div>
  
  <div class="form-group" style="color:teal;">
     <label>Enter valid email</label>
    <input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="uemail">
   
  </div>
  
  <div class="form-group" style="color:teal;">
   <label>Enter Password</label> 
    <input type="password" class="form-control" id="exampleInputPassword" name="upassword" >
  </div>
 
 <div class ="text-center">
  <button type="submit" class="btn btn-light" style="background-color:teal; color:white">Register</button>
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