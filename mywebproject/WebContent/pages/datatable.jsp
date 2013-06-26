<%@page import="com.mwas.authentication.FMSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" %>
<%@page
	import="org.apache.poi.ss.usermodel.*,java.io.*,java.util.ArrayList,com.datatable.bean.Person"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/themes/common/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/themes/datatable.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/themes/tablestyle.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/themes/common/avataar.css" />
<title>Data Table</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/datatable.js"></script>
</head>
<body>

	<!-- <div id="header"> -->
	<!-- use jstl below ????????-->
	<% if (request.getAttribute("FMSession") != null)
		{
			FMSession usersession = (FMSession)request.getAttribute("FMSession");
			System.out.println("Rama1");
			if (usersession.getHomepagehit()==1)
			{
	%>
			<a id="session_popup" href="#usersession"></a>
			<div id="usersession" class="sessionModal">
				<div>
				<a href="#close" title="Close" class="close">X</a>
				<h2 align="center">HAL-9000</h2>
				<p>Welcome Root. I have missed you.</p>
				<p>You have no new messages.Would you like to edit your profile?</p>
				</div>
			</div>
	<% } } %>
	<table id="table1">
		<tbody>
		    <tr>
			<td style="width:80%;padding:10px;">
			<div style="height:100%;">
			<table id="table2">
				<tbody>
				<tr style="height:10%;">
				<td style="vertical-align: top">
					<%@include file="./header/header.jsp" %>
			   	</td>
				</tr>
			    <tr style="height:10%;">
				<td style="vertical-align: middle">
				<div id="uploadgrid">
						<form method="post" action="/mywebproject/datagrid.htm" onsubmit="return verifyextn( );" enctype="multipart/form-data">
							<label>FutureMaker: </label><input type="text" name="name">
							<label>File location: </label><input type="file" id="datafile" name="datafile">
							<button type="submit" value="upload">UpLoad</button>
						</form>
				</div>
			   </td>
			   </tr>
				<tr style="height:40%;">
				<td style="vertical-align: top">
				  <div id="headergrid">
				  <table id="employeeheader">
				  <thead>
								<tr>
								    <th style="padding: 5px;"></th>
									<th align="center" style="padding: 10px;">FutureMaker</th>
									<th align="center" style="padding: 20px;">HRID</th>
									<th align="center" style="padding: 20px;">Designation</th>
									<th align="center" style="padding: 20px;">Division</th>
									<th align="center" style="padding-left: 115px;padding-right: 115px;">Profile Picture</th>
								</tr>
							</thead>
					</table>
				  </div>
				  <div id="datagrid">
					<table class="employeedata" style="table-layout: fixed;">
							<tbody>
							<% 
							    if (request.getSession().getAttribute("Employees")!= null)
							    {
							       ArrayList<?> employees = (ArrayList<?>)request.getSession().getAttribute("Employees");
								   for (int i=0;i<employees.size();i++) 
								   { 
								     if (employees.get(i) instanceof Person){
								     		Person employee = (Person)employees.get(i);
		      				%>
								<tr>
								    <td align="center" style="padding: 10px;">
								      <div class="checkbox">
								       <input id="check1" type="checkbox" name="profileSelect" value="checked" onchange="selectCount(this.checked);" /></div>
									<td align="center" style="padding: 20px;">
									 <div style="width: 79px;">
									 <%=employee.getEmployeeName()%>
									 </div>
									 </td>
									<td align="center" style="padding: 20px;">
									<div style="width: 52px;">
									<%=employee.getHr_ID()%>
									</div>
									</td>
									<td align="center" style="padding: 20px;">
									<div style="width: 78px;">
									<%=employee.getDesignation()%>
									</div>
									</td>
									<td align="center" style="padding: 20px;">
									<div style="width: 52px;">
									<%=employee.getDivision()%>
									</div>
									</td>
									<td align="center" style="padding: 35px;">
										<div id="avataar" style="width: 125px;">
											<%if (request.getAttribute("image")==null){%>
											<img src="${pageContext.request.contextPath}/images/empty_profile.gif">
											<%}else{%>
											<img src='<%=request.getAttribute("image")%>'>
											<%}%>
										</div>
									</td>
								</tr>
								<% } } }%>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
		
			<tr style="height:15%;">
				<td style="vertical-align: bottom">
				  <%@include file="./footer/footer.jsp"%>
				</td>
			</tr>
			</tbody>
			</table>
			</div>
				<td style="vertical-align: middle">
					<%@include file="./menu/menu.jsp"%>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>