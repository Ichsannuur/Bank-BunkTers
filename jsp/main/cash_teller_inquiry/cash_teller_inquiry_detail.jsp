<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inquiry KAS Teller Detail</title>
</head>
<body>
	
						<div class="main-body">
							<!-- WIDGET -->
							<div class="widget">
								<div class="widget-header">
									<h3><i class="fa fa-list"></i> <s:text name="form.title.cashtellerinquiry"/>: Detail</h3>
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
							<!-- RESPONSIVE TABLE GIRO -->
							<div class="col-md-6">
							<div class="widget widget-table">
								<div class="widget-header">
									<h3><i class="fa fa-dollar"></i> Giro</h3>
								</div>
								<div class="widget-content">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th width="30px">No.</th>
													<th><s:text name="form.cashteller.analysis"/></th>
													<th><s:text name="form.cashteller.credit"/></th>
													<th><s:text name="form.cashteller.debit"/></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><s:text name="form.cashteller.cash"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>2</td>
													<td>LLG</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>3</td>
													<td><s:text name="form.cashteller.clearing"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Transfer</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>5</td>
													<td><s:text name="form.cashteller.other"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th colspan="2">TOTAL</th>
													<th>xxx.xxx.xxx</th>
													<th>xxx.xxx.xxx</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
							</div>
							<!-- END RESPONSIVE TABLE GIRO -->
							<!-- RESPONSIVE TABLE TABUNGAN -->
							<div class="col-md-6">
							<div class="widget widget-table">
								<div class="widget-header">
									<h3><i class="fa fa-book"></i> <s:text name="form.cashteller.savings"/></h3>
								</div>
								<div class="widget-content">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th width="30px">No.</th>
													<th><s:text name="form.cashteller.analysis"/></th>
													<th><s:text name="form.cashteller.credit"/></th>
													<th><s:text name="form.cashteller.debit"/></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><s:text name="form.cashteller.cash"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>2</td>
													<td>LLG</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>3</td>
													<td><s:text name="form.cashteller.clearing"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Transfer</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>5</td>
													<td><s:text name="form.cashteller.other"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th colspan="2">TOTAL</th>
													<th>xxx.xxx.xxx</th>
													<th>xxx.xxx.xxx</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
							</div>
							<!-- END RESPONSIVE TABLE TABUNGAN -->
							<!-- RESPONSIVE TABLE DEPOSITO -->
							<div class="col-md-6">
							<div class="widget widget-table">
								<div class="widget-header">
									<h3><i class="fa fa-credit-card"></i> <s:text name="form.cashteller.deposit"/></h3>
								</div>
								<div class="widget-content">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th width="30px">No.</th>
													<th><s:text name="form.cashteller.analysis"/></th>
													<th><s:text name="form.cashteller.credit"/></th>
													<th><s:text name="form.cashteller.debit"/></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><s:text name="form.cashteller.cash"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>2</td>
													<td>LLG</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>3</td>
													<td><s:text name="form.cashteller.clearing"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Transfer</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>5</td>
													<td><s:text name="form.cashteller.other"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th colspan="2">TOTAL</th>
													<th>xxx.xxx.xxx</th>
													<th>xxx.xxx.xxx</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
							</div>
							<!-- END RESPONSIVE TABLE DEPOSITO-->
							<!-- RESPONSIVE TABLE PINJAMAN -->
							<div class="col-md-6">
							<div class="widget widget-table">
								<div class="widget-header">
									<h3><i class="fa fa-arrow-up"></i> <s:text name="form.cashteller.loan"/></h3>
								</div>
								<div class="widget-content">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th width="30px">No.</th>
													<th><s:text name="form.cashteller.analysis"/></th>
													<th><s:text name="form.cashteller.credit"/></th>
													<th><s:text name="form.cashteller.debit"/></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><s:text name="form.cashteller.cash"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>2</td>
													<td>LLG</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>3</td>
													<td><s:text name="form.cashteller.clearing"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Transfer</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>5</td>
													<td><s:text name="form.cashteller.other"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th colspan="2">TOTAL</th>
													<th>xxx.xxx.xxx</th>
													<th>xxx.xxx.xxx</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
							</div>
							<!-- END RESPONSIVE TABLE PINJAMAN-->
							<!-- RESPONSIVE TABLE GENERAL LEDGER -->
							<div class="col-md-6">
							<div class="widget widget-table">
								<div class="widget-header">
									<h3><i class="fa fa-star"></i> General Ledger</h3>
								</div>
								<div class="widget-content">
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th width="30px">No.</th>
													<th><s:text name="form.cashteller.analysis"/></th>
													<th><s:text name="form.cashteller.credit"/></th>
													<th><s:text name="form.cashteller.debit"/></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td><s:text name="form.cashteller.cash"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>2</td>
													<td>LLG</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>3</td>
													<td><s:text name="form.cashteller.clearing"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Transfer</td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
												<tr>
													<td>5</td>
													<td><s:text name="form.cashteller.other"/></td>
													<td>xxx.xxx.xxx</td>
													<td>xxx.xxx.xxx</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th colspan="2">TOTAL</th>
													<th>xxx.xxx.xxx</th>
													<th>xxx.xxx.xxx</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
							</div>
							<!-- END RESPONSIVE TABLE GENERAL LEDGER-->
						</div>

</body>
</html>