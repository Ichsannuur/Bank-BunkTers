<%@ include file="/common/taglibs.jsp"%>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="title">
			<s:text name="menu.management.input"/>
		</div>
	</div>
	<div class="panel-body">
		<s:fielderror />
		<s:actionerror />
		<s:actionmessage />
		<!-- Content start -->
		<s:form cssClass="form-horizontal no-margin" theme="simple" action="saveMenu">
			
			<div class="form-group" hidden="hidden">
				<div class="col-md-2">
					<label class="control-label">Id</label>
				</div>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="mE_ID" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label"><s:text name="menu.name"/></label>
				</div>
				<div class="col-sm-4">
					<input type="text" required class="form-control" name="mE_NAME" />
				</div>
				
				<div class="col-md-2">
					<label class="control-label">Menu Link</label>
				</div>
				<div class="col-sm-4">
					<input type="text" required class="form-control" name="mE_LINK" />
				</div>
				
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label">Parent</label>
				</div>
				<div class="col-sm-4">
					<input type="number" required class="form-control" name="mE_PARENT"/>
				</div>
				
				<div class="col-md-2">
					<label class="control-label">Index Number</label>
				</div>
				<div class="col-sm-4">
					<input type="number" required class="form-control" name="mE_IDX_NUM"/>
				</div>
				
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label">Icon</label>
				</div>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="mE_ICON" />
				</div>
				
				<div class="col-md-2">
					<label class="control-label">Is Parent</label>
				</div>
				<div class="col-sm-4">
					<div class="radio">
						<label><input type="radio" name="mE_ISPARENT" value="1"/>Parent</label>&nbsp;
						<label><input type="radio" name="mE_ISPARENT" value="0"/>Not Parent</label>
					</div>
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