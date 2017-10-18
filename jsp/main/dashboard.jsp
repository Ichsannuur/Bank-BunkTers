<%@ include file="/common/taglibs.jsp"%>
<style>
.table{
	margin-bottom:10px !important;
}
.panel-green > .panel-heading {
    border-color: #5cb85c;
    color: white;
    background-color: #5cb85c;
}
</style>
	<title><s:text name="title.dashboard"/></title>
		<div class="row">
    <div class="col-lg-6 col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-group fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">&nbsp;</div>
                        <div>Customer Registration</div>
                    </div>
                </div>
            </div>
            <a href="goToCustomerList">
                <div class="panel-footer">
                    <span class="pull-left">Go to Customer List</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-6 col-md-12">
        <div class="panel panel-green">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-tasks fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">&nbsp;</div>
                        <div>RoleMenu Management</div>
                    </div>
                </div>
            </div>
            <a href="goToRoleMenuManagement">
                <div class="panel-footer">
                    <span class="pull-left">Go to RoleMenu Management</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
</div>
	

