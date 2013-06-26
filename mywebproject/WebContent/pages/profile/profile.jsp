<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/common/common.css"></link>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/profile/profile.css"></link>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/common/avataar.css"></link>
<script type="text/javascript" src="${pageContext.request.contextPath}/main.js"></script>
<title>Profile</title>
</head>
<body>
	<table id="table1">
			<tr>
				<td style="width:80%;padding:10px;">
				    <div style="height:100%">
					<table id="table2">
					  <tbody>
						<tr style="height:10%;">
							<td style="vertical-align: top">
								<%@include file="../header/header.jsp" %>
			   				</td>
			   			</tr>
						<!-- <tr style="height:20%"></tr> -->		
						<tr style="height:70%">
						  <td>
						    <div id="profile">
							  <div class="profile_1">
							  		   <div id="avataar" style="margin-left:50px;margin-top:15px">
											<%if (request.getAttribute("image")==null){%>
											<img src="${pageContext.request.contextPath}/images/empty_profile.gif">
											<%}else{%>
											<img src='<%=request.getAttribute("image")%>'>
											<%}%>
										</div>
										<table class="avataar_table">
											<tr>
												<td>
													<form method="post" action="/mywebproject/image.htm" enctype="multipart/form-data">
														<input type="file" name="image" onchange="this.form.submit();" class="imgbutton_style">
														<!--<button type="submit" name="change" id="button">Change Picture</button>  -->
													</form>
												</td>
											</tr>
										</table>
							  </div>
							  <div class="profile_2">
	   	 						<ul>
							        <li><a href="#tab1" tabindex="1">About Me</a></li>
							        <li><a href="#tab2" tabindex="2">Education</a></li>
							        <li><a href="#tab3" tabindex="3">Work History</a></li>
							        <li><a href="#tab4" tabindex="4">Hobbies</a></li>
							        <li><a href="#tab5" tabindex="5">Contact Details</a></li> 
							        <li><a href="#tab6" tabindex="6">Groups</a></li> 
	    						</ul>
							  </div>
							 </div>
						  </td>
						</tr>
						</tbody>
					</table>
					</div>
				</td>
				<td valign="middle"><%@include file="../menu/menu.jsp" %></td>
			</tr>
	</table>
</body>
</html>