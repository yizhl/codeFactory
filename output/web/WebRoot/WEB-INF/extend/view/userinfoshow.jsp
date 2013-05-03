<%@page import="com.jeecms.extend.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=UserInfo.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<html:form action="/WebRoot\WEB-INF\extend/UserInfo/list.do" method="post">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/WebRoot\WEB-INF\extend/UserInfo/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<html:hidden styleId="userId" property="userId" name="UserInfoForm"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=UserInfo.ALIAS_USERNAME%></td>	
				<td><c:out value='${UserInfoForm.username}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=UserInfo.ALIAS_PASSWORD%></td>	
				<td><c:out value='${UserInfoForm.password}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=UserInfo.ALIAS_BIRTH_DATE%></td>	
				<td><c:out value='${UserInfoForm.birthDateString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=UserInfo.ALIAS_SEX%></td>	
				<td><c:out value='${UserInfoForm.sex}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=UserInfo.ALIAS_AGE%></td>	
				<td><c:out value='${UserInfoForm.age}'/></td>
			</tr>
		</table>
	</html:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>