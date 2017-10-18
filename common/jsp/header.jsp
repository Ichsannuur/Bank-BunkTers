<%@ include file="/common/taglibs.jsp"%>
<!-- Header Start -->
<script type="text/javascript">
var myVar=setInterval(function () {myTimer()}, 1000);
var counter = 0;
function myTimer() {
    var date = new Date();
    var d = date.getDate();
    d = d > 9 ? d : '0' + d;
    var m = (date.getMonth()+1);
    m = m > 9 ? m : '0' + m;
    var y = date.getUTCFullYear();
    var h = date.getHours();
    h = h > 9 ? h : '0' + h;
    var mm = date.getMinutes();
    mm = mm > 9 ? mm : '0' + mm;
    var s = date.getSeconds();
    s = s > 9 ? s : '0' + s;
    var ret = d+"/"+m+"/"+y+" &nbsp;&nbsp; "+h+":"+mm+":"+s;
    document.getElementById("time").innerHTML = ret;
}
</script>
<style>
#grad {
	background: #00796B !important; /* For browsers that do not support gradients */
	background: -webkit-linear-gradient(black, white); /* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(black, #ccc); /* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(black, #ccc); /* For Firefox 3.6 to 15 */
	background: linear-gradient(black, #3B3D3B); /* Standard syntax */
	box-shadow: 0 0 10px rgba(0,0,0,0.5);
}
.loginbtn{
	color:#FBC02D !important;
}
.loginbtn:hover{
	color:#C99700 !important;
}
.loginbtn:focus{
	color:#C99700 !important;
}
</style>
<s:iterator value="#session.activeUser" var="activeUser"></s:iterator>
<!-- TOP BAR -->
<div class="top-bar navbar-fixed-top" id="grad">
	<div class="container">
		<div class="row">
			<!-- logo -->
			<div class="col-md-2">
				<a href="goToDashboard" class="logo" style="color:white;text-decoration:none;font-weight:bold;padding-bottom:15px;">
					<img src="assets/img/logo.png" height="20" alt="logo" />&nbsp;&nbsp;BANK BUNKTERS
				</a>
				<h1 class="sr-only">Bank Bunkters</h1>
			</div>
			<!-- end logo -->
			<div class="col-md-10">
				<!-- top-bar-right -->
				<div class="top-bar-right">
					<a class="btn btn-link" style="font-weight:bold;cursor:default;font-family:sans-serif;"><i class="fa fa-time"></i>&nbsp;<span id="time"></span></a>
					<a class="btn btn-link" style="cursor:default;font-family:sans-serif;"><s:text name="#session.activeUser"/>&nbsp;&nbsp;-&nbsp;<s:text name="#session.activeRole"/></a>
					<!-- logged user and the menu -->
					<div class="logged-user">
						<div class="btn-group">
							<a href="#" class="btn btn-link dropdown-toggle loginbtn" data-toggle="dropdown">
								<span class="fa-stack fa-md">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-user fa-stack-1x fa-inverse"></i>
								</span>
							</a>
							<ul class="dropdown-menu user" role="menu">
								<li class="container" style="padding-top:15px;padding-bottom:15px;">
									<div class="row">
										<div class="col-md-4"><img src="assets/img/logo-black.png" width="100%"></div>
										<div class="col-md-8" style="padding-left:0;">
										<span class="name"><s:text name="#session.activeUser"/></span>
										<span style="font-size:0.9em;line-height:25px;"><s:text name="#session.activeRole"/></span>
										</div>
									</div>
								</li>
								<li>
									<a href="setting">
										<i class="fa fa-cog"></i>
										<span class="text">&nbsp;<s:text name="header.setting"/></span>
									</a>
								</li>
								<li>
									<a href="logOut">
										<i class="fa fa-power-off"></i>
										<span class="text">&nbsp;<s:text name="header.logout"/></span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<!-- end logged user and the menu -->
				</div>
				<!-- end top-bar-right -->
			</div>
		</div><!-- /row -->
	</div><!-- /container -->
</div><!-- /top -->
<!-- Header End -->