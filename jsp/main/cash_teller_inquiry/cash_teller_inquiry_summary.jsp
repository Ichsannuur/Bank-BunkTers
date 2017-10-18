<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inquiry KAS Teller Ringkasan</title>
</head>
<body>
						<div class="main-body">
							<!-- WIDGET -->
							<div class="widget">
								<div class="widget-header">
									<h3><i class="fa fa-list"></i> <s:text name="form.title.cashtellerinquirysummary"/></h3> 
								</div>
								<div class="widget-content">
									<form class="form-horizontal label-left" role="form">
										<div class="form-group form-group-sm">
											<label for="phone" class="col-sm-2 control-label"><s:text name="form.customer.branchcode"/></label>
											<div class="col-sm-4">
												<input type="text" id="phone" class="form-control" value="101">
											</div>
										</div>
										<div class="form-group form-group-sm">
											<label for="phone" class="col-sm-2 control-label">User ID</label>
											<div class="col-sm-4">
												<input type="text" id="tax-id" class="form-control" value="ASTRI">
											</div>
											<label for="phone" class="col-sm-2 control-label"><s:text name="form.cashteller.currencycode"/></label>
											<div class="col-sm-4">
												<input type="text" id="ssn" class="form-control" value="Rp">
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- END OF WIDGET -->
							<!-- RESPONSIVE TABLE GENERAL LEDGER -->
							<div class="widget widget-table">
								<div class="widget-header">
									<h3><i class="fa fa-table"></i> <s:text name="form.cashteller.summary"/></h3>
								</div>
								<div class="widget-content">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<tbody>
												<tr>
													<td><s:text name="form.cashteller.balanceyesterday"/></td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td><s:text name="form.cashteller.debittotaltoday"/></td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td><s:text name="form.cashteller.totalcashentry"/></td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td><s:text name="form.cashteller.credittotaltoday"/></td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td><s:text name="form.cashteller.totalcashout"/></td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<th><s:text name="form.cashteller.lastbalance"/></th>
													<th>xxx.xxx.xxx</th>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- END RESPONSIVE TABLE GENERAL LEDGER-->
						</div>
</body>
</html>