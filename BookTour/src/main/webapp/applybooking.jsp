<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>FOR APPLY BOOKING/USER</title>
</head>
<body>

  <%
  	 String fare = (String)request.getParameter("fare");
     String id = (String)request.getParameter("id");
     String userid = (String)session.getAttribute("userid");
     String username = (String)session.getAttribute("username");
     

	if (userid == null)
		response.sendRedirect("userlogin.jsp");%>
<div class="container">
 <jsp:include page="menu.jsp"></jsp:include>

 <div class="row">
      <div class="col-md-6 col-sm-8 mx-auto">
           <div class="card">
               <div class="card-body" style="background-color: #eeefff">
                    <div class="mt-2 text-center">
                         <h3 style="color: red;">REGISTRATION</h3>
                         <h3 style="color: brown;">${massage}</h3>
                     </div>
               
                     <div class="mt-4 text-left">
                       <form action="tour" method="POST">

				        <div class="form-group">
				         <label class="text-uppercase font-weight-bold text-primary">TOUR ID :</label>
				         <input type="text" value="<%= id %>" name="tourid" class="form-control" readonly="readonly">
				        </div>
    
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">CUSTOMER EMAIL :</label>
			             <input type="text" id="email" name="email" value="<%= userid %>" class="form-control" readonly="readonly">
			            </div>
			
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">CUSTOMER NAME :</label>
			             <input type="text" id="name" name="name" value="<%= username %>" class="form-control" readonly="readonly">
			            </div>
			            
			            <div class="form-group">
				         <label class="text-uppercase font-weight-bold text-primary">TOUR FARE (per person):</label>
				         <input type="text" value="<%= fare %>" name="totalfare" class="form-control" readonly="readonly">
				        </div>
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">NO OF PEOPLE * :</label>
			             <input type="text" id="people" name="people" class="form-control" required>
			            </div>
			            <input type="submit" class="btn btn-success btn-block" value="APPLY">


                     </form>
                   </div> <!-- Form tag div -->
              </div> <!-- Card Body End -->
          </div> <!-- Card End -->
       </div> <!-- Col alignment end -->
     </div> <!-- Row End -->
 </div> <!-- Container End -->
    

</body>
</html>