
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
                            <th scope="col" style=" text-align: center" >Qty</th>
                            <th scope="col" style=" text-align: center">Price</th>
                            <th scope="col" style=" text-align: center">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if(listArticle!=null){
                                for (Articles article : listArticle) {
                        %>   
                        <tr>
                            <th scope="row" ></th>
                                <td>
                                    <img alt="no image" src="img/<%= article.getPHOTO()%>" height="70" width="60"/>
                                </td>
                                <td><%= article.getName()%></td>
                                <td><%= article.getNameCategory()%></td>
                                <td style=" text-align: center">
                                    <div class="quantity">
                                        <button class="minus-btn" type="button" name="button">
                                            <img src="img/minus.png" style="width: 10px; height: 10px" />
                                        </button>
                                        <input type="text" name="name" value="1" size="5px">
                                        <button class="plus-btn" type="button" name="button">
                                            <img src="img/plus.png" style="width: 10px; height: 10px" />
                                        </button>
                                    </div>
                                </td>
                                <td style=" text-align: center"><%= article.getPRICE()%></td>
                                <td style=" text-align: center">
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
         <div class="reg-body"> 
            <div class="row mr-auto">
                <div class="col-2"></div>
                <div class="col-8">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Email</label>
                                <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Password</label>
                                <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nom">First and Last Names </label>
                                <input type="text" class="form-control" id="nom" name="nom"  placeholder="Enter your first and last names">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="tel">Telephone</label>
                                <input type="text" class="form-control" id="tel" name="tel"  placeholder="Enter your telephone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Address</label>
                            <textarea type="text" class="form-control" id="inputAddress" placeholder="1234 Main St"></textarea>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                <label class="form-check-label" for="gridCheck">
                                  Check me out
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Confirm Order</button>
                    </form>
                </div>
                <div class="col-2"></div>
            </div>
        </div>
      <script src="js/javaScript.js"></script>
    </body>
</html>