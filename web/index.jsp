
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
    <body style="background-color:  #f4f6f6">
     
     <!--carusel-->
     <div class="bd-example">
         <jsp:include page="navPanel.jsp" />
         <!--carusel-->
         <div id="carouselExampleCaptions" class="carousel slide "  style="height: 610px" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/pic1.jpg" style="height: 600px" class="d-block w-100" >
              <div class="carousel-caption d-none d-md-block text-dark" >
                <h5>First slide label</h5>
                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="img/pic2.jpg" style="height: 600px" class="d-block w-100" >
              <div class="carousel-caption d-none d-md-block">
                <h5>Second slide label</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="img/pic3.jpg" style="height: 600px" class="d-block w-100" >
              <div class="carousel-caption d-none d-md-block text-dark" style="text-decoration-color: gray">
                <h5>Third slide label</h5>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
         <!--end of carusel-->
    </div>
<!--articles list--> 
<div class="tbody"> 
    <div class="row w-100 mr-auto">
    <a name="list"></a>
    
    <%
        if(listArticle!=null){
            for (Articles article : listArticle) {
    %>   
    
          <div class="card-sm-4">
            <div class="card-body">
              <h3 class="card-title"><%= article.getName()%></h3>
               <h5 class="card-title"><%= article.getNameCategory()%></h5>
              <img alt="no image" src="img/<%= article.getPHOTO()%>" height="170" width="160"/>
              <p class="card-text">Price : &nbsp;<%= article.getPRICE()%></p>
              <a href="/cart" ><img src="img/sh-cart-plus.png" width="50" height="50" ></a>
            </div>
          </div>

              <%
            }}
    %> 
    </div>
</div> 

    </body>
</html>