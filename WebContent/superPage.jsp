<%@ page import="java.util.List" %>
<%@ page import="com.room.Room" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <!--要求当前网页使用IE浏览器最高版本的内核来渲染-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--视口的设置：视口的宽度和设备一致，默认的缩放比例和PC端一致，用户不能自行缩放-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--引入框架-->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="superStyle.css" type="text/css" media="all" />
<style>
        body{
            background-image:url(./images/super.jpg);
            background-repeat: no-repeat;   
            background-size: 100% 100%;
            background-attachment: fixed;"
        }
    </style>

</head>
<body>

<div class="container">
    <h1  class="text-center">管理员系统</h1>
    <div class="row">
        <div class="col-xs-9">
            <form class="navbar-form navbar-right" action="superSelectRoomName">
                <div class="form-group">
                    <input type="text" required name="roomName" class="form-control form-search" placeholder="教室号">
                </div>
                <button type="submit" class="btn  btn-search">查询</button>
            </form>

            <form class="navbar-form navbar-right" action="superInsert" >
                <div class="form-group">
                    <input type="text" required name="roomName" class="form-control form-add" placeholder="教室号">
                </div>
                <button type="submit" class="btn btn-default btn-add">增加</button>
            </form>


            <form class="navbar-form navbar-right" action="superDelete">

                <div class="form-group">
                    <input type="text" required name="roomName" class="form-control form-delete" placeholder="教室号">
                </div>
                <button type="submit" class="btn  btn-delete">删除</button>
            </form>

            <%
                List<Room> list = null;
                list = (List) session.getAttribute("list");
            %>
            <br><br>
            <table>
                <tr>
                    <th>教室号</th>
                    <th>讲座信息</th>
                    <th>起始时间</th>
                    <th>结束时间</th>

                </tr>
                <%
                    if(list != null){
                        for(int i = 0;i < list.size();i ++){
                            Date dateS = new Date();
                            Date dateE = new Date();
                            String start = null;
                            String end = null;
                            if(list.get(i).getRoomStart() != 0) {
                                dateS.setTime(list.get(i).getRoomStart());
                                start = new SimpleDateFormat().format(dateS);
                            }
                            if(list.get(i).getRoomEnd() != 0) {
                                dateE.setTime(list.get(i).getRoomEnd());
                                end = new SimpleDateFormat().format(dateE);
                            }
                %>
                <tr>
                    <td><%=list.get(i).getRoomName()%></td>
                    <td><%=list.get(i).getRoomEven()%></td>
                    <td><%=start%></td>
                    <td><%=end%></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
        <div class="col-xs-3">
            <form action="superSelectAll" class="navbar-form navbar-left">
                <button  type="submit" class="btn btn-all">查询所有教室</button>
            </form>

            <form action="superSelectNull" class="navbar-form navbar-left">
                <button  type="submit" class="btn btn-null">查询空教室</button>
            </form>

            <form action="superSelectNotNull" class="navbar-form navbar-left">
                <button  type="submit" class="btn btn-book">查询已预约教室</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
