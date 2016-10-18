<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="data" class="game.hello" ></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
    <title>翻拍游戏 </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
	var o=0;
	//定义变量，只能在点击开始后才能点击翻拍
	var s=false;
	//定义变量，统计结果
	var n=0;
	//开始游戏
	function start(){
	  if(s==false){
	 	 alert("把所有的白块点成黑色就成功了，去吧！皮卡丘！");
		s=true;
		document.getElementById("begin").style.display="none";
		document.getElementById("restart").style.display="";
		document.getElementById("gamehelp").style.display="";
		for (var i=0;i<10;i++){
			for(var j=0;j<10;j++){
				if (Math.random()>0.5){
					document.getElementById("fan"+i+j).style.backgroundColor="white";
				}else {
					document.getElementById("fan"+i+j).style.backgroundColor="black";
				}
				//document.getElementById("fan"+i+j).style.backgroundColor="black";
			}
		}
		
	  }
	   
	}
	//重新开始
	function restart(){
	  if(s){
		for (var i=0;i<10;i++){
			for(var j=0;j<10;j++){
				if (Math.random()>0.5){
					document.getElementById("fan"+i+j).style.backgroundColor="white";
				}else {
					document.getElementById("fan"+i+j).style.backgroundColor="black";
				}

			}
		}
		} 
	}
	//重新开始2
	function restart2(){
	document.getElementById("game").style.display="";
	document.getElementById("gameover").style.display="none";
	  if(s){
		for (var i=0;i<10;i++){
			for(var j=0;j<10;j++){
				if (Math.random()>0.5){
					document.getElementById("fan"+i+j).style.backgroundColor="white";
				}else {
					document.getElementById("fan"+i+j).style.backgroundColor="black";
				}

			}
		}
		} 
	}
	//获取技能
	function gamehelp(){
		document.getElementById("help").style.display="";
		document.getElementById("game").style.display="none";
		var help=new Array();
		help[0]="洪荒之力";
		help[1]="我要皮卡丘";
		help[2]="赐我力量";
		help[3]="我要ATP";
		help[4]="技能技能";
		var k=Math.floor(Math.random()*5);
		document.getElementById("helptext").innerHTML="关注下面二维码，发送 <br>“"+help[k]+"”<br>到公众号即可获得！<br>长按即可关注<br><img src='weixin.jpg'/>";
	}
	//获取技能返回
	function backto(){
		document.getElementById("help").style.display="none";
		document.getElementById("game").style.display="";
		
	}
	//点击翻拍
	function fan(a,b){
		var i=Number(a);
		var j=Number(b);
		if(s){
		if(document.getElementById("fan"+i+j).style.backgroundColor=="black"){
			document.getElementById("fan"+i+j).style.backgroundColor="white";
		}else{
			document.getElementById("fan"+i+j).style.backgroundColor="black";
		}
		
		if(i==0){
			if(document.getElementById("fan"+(i+1)+j).style.backgroundColor=="black"){
				document.getElementById("fan"+(i+1)+j).style.backgroundColor="white";
			}else{
				document.getElementById("fan"+(i+1)+j).style.backgroundColor="black";
			}
			if(j==0){		
				if(document.getElementById("fan"+i+(j+1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="black";
				}	
			}else if(j==9){
				if(document.getElementById("fan"+i+(j-1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="black";
				}
			}else {
				if(document.getElementById("fan"+i+(j+1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="black";
				}
				if(document.getElementById("fan"+i+(j-1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="black";
				}
			}
			
		}else if(i==9){
			if(document.getElementById("fan"+(i-1)+j).style.backgroundColor=="black"){
				document.getElementById("fan"+(i-1)+j).style.backgroundColor="white";
			}else{
				document.getElementById("fan"+(i-1)+j).style.backgroundColor="black";
			}
			if(j==0){		
				if(document.getElementById("fan"+i+(j+1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="black";
				}	
			}else if(j==9){
				if(document.getElementById("fan"+i+(j-1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="black";
				}
			}else {
				if(document.getElementById("fan"+i+(j+1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="black";
				}
				if(document.getElementById("fan"+i+(j-1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="black";
				}
			}
		}else{
			if(document.getElementById("fan"+(i+1)+j).style.backgroundColor=="black"){
				document.getElementById("fan"+(i+1)+j).style.backgroundColor="white";
			}else{
				document.getElementById("fan"+(i+1)+j).style.backgroundColor="black";
			}
			if(document.getElementById("fan"+(i-1)+j).style.backgroundColor=="black"){
				document.getElementById("fan"+(i-1)+j).style.backgroundColor="white";
			}else{
				document.getElementById("fan"+(i-1)+j).style.backgroundColor="black";
			}
			if(j==0){		
				if(document.getElementById("fan"+i+(j+1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="black";
				}	
			}else if(j==9){
				if(document.getElementById("fan"+i+(j-1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="black";
				}
			}else {
				if(document.getElementById("fan"+i+(j+1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j+1)).style.backgroundColor="black";
				}
				if(document.getElementById("fan"+i+(j-1)).style.backgroundColor=="black"){
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="white";
				}else{
					document.getElementById("fan"+i+(j-1)).style.backgroundColor="black";
				}
			}
		}
		//初始化结果统计
		n=0;
		for (var i=0;i<10;i++){
			for(var j=0;j<10;j++){
				if (document.getElementById("fan"+i+j).style.backgroundColor=="white"){
					n=n+1;
				}

			}
		}
		if(n==0){
			o++;
			document.getElementById("game").style.display="none";
			document.getElementById("gameover").style.display="";
			if(o<2){
				document.getElementById("succ").innerHTML="同学，不要作弊，要好好做人! 用洪荒之力从来一次吧！";
			}else {
				document.getElementById("succ").innerHTML="恭喜你，成功突破本游戏 !送你福利，关注下面二维码，发送 <br><%=data.getSucc() %><br>到公众号即可获得！<br>长按即可关注<br><img src='weixin.jpg'/>";
				}
		}
		}
	}
	
	</script>
  </head>
  
  <body>
<div id="game">
  <div style="align:center;width: 100%;margin:20px auto;">
  	<center><h2>翻拍游戏</h2></center>
    <table align="center" border="0px">
    <% for(int i=0;i<10;i++){
    %>
    <tr>
    <% for(int j=0;j<10;j++){
     String fan="fan"+i+j;
    %>
    <td><input id="<%=fan %>" type="button" onclick="fan('<%=i %>','<%=j%>');"></td>
    <% }%>
    </tr>
    <%} %>
    
    </table>
    </div>
    <div align="center" style="width:100%;margin:20px auto;">
			<input type="button" id="begin" value="开始游戏" onclick="start();">
			<input type="button" id="restart" style="display:none" value="重玩" onclick="restart();">
			<input type="button" id="gamehelp" style="display:none" value="获取技能" onclick="gamehelp();">
	</div>
</div>
<div id="gameover" style="display:none">
  <div style="align:center;width: 100%;margin:20px auto;">
  	<center><h2>恭喜你 ！</h2>
    <div id="succ"></div>
    </center>
    </div>
    <div align="center" style="width:100%;margin:20px auto;">
		<input type="button" value="再来一局" onclick="restart2();">
	</div>
</div>  
   
<div id="help" style="display:none" >
  <div style="align:center;width: 100%;margin:20px auto;">
  	<center><h2>获取技能</h2>
    <div id="helptext" ></div>
    </div></center>
    <div align="center" style="width:100%;margin:20px auto;">
		<input type="button" value="返回" onclick="backto();">
	</div>
</div>      	
    
  </body>
</html>
