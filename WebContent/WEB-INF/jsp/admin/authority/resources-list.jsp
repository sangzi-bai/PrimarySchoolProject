<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		
		<title>用户列表</title>
		<c:set var="CTP" value="${pageContext.request.contextPath}"></c:set>
		<c:set var="CTP_ADMIN" value="${pageContext.request.contextPath}/resources/admin"></c:set>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<jsp:include page="../common/meta.jsp" flush="true"/>	
		<link href="${CTP_ADMIN }/css/admin_header.css" rel="stylesheet" type="text/css" />
		<link href="${CTP_ADMIN }/css/auth.css" rel="stylesheet" type="text/css" />
		<link href="${CTP_ADMIN }/css/magic-check.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="${CTP}/resources/common/css/page.css"/>
		<script type="text/javascript" src="${CTP_ADMIN }/js/extends/wangEditor/dist/js/lib/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="${CTP_ADMIN }/js/module/common.js"></script>
		<script type="text/javascript" src="${CTP}/resources/common/js/extends/layer-2.4/layer.js"></script>
		
<script type="text/javascript">
		
$(function(){
	var CTPPATH="${pageContext.request.contextPath}";
	var CTP_HOME=CTPPATH+"/resources/admin";
			

	$(document).on("click",".only-select",function(){

		
		$(".mark").show();
		$(".dialog").show();
		
		//获取id的值
		var id=$(this).parent().parent().children().eq(0).find("input").val();
		$(".hide-checked-id").val(id);
		//$("input[type='radio']:checked").val();
	});
	
	$(".save").bind("click",function(){
		
		var uid=$(".hide-checked-id").val();
		var  role_id= $("input[type='radio']:checked").val();
		
		$.ajax({
			type:'post',
			dataType:'json',
			url:CTPPATH+"/admin/authority/updateUserRole",
			data:{"roleId":role_id,"userId":uid},
		
			beforeSend:function(){
				//显示正在加载
				layer.load(2);
			},
			success:function(data){

				//关闭正在加载
				setTimeout(function(){
					  layer.closeAll('loading');
				}, 1000);
				
				if(data==1){
					layer.msg('角色分配成功', {icon: 1,time:3000});
					//window.location.href="${pageContext.request.contextPath}/admin/authority/allocation?p=1";
				
				}else{
					layer.msg("角色分配失败", {icon: 2,time:2000});
				}
			},
			error:function(){

				//关闭正在加载
				setTimeout(function(){
					  layer.closeAll('loading');
				}, 1000);
				layer.msg("出错了", {icon: 2,time:2000});
			}
		});
			
		   //end
		
	});
		
	//模糊查询
	$(".find").bind("click",function(event){
		

		//获取token
		var token=$(".user-input").val();
		
		if(token.replace(/\s/g , '')!="" ){
			//start
			$.ajax({
				type:'post',
				dataType:'json',
				url:CTPPATH+'/admin/authority/findUserByName',
				data:{"token":token},
			
				beforeSend:function(){
					//显示正在加载
					layer.load(2);
				},
				success:function(data){

					//关闭正在加载
					setTimeout(function(){
						  layer.closeAll('loading');
					}, 1000);
		
					 
			        var xhtml="";
			        xhtml+="<table><tr><th><input type='checkbox' class='new_div2_input'/></th><th>用户名称</th><th>用户邮箱</th><th>用户工号</th><th>用户状态</th><th>拥有的角色</th><th>操作</th></tr>";
			        if(data.length>0){
			        	
			        		$.each(data,function(idx,item){ 
			        			
			        			xhtml+="<td> <input type='checkbox' name='info_id' value='"+item.id+"'></td><td>"+item.userName+"</td><td>"+item.email+"</td><td>"+item.number+"</td>";
			        		   
			        			if(item.status==1){
			        				xhtml+="<td>有效</td>";
			        			}else{
			        				xhtml+="<td>无效</td>";
			        			}
			        			xhtml+="<td>"+item.roleName+"</td><td><img src='"+CTP_HOME+"/img/assign.png'/><a href='javascript:void(0);' class='only-select'>选择角色</a></td></tr>";
			        			
			        		}); 
			        	
			        	
			        	
			        }else{
			        	xhtml+="<tr><td colspan='7' style='background:#F2DEDE; color:#444444;'>没有找到用户</td></tr>";
			        }
			        
			        xhtml+="</table>";
			        $(".a-content").html(xhtml);
						
				},
				error:function(){

					//关闭正在加载
					setTimeout(function(){
						  layer.closeAll('loading');
					}, 1000);
					layer.msg("出错了", {icon: 2,time:2000});
				}
			});
			//end
		}else{
			layer.msg("请输入您要查询的内容！");
		}
		
	    
	});
	
	//删除用户
	//批量删除
	
	$(document).on("click",".delete",function(){
		var t=document.getElementsByName("info_id");
		var ids = "";
        for (var i = 0; i < t.length; i++) {
            if (t[i].checked) {
            	ids +=t[i].value+',';
            }
        }
        ids = ids.substring(0, ids.length - 1);
        if(ids==""){
       	 layer.msg("请选择您要删除的选项");
        }else{
          layer.confirm('确定删除所选择的记录？', {
  			  btn: ['确定','取消'] 
  			}, function(){
  				//已选定，可以进行批量删除操作
  				//调用Ajax向后台发送请求 ，删除所选项
  				
  				$.ajax({
					type:'post',
					dataType:'json',
					url:CTPPATH+"/admin/delete/user",
					data:{"ids":ids},
				
					beforeSend:function(){
						//显示正在加载
						layer.load(2);
					},
					success:function(data){
	
						//关闭正在加载
						setTimeout(function(){
							  layer.closeAll('loading');
						}, 1000);
						
						if(data==1){
							layer.msg('删除成功', {icon: 1,time:2000});
							window.location.href="${pageContext.request.contextPath}/admin/authority/allocation?p=1";
						
						}else{
							layer.msg("删除出错了", {icon: 2,time:2000});
						}
					},
					error:function(){
	
						//关闭正在加载
						setTimeout(function(){
							  layer.closeAll('loading');
						}, 1000);
						layer.msg("出错了", {icon: 2,time:2000});
					}
				});
  				
  			   //end
  			}, function(){
  			    //取消操作 ，这里可以为空
  			});
       	
        }
		
	});
	
});
		
</script>
</head>
<body>

<%--检测浏览器 --%>
<jsp:include page="../../common/browsehappy.jsp"></jsp:include>
	

<!-- S header -->
<jsp:include page="../common/header.jsp" />
	<!--S main-->
			
            <div class="new_div1"><span class="new_div1_span">角色分配</span>              
            </div>
            <!-- S 权限内容 -->
            
            <div class="auth-div">
			<div class="auth-operation-list">
				<ul>
					<li><a href="${CTP}/admin/authority/roleList" > >角色列表</a></li>
					<li><a href="${CTP}/admin/authority/allocation?p=1"> >角色分配</a></li>
					<li><a href="${CTP}/admin/authority/resources" class="checked-a"> >权限列表</a></li>
					
				</ul>
			</div>
			
			<div class="auth-content">
				<div class="title">
					<span>权限资源列表</span>
					
				</div>
			
				
				<div class="a-content">
					<table>
						<tr>
							<th><input type="checkbox" class="new_div2_input"/></th>
							<th>value</th>
							<th>permission</th>
						
						</tr>
						<c:forEach items="${resources}" var="list"> 
						<tr>
							<td> <input type="checkbox" name="info_id" value="${user_list.id}"></td>
							<td>${list.value}</td>
							<td>${list.permission }</td>
							
							
						</tr>
						
				        </c:forEach>
					</table>

				</div>
				
			</div>
		</div>
            <!-- E 权限内容 -->
        <div> 
</div>
<!--E main-->

<!--S footer-->
<jsp:include page="../common/footer.jsp" />
<!--E footer-->



	</body>
</html>
