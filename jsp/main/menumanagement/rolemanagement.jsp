<%@ include file="/common/taglibs.jsp"%>
<div class="row">
	<div class="col-md-12" style="padding:0;">
		<s:actionerror cssClass="alert alert-danger"/>
		<s:actionmessage cssClass="alert alert-success"/>
   		<div class="panel panel-default">
   			<div class="panel-heading">
   				Role Management
   			</div>
   			<!-- /.panel-heading -->
   			<div class="panel-body">
   				<div class="row" style="margin-bottom:15px;">
   					<div class="col-md-12">
   						<a href="goToRoleManagementInput" class="btn btn-primary"><s:text name="addnew"/></a>
   					</div>
   				</div>
   				<s:iterator value="rolelist" var="tb"/>
   				<s:if test="#tb != null">
   				<div class="table-responsive">
   				<table class="table table-striped table-bordered table-hover" id="dataTables-example">
   					<thead>
   						<tr>
   							<th width="10px">No.</th>
   							<th style="text-align:center;"><s:text name="action"/></th>
   							<th><s:text name="name"/></th>
							<th>Desc</th>
						</tr>		
					</thead>
					<tbody>
						<c:set var="no">1</c:set>
						<s:iterator value="rolelist">
						<tr>
							<td><c:out value="${no}"/></td>
							<s:url id="edit" action="role_management_edit"><s:param name="id" value="R_ID" /></s:url>
							<s:url id="delete" action="role_management_delete"><s:param name="id" value="R_ID" /></s:url>
							<td class="text-center">
								<a href="<s:property value="edit"/>"> 
									<button class="btn btn-xs btn-info">Edit</button>
								</a>
								<a href="<s:property value="delete"/>"> 
									<button class="btn btn-xs btn-danger"><s:text name="delete"/></button>
								</a>
							</td>
							<td><s:text name="R_NAME"/></td>
							<td><s:text name="R_DESC"/></td>
						</tr>
						<c:set var="no">${no + 1}</c:set>
						</s:iterator>
					</tbody>
				</table>
				</div>
				</s:if>
				<s:else>
					<div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<s:text name="nodata"/>	
					</div>
				</s:else>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-md-12 -->
</div>
<!-- /.row -->