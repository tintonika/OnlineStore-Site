
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
        <jsp:include page="navPanel.jsp" />
        <!--articles list--> 
        <div class="tbody"> 
            <div class="row w-100 mr-auto">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Photo</th>
                            <th scope="col">Title</th>
                            <th scope="col">Category</th>
                            <th scope="col">Qty</th>
                            <th scope="col">Price</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if(listArticle!=null){
                                for (Articles article : listArticle) {
                        %>   
                        <tr>
                            <th scope="row"></th>
                                <td>
                                    <img alt="no image" src="img/<%= article.getPHOTO()%>" height="70" width="60"/>
                                </td>
                                <td><%= article.getName()%></td>
                                <td><%= article.getNameCategory()%></td>
                                <td>
                                    <div class="quantity">
                                    <button class="plus-btn" type="button" name="button">
                                        <img src="img/plus.png" style="width: 10px; height: 10px" />
                                    </button>
                                        <input type="text" name="name" value="1">
                                    <button class="minus-btn" type="button" name="button">
                                        <img src="img/minus.png" style="width: 10px; height: 10px" />
                                    </button>
                                    </div>
                                </td>
                                <td><%= article.getPRICE()%></td>
                                <td>
                                    <img src="img/delete.png" style="width: 10px; height: 10px" />
                                </td>
                        </tr>
                        <%
                            }}
                        %> 
                    </tbody>
                </table>
            </div>
        </div> 
      
    </body>
</html>