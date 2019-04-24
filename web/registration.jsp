
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:include page="head.jsp" />
<!DOCTYPE html>
<html>
    <jsp:include page="navPanel.jsp" />
    <body>
        <div class="row">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-4">
                <form action="login" type="POST">
                    <div class="form-group">
                        <label for="login">Email address</label>
                        <input type="email" class="form-control" id="login" name="nom" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="nom">First and Last Names </label>
                        <input type="text" class="form-control" id="nom" name="nom"  placeholder="Enter your first and last names">
                    </div>
                    <div class="form-group">
                        <label for="tel">Telephone</label>
                        <input type="text" class="form-control" id="tel" name="tel"  placeholder="Enter your telephone">
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <textarea type="text" class="form-control" id="address" name="address" placeholder="Enter your address" row="3"></textarea>
                    </div>
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="check">
                        <label class="form-check-label" for="check">Check me out</label>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Save</button>
                </form>
                        <button type="submit" class="btn btn-secondary">Reset</button>
                        <button type="submit" class="btn btn-secondary">Exit</button>
                    </div>
            </div>
        </div>
         
    </body>
</html>
