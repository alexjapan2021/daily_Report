<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="constants.ForwardConst" %>
<%@ page import="constants.AttributeConst" %>

<c:set var="actRep" value="${ForwardConst.ACT_FLW.getValue()}" />
<c:set var="action" value="${ForwardConst.ACT_FLW.getValue()}" />
<c:set var="commIdx" value="${ForwardConst.CMD_INDEX.getValue()}" />
<c:set var="commShow" value="${ForwardConst.CMD_SHOW.getValue()}" />
<c:set var="commNew" value="${ForwardConst.CMD_NEW.getValue()}" />

<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>フォロー管理</h2>
            <ul>
                <li><c:out value="${login_employee.name}" /></li>
            </ul>
            <c:choose>
                <c:when test="${follow != null}">
                    <table id="follow_list">
                        <tbody>
                            <tr>
                    <th>氏名</th>
                    <th>フォロー操作</th>
                </tr>
                <c:forEach var="employee" items="${employees}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td><c:out value="${employee.name}" /></td>
                                 <tr>
                                      <td><c:out value="${follows.followed_employee.name}" /></td>
                                      <td>
                                      </td>
                                 </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
            </c:choose>

    </c:param>
</c:import>