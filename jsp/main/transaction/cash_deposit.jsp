<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:text name="title.cashdeposit"/></title>
</head>
<body>
						<div class="main-body">
							<!-- BASIC INPUT -->
	
									<form method="post">

										<div class="widget">
											<div class="widget-header">
												<h3><i class="fa fa-credit-card fa-fw"></i><s:text name="title.cashdeposit"/></h3> <em> - <a href="http://www.banknagari.co.id" target="_blank">Bank Nagari Padang</a> Bersama Membina Citra Membangun Negeri</em>
											</div>
											<div class="widget-content">
												<div class="form-horizontal">
													<div class="form-group">
														<label class="col-md-2 control-label"><s:text name="form.applicationcode"/></label>
														<div class="col-md-4">
															<input type="text" class="form-control">
														</div>
														<label class="col-md-2 control-label"><s:text name="form.branchcode"/></label>
														<div class="col-md-4">
															<input type="number" class="form-control" required>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"><s:text name="form.transactioncode"/></label>
														<div class="col-md-4">
															<input type="text" class="form-control">
														</div>
														<label class="col-md-2 control-label"><s:text name="form.accountnumber"/></label>
														<div class="col-md-4">
															<input type="number" class="form-control" />
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"><s:text name="form.tracenumber"/></label>
														<div class="col-md-4">
															<input type="number" class="form-control"/>
														</div>
														<label class="col-md-2 control-label"><s:text name="form.note"/></label>
														<div class="col-md-4">
															<input type="text" class="form-control"/>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"><s:text name="form.currencydate"/></label>
														<div class="col-md-4">
															<input type="date" class="form-control"/>
														</div>
														<label class="col-md-2 control-label"><s:text name="form.addnote"/></label>
														<div class="col-md-4">
															<input type="text" class="form-control"/>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"><s:text name="form.currencycode"/></label>
														<div class="col-md-4">
															<input type="text" class="form-control"/>
														</div>
														<label class="col-md-2 control-label"><s:text name="form.conversionrate"/></label>
														<div class="col-md-4">
															<input type="number" class="form-control"/>
														</div>
													</div>
													<div class="form-group">
														<label for="" class="col-md-2 control-label"><s:text name="form.equivalentrupiah"/></label>
														<div class="col-md-4"><input type="number" class="form-control"></div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label"></label>
														<div class="col-md-10">
															<button type="submit" class="btn btn-primary"><s:text name="form.submit"/></button>
														</div>	
													</div>

													
													
													</div>
												</div>
											</div>
										</form>
										<!-- END BASIC INPUT -->
				</div>
</body>
</html>