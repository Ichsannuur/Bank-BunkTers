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
			<div class="form-group" hidden="hidden">
				<div class="col-md-2">
					<label class="control-label">Id</label>
				</div>
				<div class="col-sm-4">
					<s:textfield cssClass="form-control" name="role_id" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label"><s:text name="role.name"/></label>
				</div>
				<div class="col-sm-4">
					<input type="text" class="form-control" required name="role_name"/>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label">Role Desc</label>
				</div>
				<div class="col-sm-4">
					<textarea required class="form-control" name="role_desc"></textarea>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
				</div>
				<div class="col-sm-4">
					<button type="submit" class="btn btn-md btn-primary">
						<s:text name="save"/>
					</button>
				</div>
			</div>

		</s:form>
		
		<!-- Content end -->
	</div>
</div>
<%@ include file="/common/other/default_js.jsp"%>