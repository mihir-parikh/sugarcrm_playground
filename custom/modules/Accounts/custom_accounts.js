$(document).ready(function(){
    $("#phone_office").click(function(){
        alert("The correct phone number format is: +xx-xxxxxxxxx");
    });
    
    $("#ticker_symbol").focusout(function(){
        //A bean must already be existing to fetch revenue information of it. I.e.
        //This is implemented to function only while a bean is being updated.
        var account_name = $("#name").val();
        
        if($.trim(account_name).length > 0){                    
            if($.trim($("#ticker_symbol").val()).length > 0){
                $.ajax({
                    url: "index.php?module=Accounts&action=retrieve_quote&name="+account_name
                }).done(function(data){
                    var quoteObj = jQuery.parseJSON(data);                    
                    if(quoteObj.status === 1){
                        if(quoteObj.quote.length > 2){
                            $("#quote_c").val(quoteObj.quote.substr(0, 2));
                        }
                        else{
                            $("#quote_c").val(quoteObj.quote);
                        }                        
                    }
                });            
            }
        }
    });
});