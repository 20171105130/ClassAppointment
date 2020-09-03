<%@ page import="com.room.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!--要求当前网页使用IE浏览器最高版本的内核来渲染-->
    <meta http-equ iv="X-UA-Compatible" content="IE=edge">
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
    <h1  class="text-center">用户系统</h1>
    <div class="row">
        <div class="col-xs-9">
            <!--查询信息表单-->
            <form class="navbar-form navbar-left " action="userSelectRoomName">
                <button type="submit" class="btn  btn-search">点击查询</button>
                <div class="form-group">
                    <input type="text" required name="roomName" class="form-control form-search" placeholder="教室号">
                </div>
            </form>
            <form class="navbar-form navbar-left" action="UserApply">
                <button type="submit" class="btn  btn-search">点击预约</button>
                <div class="form-group">
                    <input type="text" required name="roomName" class="form-control form-search book " placeholder="教室号">
                    <input type="text" required name="message" class="form-control form-search" placeholder="讲座信息"><br>
                    <input type="text" required name="year" class="form-control form-search book" placeholder="年">
                    <input type="text" required name="month" class="form-control form-search book" oninput="if(value>12)value=12 " placeholder="月">
                    <input type="text" required name="day" class="form-control form-search book" placeholder="日">
                    <input type="text" required name="startHour" class="form-control form-search book" oninput="if(value>23)value=23" placeholder="起始时">
                    <input type="text" required name="startMinute" class="form-control form-search book" oninput="if(value>59)value=59" placeholder="起始分">
                    -
                    <input type="text" required name="endHour" class="form-control form-search book" oninput="if(value>23)value=23" placeholder="结束时">
                    <input type="text" required name="endMinute" class="form-control form-search book" oninput="if(value>59)value=59" placeholder="结束分">
                </div>
            </form>

            <form class="navbar-form navbar-left nav" action="userRemoveApply">
                <button type="submit" class="btn  btn-search">取消预约</button>
                <div class="form-group">
                    <input type="text" required name="roomName" class="form-control form-search" placeholder="教室号">
                    <input type="text" required name="year" class="form-control form-search book" placeholder="年">
                    <input type="text" required name="month" class="form-control form-search book" oninput="if(value>12)value=12 " placeholder="月">
                    <input type="text" required name="day" class="form-control form-search book" placeholder="日">
                    <input type="text" required name="startHour" class="form-control form-search book" oninput="if(value>23)value=23" placeholder="起始时">
                    <input type="text" required name="startMinute" class="form-control form-search book" oninput="if(value>59)value=59" placeholder="起始分">
                </div>
            </form>

            <%
                List<Room> list = null;
                list = (List) session.getAttribute("list");
            %>

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
            <form action="userSelectNull" class="navbar-form navbar-left">
                <button  type="submit" class="btn btn-null">查询空教室</button>
            </form>

        </div>
        <div class="col-xs-3">
            <form action="userSelectNotNull" class="navbar-form navbar-left">
                <button  type="submit" class="btn btn-book">查询已预约</button>
            </form>
        </div>
    </div>
    <br><br><br>
</div>
</body>
</html>