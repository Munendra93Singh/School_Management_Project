<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="School_Management_Project.Login" EnableEventValidation="false" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SCHOOL MANAGEMENT</title>
    <link href="Assent/login/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/css1.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnsave_Click").click(function () {
                alert("Done !!");
            });
        });
  
        //window.history.forward();
        //function noBack() {
        //    window.history.forward();
        //}
    </script>

    <style>
        /* zocial */
        [class*="entypo-"]:before {
            font-family: 'entypo', sans-serif;
        }

        *,
        *:before,
        *:after {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }


       

        body {
            /*BACKGROUND-COLOR: whitesmoke;*/
            background-image: url("/login/img/img1.jpg");
            font-family: 'Roboto', sans-serif;
        }

        form {
            background-color: #5c4e68;
            position: relative;
            margin: 50px auto;
            width: 380px;
            height: auto;
        }

        input {
            padding: 16px;
            border-radius: 6px;
            border: 0px;
            background: rgba(255,255,255,.2);
            display: block;
            margin: 15px;
            width: 300px;
            color: white;
            font-size: 15px;
            height: 50px;
        }

            input:focus {
                outline-color: rgba(0,0,0,0);
                background: rgba(255,255,255,.95);
                color: #e74c3c;
            }

       

       

        input::-webkit-input-placeholder {
            color: white;
        }

        input:focus::-webkit-input-placeholder {
            color: #e74c3c;
        }
    </style>
    <script src="Assent/login/jquery-1.10.2.js"></script>
    <script src="Assent/login/jquery-ui.js"></script>

    <script>
        $(".user").focusin(function () {
            $(".inputUserIcon").css("color", "#e74c3c");
        }).focusout(function () {
            $(".inputUserIcon").css("color", "white");
        });

        $(".pass").focusin(function () {
            $(".inputPassIcon").css("color", "#e74c3c");
        }).focusout(function () {
            $(".inputPassIcon").css("color", "white");
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">


        <div class="container" style="height: 440px;">
            <div class="row">
                <div style="padding-top: 10%;">
                    <h1 style="text-align: center; color: white">
                        <img src="login/img/admin.png" style="width: 55px" />
                    </h1>
                    <form action="#" method="post" enctype="multipart/form-data">
                        <table style="padding-left: 20px">
                            <tr>
                                <td style="padding-left: 50px">
                                    <asp:Label ID="lbllogin" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtemail" runat="server" class="user" placeholder="User Name" name="username" required="required">
                                    </asp:TextBox></td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:TextBox ID="txtpass" runat="server" class="user" placeholder="User Password" name="userPass" TextMode="Password" required="required"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnsave" runat="server" Style="background-color: #e74c3c" Text="Login" class="entypo-lock" OnClick="btnsav_Click" /></td>
                            </tr>
                            </table>

                            <%-- <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server">Create  New Account.!</asp:LinkButton>
                                    <asp:LinkButton ID="Linkbutton" runat="server" Style="padding-left: 53px">Forgot Password.?</asp:LinkButton>
                                </td>
                            </tr>--%>
                            <span style="color: saddlebrown">
                                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            </span>
                            <br />
                    </form>
                </div>
            </div>

        </div>

    </form>
</body>
</html>
