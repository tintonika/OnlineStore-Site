<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.controller.Article"%>
<%@page import ="java.util.ArrayList" %>
<%@page import ="com.model.Articles" %>
<%@page import ="com.controller.LogIn" %>

 
<%  
  ArrayList<Articles> listArticle = (ArrayList)request.getAttribute(Article.CLE_DONNEE);
%>

<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp" />
    <body background="img/pic1.jpg" style="background-repeat: no-repeat; background-size: cover">
        
            <jsp:include page="navPanel.jsp" />
       
        <div  class="d-flex justify-content-center" role="group" aria-label="Basic example">
            <a type="button" class="btn btn-outline-secondary" name="All" href="/article?Id_Cat=<%=0%>">All</a>&nbsp;
            <a type="button" class="btn btn-outline-secondary" style="width: 130px" name="Mugs" href="/article?Id_Cat=<%=1%>">Mugs</a>&nbsp;
            <a type="button" class="btn btn-outline-secondary" style="width: 130px" name="Candleholde" href="/article?Id_Cat=<%=2%>">Candleholde</a>&nbsp;
            <a type="button" class="btn btn-outline-secondary" style="width: 130px" name="Bells" href="/article?Id_Cat=<%=3%>">Bells</a>&nbsp;
            <a type="button" class="btn btn-outline-secondary" style="width: 130px" name="PiggyBanks" href="/article?Id_Cat=<%=4%>">PiggyBanks</a>
        </div>
        <div class="d-flex justify-content-center pt-3">
      
    <%
        if(listArticle!=null){
            for (Articles article : listArticle) {
    %>   
    
        <div class="card-sm-4">
            <div class="card-body border bg-white" >
                <img alt="no image" src="img/<%= article.getPHOTO()%>" height="320" width="280"/>
                <h5 class="card-title"><%= article.getName()%></h5>
                <p class="card-title"><%= article.getNameCategory()%></p>
                <p class="card-text">Price : &nbsp;<%= article.getPRICE()%></p>
                <a href="/cart" ><img src="img/sh-cart-plus.png" width="50" height="50" ></a>
            </div>&nbsp;
        </div>&nbsp;&nbsp;&nbsp;

    <%
        }}
    %> 
    </div>
    </body>
</html>
