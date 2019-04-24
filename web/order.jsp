

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="head.jsp" />
    <body>
        <jsp:include page="navPanel.jsp" />
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <form id="paypal" action="" method="post">
                    <p>Amount of your order:</p>
                    <hr>
                    <address margin-bottom:1rem>
                        Twitter, Inc.<br/>
                        1355 Market St, Suite 900<br/>
                        San Francisco, CA 94103<br/>
                        P: (123) 456-7890<br/>
                        Full Name<br/>
                        first.last@example.com<br/>  
                    </address>
                    <hr>
                    <div class="paypal-button-container">
                        <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest"/>
                        <button type="submit" class="btn btn-primary">Pay by </button>
                        <img src="img/paypal.png" alt="Buy Now" />
                    </div>
                </form>
            </div>
            <div class="col-2"></div>
        </div>
       <form action="https://paypal.com/cgi-bin/webscr" method="post">  
    <div>  
        <label for="amount">Amount for transfer</label>  
        <input id="amount" type="text" />  
    </div>  
    <input type="hidden" name="cmd" value="_donations" />  
    <input type="hidden" name="charset" value="utf-8" />  
    <input type="hidden" name="bussiness" value="kurochkanet@gmail.com" />  
    <input type="hidden" name="item_name" value="Item short name" />  
    <input type="hidden" name="currency_code" value="CAD" />  
    <input type="hidden" name="undefined_quantity" value="1" />  
    <input type="hidden" name="return" value="https://site.com/" />  
    <input type="hidden" name="cancel_return" value="https://site.com/" />  
    <input type="hidden" name="notify_url" value="https://site.com/paypal/result" />  
    <input type="hidden" name="custom" value="userId:1|orderId:25" />  
    <input type="hidden" name="button_subtype" value="services" />  
    <input type="hidden" name="no_note" value="1" />  
    <input type="hidden" name="no_shipping" value="1" />  
    <input type="hidden" name="rm" value="" />  
    <div>  
        <input type="submit" value="Transfer" />  
    </div>  
</form>  
    </body>
</html>
