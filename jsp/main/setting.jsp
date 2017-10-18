<%@ include file="/common/taglibs.jsp"%>
<div class="row">
	<div class="col-md-12">
		<s:actionerror cssClass="alert alert-danger"/>
		<s:actionmessage cssClass="alert alert-info"/>
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<s:text name="header.setting"/>
    			</div>
    			<!-- /.panel-heading -->
    			<div class="panel-body">
    				<div class="row">
    					<div class="col-lg-3 col-md-6 col-xs-12">
    						<div class="form-group">
		                        <label><s:text name="language"/></label>
		                        <div class="btn-group">
	                        	<a href="setLanguagetoID" class="btn btn-info">Indonesian</a>
	                        	<div class="btn"></div>
								<a href="setLanguagetoEN" class="btn btn-info">English</a>
								</div>
		                    </div>
    					</div>
    				</div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
	</div>
	<!-- /.col-md-12 -->
</div>
<!-- /.row -->