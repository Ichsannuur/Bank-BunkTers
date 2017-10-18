<%@ include file="/common/taglibs.jsp"%>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="title">
			Role Management Input
		</div>
	</div>
	<div class="panel-body">
		<s:fielderror />
		<s:actionerror />
		<s:actionmessage />
		<!-- Content start -->
		
		
		<s:form cssClass="form-horizontal no-margin" theme="simple" action="saveRole">
		<s:iterator value="rolelist">			
			<div class="form-group" hidden="hidden">
				<div class="col-md-2">
					<label class="control-label">Id</label>
				</div>
				<div class="col-sm-4">
					<s:textfield cssClass="form-control" name="role_id" value="%{R_ID}" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label"><s:text name="role.name"/></label>
				</div>
				<div class="col-sm-4">
					<s:textfield cssClass="form-control" name="role_name" value="%{R_NAME}"/>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label">Role Desc</label>
				</div>
				<div class="col-sm-4">
					<s:textarea cssClass="form-control" name="role_desc" value="%{R_DESC}" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
				</div>
				<div class="col-sm-4">
					<button type="submit" class="btn btn-md btn-primary">
						Update
					</button>
				</div>
			</div>
			</s:iterator>
		</s:form>
		
		<!-- Content end -->
	</div>
</div>
<%@ include file="/common/other/default_js.jsp"%>