<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
request.setCharacterEncoding("utf-8");


/*Map<String, String[]> paramMap = request.getParameterMap();
Iterator<String> it = paramMap.keySet().iterator();
while(it.hasNext()){
	String key = it.next();
	out.println("key : " + key + "<br>");
	String[] values = paramMap.get(key);
	out.print("value : ");
	for(String v : values){
		out.print(v + ",");
		
	}
	out.println("<br>");
}


if(paramMap.size()==0){
	out.println("¾Æ¹«°Íµµ ¾Èº¸³Â½´~~");	
}*/
Gson gs = new Gson();
Map<String, String[]> map = gs.fromJson(request.getParameter("param"), HashMap.class);
String json = gs.toJson(map);
out.println(json);

%>
