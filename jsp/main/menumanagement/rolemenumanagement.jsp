<%@ include file="/common/taglibs.jsp"%>
<style>
.cek{
	width:30px;
	height:100%;
	cursor:pointer;
	margin:0;
	padding:0;
}
.cek > input{
	margin-top:7px;
}
</style>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="title">
			RoleMenu Management
		</div>
	</div>
	<div class="panel-body">
		<div class="row">
			<s:fielderror />
			<s:actionerror />
			<s:actionmessage />
			<!-- Content left -->
			<div class="col-md-12">
				<s:form cssClass="form-horizontal no-margin" theme="simple" action="roleMenuSelectRole">
					<div class="form-group">
						<div class="col-md-2">
							<label class="control-label">Role</label>
						</div>
						<div class="col-md-4">
							<select class="form-control" name="roleid">
								<option></option>
								<s:iterator value="rolelist" var="rolelist">
									<option value="<s:text name="#rolelist.R_ID"/>" <s:text name="#rolelist.R_ID == #session.roleid ? 'selected' : ''" /> >
										<s:text name="#rolelist.R_NAME"/>
									</option>
								</s:iterator>
							</select>
						</div>
						<div class="col-md-6">
							<button type="submit" class="btn btn-primary"><s:text name="show"/></button>
							<a href="rolemenu_clear" class="btn btn-success"><s:text name="clear"/></a>
						</div>
					</div>
				</s:form>
			</div>
			<!-- /Content left -->
			<div class="col-md-12" style="margin-bottom:20px;"></div>
			<!-- Content right -->
			<c:if test="${!empty sessionScope.roleid}">
			<div class="col-md-6">
				<h5><b><s:text name="unselected.menu"/></b></h5>
				<div id="dt_example" class="example_alt_pagination table-responsive">
					<s:form cssClass="form-horizontal no-margin" theme="simple" action="roleMenuSaveMenu">
					<table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">
						<thead>
							<tr>
								<th class="text-center" style="width:7.5%">No.</th>
								<th class="text-center" style="width:7.5%"></th>
								<th class="text-center" style="width:45%">Menu Name</th>
								<th class="text-center" style="width:40%">Link</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="no">1</c:set>
							<c:forEach var="menulist" items="${menulist}">
								<tr
								<c:forEach var="rolemenulist" items="${rolemenulist}">
									<c:if test="${rolemenulist.r_ID eq sessionScope.roleid and rolemenulist.ME_ID eq menulist.ME_ID}">
										<c:set var="no">${no - 1}</c:set>
										style="display:none;"
									</c:if>
								</c:forEach> 
								>
									<td class="text-center"><c:out value="${no}"/></td>
									<td class="text-center" style="padding:0;">
										<label class="cek btn btn-xs">
										<input type="checkbox" name="menus" value="<c:out value="${menulist.ME_ID }"/>" style="cursor:pointer;"/>
										</label>
									</td>
									<td><c:out value="${menulist.ME_NAME }"/></td>
									<td><c:out value="${menulist.ME_LINK }"/></td>
								</tr>
								<c:set var="no">${no+1}</c:set>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-center" style="margin-bottom:10px;">
						<button type="submit" class="btn btn-primary"><s:text name="addnew"/></button>
					</div>
					</s:form>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-6">
				<h5><b><s:text name="selected.menu"/></b></h5>
				<div id="dt_example" class="example_alt_pagination table-responsive">
					<table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">
						<thead>
							<tr>
								<th class="text-center" style="width:7.5%">No.</th>
								<th class="text-center" style="width:7.5%"><s:text name="action"/></th>
								<th class="text-center" style="width:45%">Menu Name</th>
								<th class="text-center" style="width:40%">Link</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="no">1</c:set>
							<c:forEach var="menulistck" items="${menulistck}">
								<tr>
									<td class="text-center"><c:out value="${no}"/></td>
									<td class="text-center" style="padding:0 !important;">
										<c:url var="delete" value="roleMenuDeleteMenu">
											<c:param  name="id">${menulistck.RM_ID }</c:param>
										</c:url>
										<a href="<c:out value="${delete}"/>" class="btn btn-link btn-xs" style="margin-top:5px;"><s:text name="delete"/></a>
									</td>
									<td><c:out value="${menulistck.ME_NAME }"/></td>
									<td><c:out value="${menulistck.ME_LINK }"/></td>
								</tr>
								<c:set var="no">${no+1}</c:set>
							</c:forEach>
						</tbody>
					</table>
					<div class="clearfix"></div>
				</div>
			</div>
			</c:if>
			<!-- /Content right -->
		</div>
	</div>
</div>
<%@ include file="/common/other/default_js.jsp"%>