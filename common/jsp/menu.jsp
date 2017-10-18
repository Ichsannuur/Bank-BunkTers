<%@ include file="/common/taglibs.jsp"%>
<!-- left sidebar -->

<style>
	.blue{
		color:white !important;
		background-color:#009688 !important;
	}
	.fixed-sidebar {
	    display: block;
	    position: absolute;
	    top: 45px;
	    left: 0;
	    background-color: #009688;
	    overflow-x: hidden;
	    overflow-y: auto;
	    box-sizing: border-box;
	    height: calc(100% - 85px);
	    padding-left: 0;
	    padding-right: 0;
	    margin-right: none;
	}
	ul.main-menu>li.active>a {
    	background-color: #FBC02D !important;
	}
	.blue:hover{
		background-color:#FBC11D !important;
	}
	#accordion1 li.panel{
    	margin-bottom: 0px !important;
    	border:none !important;
    	outline:none !important;
	}
	.submenu li a{
    	padding-left: 33px !important;
	}
	.submenu .active a{
		font-weight:bold !important;
		background-color:rgb(200,150,0) !important;
	}
	ul.main-menu > li a {
   	 background-color: #00796B;
   	 color:white;
	}
	ul.main-menu > li a:hover {
   	 background-color: #FBC02D !important;
   	 color:white;
	}
</style>

<div class="left-sidebar">
	<!-- Set Menu Active -->
	<s:iterator var="men" value="#session.menu">
		<s:if test="#men.ME_ID == #session.menuActive">
			<s:set var="getMenuChildActive"><s:text name="#men.ME_ID"/></s:set>
			<s:set var="getMenuParentActive"><s:text name="#men.ME_PARENT"/></s:set>
		</s:if>
	</s:iterator>
	<!-- /Set Menu Active -->
	<!-- Set Parent and Child Active -->
	<s:iterator var="par" value="#session.menu">
		<s:if test="#par.ME_ID == #session.menuActive">
			<s:if test="#par.ME_PARENT == 0">
				<s:set var="getParentActive"><s:text name="#par.ME_ID"/></s:set>
			</s:if>
			<s:else>
				<s:iterator var="par1" value="#session.menu">
					<s:if test="#par1.ME_ID == #par.ME_PARENT">
						<s:set var="getChildActive"><s:text name="#par.ME_ID"/></s:set>
						<s:set var="getParentActive"><s:text name="#par1.ME_ID"/></s:set>
						<s:if test="#par1.ME_PARENT > 0">
							<s:iterator var="par2" value="#session.menu">
								<s:if test="#par2.ME_ID == #par1.ME_PARENT">
									<s:set var="getChildActive"><s:text name="#par1.ME_ID"/></s:set>
									<s:set var="getParentActive"><s:text name="#par2.ME_ID"/></s:set>
									<s:if test="#par2.ME_PARENT > 0">
										<s:iterator var="par3" value="#session.menu">
											<s:if test="#par3.ME_ID == #par2.ME_PARENT">
												<s:set var="getChildActive"><s:text name="#par2.ME_ID"/></s:set>
												<s:set var="getParentActive"><s:text name="#par3.ME_ID"/></s:set>
												<s:if test="#par3.ME_PARENT > 0">
													<s:iterator var="par4" value="#session.menu">
														<s:if test="#par4.ME_ID == #par3.ME_PARENT">
															<s:set var="getChildActive"><s:text name="#par3.ME_ID"/></s:set>
															<s:set var="getParentActive"><s:text name="#par4.ME_ID"/></s:set>
															<s:if test="#par4.ME_PARENT > 0">
																<s:iterator var="par5" value="#session.menu">
																	<s:if test="#par5.ME_ID == #par4.ME_PARENT">
																		<s:set var="getChildActive"><s:text name="#par4.ME_ID"/></s:set>
																		<s:set var="getParentActive"><s:text name="#par5.ME_ID"/></s:set>
																	</s:if>
																</s:iterator>
															</s:if>
														</s:if>
													</s:iterator>
												</s:if>
											</s:if>
										</s:iterator>
									</s:if>
								</s:if>
							</s:iterator>
						</s:if>
					</s:if>
				</s:iterator>
			</s:else>
		</s:if>
	</s:iterator>
	<!-- /Set Parent and Child Active -->

	
	<%-- <c:out value="${getMenuChildActive} -"/>
	<c:out value="${getMenuParentActive}"/>
	<c:out value="___"/>
	<c:out value="${getParentActive} -"/>
	<c:out value="${getChildActive}"/> --%>
	
	<!-- Collpase Sidebar -->
	<div class="row">
	    <div class="col-md-12">
	        <ul class="main-menu nav nav-stacked" id="accordion1">
           		<s:iterator var="parent" value="#session.menu">
				<s:if test="#parent.ME_PARENT == 0 "> <!-- Parent only -->
				<li class='panel <s:property value="#parent.ME_ID == #getParentActive || #parent.ME_ID == #getChildActive ? 'active' : ''"/> blue' >
					<!-- Has Child -->
					<s:set var="menutoggle">0</s:set>
					<s:set var="angleleft">0</s:set>
					<s:set var="angledown">0</s:set>
					<s:set var="haschild">0</s:set>
					
					<s:iterator var="parent1" value="#session.menu">
						<s:if test="#parent1.ME_PARENT == #parent.ME_ID">
							<s:set var="menutoggle">js-sub-menu-toggle</s:set>
							<s:set var="haschild">1</s:set>
							<s:set var="href">#<s:text name="#parent.ME_ID"/></s:set>
							<s:set var="angledown">fa-angle-down</s:set>
							<s:if test="#getParentActive == #parent.ME_ID">
								<s:set var="angledown">fa-angle-down</s:set>
							</s:if>
						</s:if>
					</s:iterator>
					<!-- /Has Child -->
					<a data-toggle="<s:if test="#haschild == 1">collapse</s:if>"
						data-parent="<s:if test="#haschild == 1">#accordion1</s:if>" 
						href="<s:if test="#haschild == 1"><s:property value="#href" /></s:if><s:else><s:property value="ME_LINK" /></s:else>"
						class="blue">
						<i class='<s:property value="ME_ICON" />'></i>
						<span class="text"><s:property value="getText(ME_NAME)" /></span>
						<i class="toggle-icon fa <s:text name="#angledown"/>"></i>
					</a>
	                <ul id="<s:property value="ME_ID" />" class="submenu collapse <s:text name="#parent.ME_ID == #getParentActive || #parent.ME_ID == #getChildActive ? 'in' : ''"/>">
	                	<s:iterator var="child" value="#session.menu">
							<s:if test="#child.ME_PARENT == #parent.ME_ID">
							<li class='<s:property value="#child.ME_ID == #getChildActive || #child.ME_ID == #getParentActive ? 'active' : ''"/>'>
								<a href="<s:property value="ME_LINK" />" class=''>
									<span class="text"><s:property value="getText(ME_NAME)" /></span>
								</a>
							</li>
							</s:if>
						</s:iterator>
	                </ul>
				</li>
				</s:if>
				</s:iterator>
	        </ul>
	    </div>
	</div>
	<!-- Collpase Sidebar -->

</div>
<!-- end left sidebar -->