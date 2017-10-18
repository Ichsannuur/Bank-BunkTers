<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div class="row">
	<div class="col-md-12 ">
		<ul class="breadcrumb">
			<li><a href='goToDashboard'><i class="fa fa-home fa-fw"></i><s:text name="title.dashboard"/>&nbsp;&nbsp;</a></li>
			
			<!-- Set ID menuactive -->
			<c:set var="getChild" scope="session" value="${sessionScope.menuActive}" />
			
			<!-- Display Breadcrumbs -->
			<s:iterator var="bread" value="menulist">
				<c:choose>
					<c:when test="${bread.ID eq 1 || bread.ID eq 27}"></c:when>
					<c:when test="${bread.ID eq getChild}">
						<c:if test="${bread.PARENT > 0}">
							<s:iterator var="bread1" value="menulist">
								<c:choose>
									<c:when test="${bread1.ID eq bread.PARENT}">
										<c:if test="${bread1.PARENT > 0}">
											<s:iterator var="bread2" value="menulist">
												<c:choose>
													<c:when test="${bread2.ID eq bread1.PARENT}">
														<c:if test="${bread2.PARENT > 0}">
															<s:iterator var="bread3" value="menulist">
																<c:choose>
																	<c:when test="${bread3.ID eq bread2.PARENT}">
																		<c:if test="${bread3.PARENT > 0}">
																			<s:iterator var="bread4" value="menulist">
																				<c:choose>
																					<c:when test="${bread4.ID eq bread3.PARENT}">
																						<c:if test="${bread4.PARENT > 0}">
																							<s:iterator var="bread5" value="menulist">
																								<c:choose>
																									<c:when test="${bread5.ID eq bread4.PARENT}">
																										<li><a href='<s:property value="LINK"/>'><s:property value="getText(MENUNAME)"/>&nbsp;</a></li>
																									</c:when>
																								</c:choose>
																							</s:iterator>
																						</c:if>
																						<li><a href='<s:property value="LINK"/>'><s:property value="getText(MENUNAME)"/>&nbsp;</a></li>
																					</c:when>
																				</c:choose>
																			</s:iterator>
																		</c:if>
																		<li><a href='<s:property value="LINK"/>'><s:property value="getText(MENUNAME)"/>&nbsp;</a></li>
																	</c:when>
																</c:choose>
															</s:iterator>
														</c:if>
														<li><a href='<s:property value="LINK"/>'><s:property value="getText(MENUNAME)"/>&nbsp;</a></li>
													</c:when>
												</c:choose>
											</s:iterator>
										</c:if>
										<li><a href='<s:property value="LINK"/>'><s:property value="getText(MENUNAME)"/>&nbsp;</a></li>
									</c:when>
								</c:choose>
							</s:iterator>
						</c:if>
						<li><a href='<s:property value="LINK"/>'><i class="<s:property value="ICON"/>"></i><s:property value="getText(MENUNAME)"/>&nbsp;</a></li>
					</c:when>
				</c:choose>
			</s:iterator>
		</ul>
	</div>
</div>