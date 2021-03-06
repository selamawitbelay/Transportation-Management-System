<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="../header.jsp">
	<%-- We define a parameter that was used by header.jsp, which is title --%>
	<c:param name="title" value="Employee's Profile"></c:param>
</c:import>

<div class="container">
	<div class="row">
		<div class="well col-md-2  toppad  pull-right col-md-offset-2 ">
			<A class="btn col-md-6" href="edit.html">Edit Profile</A> <A
				class="btn col-md-6" href="edit.html">Logout</A> <br>
			<p class=" text-info">May 05,2014,03:00 pm</p>
		</div>
		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


			<div id="login-overlay" class="modal-dialog"
				style="padding-top: 20px">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">${employee.firstName}'s Profile</h3>
					</div>
					<div class="modal-body">
						<div class="well">
							<div class="row">
								<div class="col-md-3 col-lg-3 col-xs-12" align="center">
									<img alt="User Pic"
										src="${pageContext.request.contextPath}/resources/img/noprofileimage.png"
										class="img-rounded img-responsive">
								</div>


								<div class=" col-md-9 col-lg-9 table-responsive">
									<table class="table table-user-information table-sm">
										<tbody>
										<tr class="col-xs-12">
												<td>Position Title</td>
												<td>${employee.utype.type }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Name</td>
												<td>${employee.firstName } ${employee.middleName } ${employee.lastName }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Email</td>
												<td>${employee.email }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Date of Birth</td>
												<td><fmt:formatDate value="${employee.dateOfBirth }" pattern="yyyy-MM-dd" var="dateOfBirth" />${dateOfBirth}</td>
											</tr>

											<tr class="col-xs-12">
												<td>Joined On</td>
												<td>${employee.joinDate}</td>
											</tr>
											<tr class="col-xs-12">
												<td>Address</td>
												<td>${employee.address.street }, ${employee.address.city }, ${employee.address.country }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Salary</td>
												<td>$${employee.salary }</td>
											</tr>
											<tr class="col-xs-12">
												<td>Phone Number</td>
												<td>${employee.phoneLandline }(Landline)<br> ${employee.phoneMobile }(Mobile)
												</td>
											</tr>
											<tr class="col-xs-12">
												<td>Branch</td>
												<td><a href="${pageContext.servletContext.contextPath}/branch/show/${employee.branch.id}">${employee.branch.name }</a></td>
											</tr>
											<tr class="col-xs-12">
												<td>Manager</td>
												<td>${employee.manager.firstName} ${employee.manager.lastName}</td>
											</tr>
										</tbody>
									</table>
									<form  action="/EmployeeSearch" method="POST">
										<div class="form-group col-xs-8">
											<input class="form-control" placeholder="Employee search" type="text">
										</div>
										<input type="submit" class="btn btn-default col-xs-4" value="Search">
									</form>
									<a href="#" class="btn btn-primary">List of inactive transportations</a> 
									<a href="#" class="btn btn-primary">Current transportations schedule</a> 
									<a href="#" class="btn btn-primary">All transportations schedule</a> 
								</div>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<a data-original-title="Broadcast Message" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-primary"><i
							class="glyphicon glyphicon-envelope"></i></a> <span
							class="pull-right"> <a href="edit.html"
							data-original-title="Edit this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-warning"><i
								class="glyphicon glyphicon-edit"></i></a> <a
							data-original-title="Remove this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-danger"><i
								class="glyphicon glyphicon-remove"></i></a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<c:import url="../footer.jsp"></c:import>