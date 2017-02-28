<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/28
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/jquery/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/resources/js/easyui-lang-zh_CN.js"></script>
    <link href="/resources/themes/default/easyui.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/resources/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/demo.css">
    <script type="text/javascript">
        $(function () {
            $(".easyui-tree li ul li").dblclick(function () {
               $("#tabs").append("<div>22<div>")
            });
        });
    </script>
</head>
<body class="easyui-layout">
    <%--头标签 start--%>
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;">
        <h1>&nbsp;&nbsp;&nbsp;HOUSE BOOK 后台管理系统</h1>
    </div>
    <%--头标签end--%>

    <%--尾标签 start--%>
    <div data-options="region:'south',title:'South Title',split:true" style="height:150px;">

    </div>
    <%--尾标签 end--%>

    <%--右标签 start--%>
    <div data-options="region:'east',title:'East',split:true" style="width:100px;">

    </div>
    <%--右标签 end--%>

    <%--左标签 start--%>
    <div data-options="region:'west',title:'West',split:true" style="width:150px;">
        <%--树形菜单 start--%>
        <ul id="tt" class="easyui-tree">
            <li>
                <span>用户管理</span>
                <ul>
                    <li><span>用户管理</span></li>
                    <li><span>File 2</span></li>
                    <li><span>File 3</span></li>
                    <li><span>File21</span></li>
                </ul>
            </li>
            <li>
                <span>书籍管理</span>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </li>
        </ul>
            <%--树形菜单 end--%>

    </div>
    <%--左标签 end--%>
    <%--中间标签 start--%>
    <div data-options="region:'center',title:'Center'">
        <jsp:include page="${include}"/>
    </div>
    <%--中间标签 end--%>

</body>
</html>




</body>
</html>
