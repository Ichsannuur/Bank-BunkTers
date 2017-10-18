<%@ include file="/common/taglibs.jsp"%>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="title">
			Menu Management Update
		</div>
	</div>
	<div class="panel-body">
		<s:fielderror />
		<s:actionerror />
		<s:actionmessage />
		<!-- Content start -->
		<s:iterator value="menulist" var="men"></s:iterator>
		<s:iterator value="menulist">
		<s:form cssClass="form-horizontal no-margin" theme="simple" action="saveMenu">
			
			<div class="form-group" hidden="hidden">
				<div class="col-md-2">
					<label class="control-label">Id</label>
				</div>
				<div class="col-sm-4">
					<s:textfield cssClass="form-control" name="mE_ID" value="%{ME_ID}" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label"><s:text name="menu.name"/></label>
				</div>
				<div class="col-sm-4">
					<s:textfield cssClass="form-control" name="mE_NAME" value="%{ME_NAME}" />
				</div>
				
				<div class="col-md-2">
					<label class="control-label">Menu Link</label>
				</div>
				<div class="col-sm-4">
					<s:textfield cssClass="form-control" name="mE_LINK" value="%{ME_LINK}"  />
				</div>
				
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label">Parent</label>
				</div>
				<div class="col-sm-4">
					<input type="number" class="form-control" name="mE_PARENT" value="<s:property value="ME_PARENT"/>"/>
				</div>
				
				<div class="col-md-2">
					<label class="control-label">Index Number</label>
				</div>
				<div class="col-sm-4">
					<input type="number" class="form-control" name="mE_IDX_NUM" value="<s:property value="ME_IDX_NUM"/>"/>
				</div>
				
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label class="control-label">Icon</label>
				</div>
				<div class="col-sm-4">
					<s:textfield cssClass="form-control" name="mE_ICON" value="%{ME_ICON}" />
				</div>
				
				<div class="col-md-2">
					<label class="control-label">Is Parent</label>
				</div>
				<div class="col-sm-4">
					<div class="radio">
						<label><input type="radio" name="mE_ISPARENT" value="1" <c:if test="${men.ME_ISPARENT == '1'}">checked</c:if> />Parent</label>&nbsp;
						<label><input type="radio" name="mE_ISPARENT" value="0" <c:if test="${men.ME_ISPARENT == '0'}">checked</c:if>/>Not Parent</label>
					</div>
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
		
		</s:form>
		</s:iterator>
		<!-- Content end -->
	</div>
</div>
<%@ include file="/common/other/default_js.jsp"%>