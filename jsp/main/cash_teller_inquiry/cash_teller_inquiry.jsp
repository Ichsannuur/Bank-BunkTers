<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inquiry KAS Teller</title>
</head>
<body>
						<div class="main-body">
							<!-- WIDGET -->
							<div class="widget">
								<div class="widget-header">
									<h3><i class="fa fa-list"></i> <s:text name="form.title.cashtellerinquiry"/> </h3> 
								</div>
								<div class="widget-content">
									<form class="form-horizontal label-left" role="form">
										<div class="form-group form-group-sm">
											<label for="phone" class="col-sm-2 control-label"><s:text name="form.cashteller.posisition"/></label>
											<div class="col-sm-4">
												<input type="text" id="phone" class="form-control">
											</div>
											<label for="phone" class="col-sm-2 control-label"><s:text name="form.cashteller.branch"/></label>
											<div class="col-sm-4">
												<input type="text" id="phone-ex" class="form-control">
											</div>
										</div>
										<div class="form-group form-group-sm">
											<label for="phone" class="col-sm-2 control-label"><s:text name="form.cashteller.currency"/></label>
											<div class="col-sm-4">
												<input type="text" id="tax-id" class="form-control">
											</div>
											<label for="phone" class="col-sm-2 control-label">Teller ID</label>
											<div class="col-sm-4">
												<input type="text" id="ssn" class="form-control">
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- END OF WIDGET -->
							<!-- FEATURED DATA TABLE -->
								<div class="widget widget-table">
									<div class="widget-header">
										<h3><i class="fa fa-table"></i> <s:text name="form.cashteller.inquirylist"/></h3>
									</div>
									<div class="widget-content">
										<table id="featured-datatable" class="table table-sorting table-striped table-hover datatable table-bordered">
											<thead>
												<tr>
													<th width="30px">No.</th>
													<th><s:text name="form.cashteller.branch"/></th>
													<th>Teller ID</th>
													<th>MtU</th>
													<th><s:text name="form.cashteller.balances"/></th>
													<th width="80px"><s:text name="form.cashteller.selection"/></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>101</td>
													<td>ASTRI</td>
													<td>Rp</td>
													<td>12.600.000</td>
													<td>
														<div class="input-group">
															<div class="input-group-btn">
																<a href="goToCashTellerInquiry_Detail" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.detailsum"/>"><i class="fa fa-info"></i></a>
																<a href="goToCashTellerInquiry_Summary" class="btn btn-sm btn-success" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.inqsum"/>"><i class="fa fa-list-alt"></i></a>																
															</div>
														</div>
													</td>
													
												</tr>
												<tr>
													<td>2</td>
													<td>201</td>
													<td>DIAN</td>
													<td>Rp</td>
													<td>10.050.000</td>
													<td width="100px">
														<div class="input-group">
															<div class="input-group-btn">
																<a href="goToCashTellerInquiry_Detail" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.detailsum"/>"><i class="fa fa-info"></i></a>
																<a href="goToCashTellerInquiry_Summary" class="btn btn-sm btn-success" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.inqsum"/>"><i class="fa fa-list-alt"></i></a>																
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td>112</td>
													<td>NAOMI</td>
													<td>Rp</td>
													<td>1.600.000</td>
													<td width="100px">
														<div class="input-group">
															<div class="input-group-btn">
																<a href="goToCashTellerInquiry_Detail" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.detailsum"/>"><i class="fa fa-info"></i></a>
																<a href="goToCashTellerInquiry_Summary" class="btn btn-sm btn-success" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.inqsum"/>"><i class="fa fa-list-alt"></i></a>																
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td>200</td>
													<td>DION</td>
													<td>Rp</td>
													<td>11.000.000</td>
													<td width="100px">
														<div class="input-group">
															<div class="input-group-btn">
																<a href="goToCashTellerInquiry_Detail" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.detailsum"/>"><i class="fa fa-info"></i></a>
																<a href="goToCashTellerInquiry_Summary" class="btn btn-sm btn-success" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.inqsum"/>"><i class="fa fa-list-alt"></i></a>																
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>301</td>
													<td>DIPA</td>
													<td>Rp</td>
													<td>9.600.000</td>
													<td width="100px">
														<div class="input-group">
															<div class="input-group-btn">
																<a href="goToCashTellerInquiry_Detail" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.detailsum"/>"><i class="fa fa-info"></i></a>
																<a href="goToCashTellerInquiry_Summary" class="btn btn-sm btn-success" data-toggle="tooltip" data-placement="top" data-original-title="<s:text name="form.inqsum"/>"><i class="fa fa-list-alt"></i></a>																
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- END FEATURED DATA TABLE -->
						</div>
</body>	
</html>