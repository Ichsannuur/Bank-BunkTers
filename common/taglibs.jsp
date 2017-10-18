<%@ page contentType="text/html; charset=UTF-8" %>

 <%-- <%@ taglib uri="http://displaytag.sf.net" prefix="display" %> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%-- <%@ taglib uri="http://struts-menu.sf.net/tag" prefix="menu" %>
<%@ taglib uri="http://struts-menu.sf.net/tag-el" prefix="menu-el" %>
<%@ taglib uri="http://acegisecurity.org/authz" prefix="authz" %> 
<%@ taglib uri="/WEB-INF/hdiv-tags.tld" prefix="html"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="datePattern"><fmt:message key="date.format"/></c:set>
<fmt:bundle basename="com.mpc.ebanking"/>