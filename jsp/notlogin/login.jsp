<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp"%>
<s:if test="#session.logined == 'true'"><c:redirect url="goToDashboard"/></s:if>
<html>
<head>
<%@ include file="/common/taglibs.jsp"%>
<style>
body{
	background-image:url(assets/img/tokyo-buildings-skyscrapers-tower.jpg);
	background-attachment:fixed;
	background-position:top;
	background-size:cover;
}
.errorMessage{
	list-style:none;
}
.actionMessage{
	display:block;
	margin-left:75px;
	list-style:none;
}
</style>
	<!-- CSS -->
	<!-- Bootstrap Core CSS -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="assets/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/sb-admin-2.css" rel="stylesheet">
    <link href="assets/css/custom.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="assets/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="assets/img/logo-black.png">
    <title>Bank Bunkters</title>
</head>

<body>
	<div class="container">
		<div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default" style="margin:100px auto;box-shadow:0 0 10px rgba(0,0,0,0.5);border:0;">
                    <div class="panel-heading" style="background-color:#009688;">
                    	<div class="row">
	                    	<div class="col-md-12 text-center" style="margin-bottom:10px;">
				           		<img src="assets/img/logo-white.png" width="50px" alt="logo" />
				           	</div>
				           	<div class="col-md-12">
	                        	<h3 class="panel-title text-center" style="color:white;">Bank Bunkters</h3>
	                        </div>
                        </div>
                    </div>
                    <div class="panel-body">
                    	<div class="error">
	                    	<s:fielderror/>
							<s:actionerror/>
						<s:actionmessage/>
						</div>
                        <form role="form" method="post" action="goLogin">
                            <fieldset>
                                <div class="form-group">
									<label for="username" class="control-label sr-only">Username</label>
									<div class="input-group">
										<input type="text" name="userName" id="userName" placeholder="Username" class="form-control" autofocus maxlength="30" required="required" autocomplete="off">
										<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="control-label sr-only">Password</label>
									<div class="input-group">
										<input type="password" id="Password1" name="password" placeholder="Password" class="form-control" autofocus maxlength="30" required="required" autocomplete="off">
										<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>								
									</div>
								</div>
                                <button type="submit" name="Login" class="btn btn-lg btn-warning btn-block btn-login"><i class="fa fa-arrow-circle-o-right"></i> Login</button>
                            </fieldset>
                        </form>
                    </div>
                    <div class="panel-footer" style="background-color:#009688;">
                    	<div class="text-center" style="font-weight:bold;color:white;">&copy; 2016</div>
                    </div>
                </div>
            </div>
        </div>
	</div>
	<!-- Javascript -->
	<script src="assets/js/jquery/jquery-2.1.0.min.js"></script>
	<script src="assets/js/bootstrap/bootstrap.js"></script>
</body>
</html>