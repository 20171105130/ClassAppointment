<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
    <link rel="icon" type="image/png" href="img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Login Page - Now UI Kit by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="css/demo.css" rel="stylesheet" />
    <!-- Canonical SEO -->
    <link rel="canonical" href="" />
    <!--  Social tags      -->
    <meta name="keywords" content="">
    <meta name="description" content="">
<script type="text/javascript">
    //为用户名文本框添加这个方法，在文本框失去焦点以后运行
    //就是当用户填写完用户名后，进行下一步填写的时候，异步执行这个方法
    function checkUsername(){
        //获取用户名文本框对象
        var email = document.getElementsByName("email")[0].value;
        //获取提示信息span对象
        var span1 = document.getElementsByTagName("span")[7];
//         if(username == ""){
//             span1.innerHTML = "用户名不能为空！";
//             return;
//         }
        
        //创建请求对象
        var xmlHttp = new XMLHttpRequest();
        
        //设置请求状态变化时触发的事件
        xmlHttp.onreadystatechange = function(){
            //如果请求状态码为4，说明请求已经完成，响应已经就绪
            if(xmlHttp.readyState == 4){
                //响应状态码为200，响应完成
                if(xmlHttp.status == 200){
                    //获取服务器返回的信息
                    var data = xmlHttp.responseText;
                    //判断返回的信息，输出响应的提示信息
                    if(data == 0){
                        //如果返回0，说明用户名不重复，可以使用
                        span1.innerHTML = "用户名可以使用！";
                    }else{
                        //说明用户名重复，不能使用
                        span1.innerHTML = "用户名已经被注册！";
                    }
                }
            }
        }
            //创建连接
            xmlHttp.open("GET","/ClassAppointment/RegisterAJAXServlet?email="+email,true);
            
            //发送请求
            xmlHttp.send();
        
    }
</script>    
    
    
</head>

<body class="login-page sidebar-collapse">
    <!-- Navbar -->
     
    <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
        <div class="container">
            <div class="dropdown button-dropdown">
                <a href="#pablo" class="dropdown-toggle" id="navbarDropdown" data-toggle="dropdown">
                    <span class="button-bar"></span>
                    <span class="button-bar"></span>
                    <span class="button-bar"></span>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-header">Dropdown header</a>
                    <a class="dropdown-item" href="Login.jsp">登   	录</a>
                    <a class="dropdown-item" href="register.jsp">注		册</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Separated link</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">One more separated link</a>
                </div>
            </div>
            <div class="navbar-translate">
                <a class="navbar-brand" href="#" rel="tooltip" data-placement="bottom">
                    	更多。。。。
                </a>
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" data-nav-image="img/blurred-image-1.jpg">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="#/issues">Have an VPN   →?</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on Twitter" data-placement="bottom" href="#CreativeTim" target="_blank">
                            <i class="fa fa-twitter"></i>
                            <p class="d-lg-none d-xl-none">Twitter</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="#CreativeTim" target="_blank">
                            <i class="fa fa-facebook-square"></i>
                            <p class="d-lg-none d-xl-none">Facebook</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on Instagram" data-placement="bottom" href="#" target="_blank">
                            <i class="fa fa-instagram"></i>
                            <p class="d-lg-none d-xl-none">Instagram</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    <div class="page-header" filter-color="orange">
        <div class="page-header-image" style="background-image:url(img/login.jpg)"></div>
        <div class="container">
            <div class="col-md-4 content-center">
                <div class="card card-login card-plain">
                    <form action="${pageContext.request.contextPath}/ApplicantRegisterServlet" method="post">
                        <div class="header header-primary text-center">
                            <div class="logo-container">
                                <img src="img/now-logo.png" alt="">
                            </div>
                        </div>
                        
                        <div class="content">
                        	
	                            <div class="input-group form-group-no-border input-lg">
	                                <span class="input-group-addon">
	                                    <i class="now-ui-icons users_circle-08"></i>
	                                </span>
	                                <input type="text"  name = "email"  onblur="checkUsername();"  placeholder="eamil...." class="form-control" >
	                               <span  id = "span1"  ></span>
	                            </div>
	                           
	                            
	                            
	                            <div class="input-group form-group-no-border input-lg">
	                                <span class="input-group-addon">
	                                    <i class="now-ui-icons text_caps-small"></i>
	                                </span>
	                                <input type="password"  name = "password"  placeholder="password...." class="form-control" >
	                            </div>
                        </div>
                        <div class="footer text-center">
                        <input type="submit" class="btn btn-primary btn-round btn-lg btn-block" value="Sign   Up" >
<!--                             <a  type="submit" class="btn btn-primary btn-round btn-lg btn-block">Sign   Up</a> -->
                        </div>
                         </form>
                        <div class="pull-left">
                            <h6>
                                <a href="Login.jsp" class="link">登     录</a>
                            </h6>
                        </div>
                        <div class="pull-right">
                            <h6>
                                <a href="#pablo" class="link">忘记密码？</a>
                            </h6>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="#">
                                	呼和浩特
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                	20°C
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                   	西北风 4级
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               		多云
                            </a>
                        </li>
                    </ul>
                </nav>
                 <div id = "span1" ></div>
            </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="js/core/popper.min.js" type="text/javascript"></script>
<script src="js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Share Library etc -->
<script src="js/plugins/jquery.sharrre.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>

</html>