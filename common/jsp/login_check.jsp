<!DOCTYPE html SYSTEM "about:legacy-compat">
<%@ include file="/common/taglibs.jsp"%>

<s:if test="#session.logined != 'true'">
	<jsp:forward page="/jsp/main/input.jsp" />
</s:if>