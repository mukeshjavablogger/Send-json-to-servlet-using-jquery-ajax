<%-- 
    Document   : index
    Created on : Nov 27, 2014, 9:33:42 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquery-2.1.0.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
        <script>
            function addNewManufacturer() {
                var name = $("#name").val();
                var address = $("#address").val();
                var phone = $("#phone").val();

                var sendInfo = {
                    Name: name,
                    Address: address,
                    Phone: [
                        {
                            phone1: "2131321312"
                        },
                        {
                            phone2: "45435435435"
                        }
                    ],
                    onlyarray: [10, 20, 30, 40, 50]

                };

                $.ajax({
                    type: "POST",
                    url: "<%=request.getContextPath()%>/JsonParsor",
                    dataType: "json",
                    success: function(msg) {
                        alert(msg);
                    },
                    data: {d: JSON.stringify(sendInfo)}
                });
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input type="text" name="name" id="name" />
        <input type="text" name="add" id="address" />
        <input type="text" name="phone" id="phone" />
        <a href="#" onclick="addNewManufacturer();">Ok</a>
    </body>
</html>
