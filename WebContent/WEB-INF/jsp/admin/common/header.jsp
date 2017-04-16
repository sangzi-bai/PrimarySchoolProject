<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--S header-->
		<div class="header">
			

			<div class="page-menu-wrapper clearfix" >
				<ul class="menu-function">
					<li>
						<a href="${pageContext.request.contextPath}/admin/index" title="" class="home" >后台管理</a>                                       
					</li>
				</ul>
				<ul class="menu-share">
                 <li><a href="#">撰写</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="edit.html" >小学新闻</a></li>
							<li><a href="edit.html" >公告通知</a></li>		
			                <li><a href="${pageContext.request.contextPath}/admin/write/indexImages" >首页轮播图</a></li>		
					</ul>
                 </li>
                 <li><a href="#">管理</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="edit.html" >角色管理</a></li>
							<li><a href="edit.html" >权限管理</a></li>
							<li><a href="#">用户管理</a></li>
			
					</ul>
                 </li>
                 <li><a href="#">设置</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/admin/list/trends?flag=news&p=1" >小学新闻</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/list/trends?flag=notice&p=1" >公告通知</a></li>		
			
					</ul>
                 </li>
                 <li><a href="#">${SCHOOL_CULTURE}</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/admin/list/culture?flag=introduce&p=1">${SCHOOL_CULTURE_INTRODUCE}</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/list/culture?flag=affairs&p=1">${SCHOOL_CULTURE_AFFAIRS}</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/list/culture?flag=sight&p=1">${SCHOOL_CULTURE_SIGHT}</a></li>
					</ul>
                 	
                 </li>
                 
                 <li><a href="#">${SCHOOL_TRENDS}</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/admin/list/trends?flag=news&p=1">${SCHOOL_TRENDS_NEWS}</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/list/trends?flag=notice&p=1">${SCHOOL_TRENDS_NOTICE}</a></li>
					</ul>
                 </li>
                 
                 <li><a href="#">${SCHOOL_EDUCATION}</a>
                 	  <ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/adminlist/education?flag=education&p=1">${SCHOOL_EDUCATION_MAIN}</a></li>
							<li><a href="${pageContext.request.contextPath}/adminlist/education?flag=speak&p=1">${SCHOOL_EDUCATION_SPEAK}</a></li>
							<li><a href="${pageContext.request.contextPath}/adminlist/education?flag=active&p=1">${SCHOOL_EDUCATION_ACTIVE}</a></li>
							<li><a href="${pageContext.request.contextPath}/adminlist/education?flag=parents&p=1#">${SCHOOL_EDUCATION_PARENTS}</a></li>
							<li><a href="${pageContext.request.contextPath}/adminlist/education?flag=stagent&p=1">${SCHOOL_EDUACTION_STAGENT}</a></li>
					</ul>
                 </li>
                 
                 <li><a href="#">${SCHOOL_STUDENT}</a>
                 	 <ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/adminlist/student?flag=book&p=1">${SCHOOL_STUDENT_BOOK}</a></li>
							<li><a href="${pageContext.request.contextPath}/adminlist/student?flag=activity&p=1">${SCHOOL_STUDENT_ACTIVITY}</a></li>
							<li><a href="#">${SCHOLL_STUDENT_CLASS}</a></li>
							<li><a href="#">${SCHOOL_STUDENT_LAB}</a></li>
					</ul>
                 	
                 </li>
                 
                 <li><a href="#">${SCHOOL_TEACHER}</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/adminlist/teacher?flag=resources&p=1">${SCHOOL_TEACHER_RESOURCES}</a></li>
	                        <li><a href="${pageContext.request.contextPath}/adminlist/teacher?flag=teachers&p=1">${SCHOOL_TEACHER_TEACHERS}</a></li>
	                        <li><a href="${pageContext.request.contextPath}/adminlist/teacher?flag=train&p=1">${SCHOOL_TEACHER_TRAIN}</a></li>
	                        <li><a href="${pageContext.request.contextPath}/adminlist/teacher?flag=prize&p=1">${SCHOOL_TEACHER_PRIZE}</a></li>	
					</ul>
                 </li>
                 
                 
                 <li><a href="#">${SCHOOL_PARTY}</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/adminlist/party?flag=branch&p=1">${SCHOOL_PARTY_BRANCH}</a></li>
							<li><a href="${pageContext.request.contextPath}/adminlist/party?flag=trade_union&p=1">${SCHOOL_PARTY_TRADE_UNION}</a></li>
					</ul>
                 </li>
                 <li><a href="#">${SCHOOL_MANAGE}</a>
                 	<ul class="dropdown-menu follow">
							<li><a href="${pageContext.request.contextPath}/adminlist/manage?flag=department&p=1">${SCHOOL_MANAGE_DEPARTMENT}</a></li>
	                        <li><a href="${pageContext.request.contextPath}/adminlist/manage?flag=recommendation&p=1">${SCHOOL_MANAGE_RECOMMENDATION}</a></li>
	                        <li><a href="${pageContext.request.contextPath}/adminlist/manage?flag=notice&p=1">${SCHOOL_MANAGE_NOTICE}</a></li>
	                        <li><a href="${pageContext.request.contextPath}/adminlist/manage?flag=rules&p=1">${SCHOOL_MANAGE_RULES}</a></li>
	                        <li><a href="${pageContext.request.contextPath}/adminlist/manage?flag=email&p=1">${SCHOOL_MANAGE_EMAIL}</a></li>
					</ul>
                 </li>
                 
					
				</ul>	
				
				<ul class="menu-function user">
					<li>
						<a href="#" title="" class="home" >管理员</a>                                       
					</li>
					<li>
						<a href="#" title="" class="home" >退出</a>                                       
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/main/index" title="" class="home" >网站</a>                                       
					</li>
				</ul>
			</div>
	
</div>
<!--E header-->