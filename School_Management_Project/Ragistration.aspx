<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ragistration.aspx.cs" Inherits="School_Management_Project.Ragistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>SCHOOL MANAGEMENT</title>
    <link href="Assent/login/font-awesome.min.css" rel="stylesheet" />
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


        h2 {
            color: rgba(255,255,255,.8);
            margin-left: 12px;
        }

        body {
            /*BACKGROUND-COLOR: whitesmoke;*/
            background-image: url("/login/img/bg-1.jpg");
            font-family: 'Roboto', sans-serif;
        }

        form {
            background-color: #04020cd1;
            position: relative;
            margin: 50px auto;
            width: 650px;
            height: auto;
        }

        input {
            padding: 16px;
            border-radius: 6px;
            border: 0px;
            background: rgba(255,255,255,.2);
            display: block;
            margin: 5px;
            width: 300px;
            color: white;
            font-size: 13px;
            height: 40px;
        }

            input:focus {
                outline-color: rgba(0,0,0,0);
                background: rgba(255,255,255,.95);
                color: #e74c3c;
            }

        button {
            float: right;
            height: 121px;
            width: 50px;
            border: 0px;
            background: #e74c3c;
            border-radius: 7px;
            padding: 10px;
            color: white;
            font-size: 22px;
        }

        .inputUserIcon {
            position: absolute;
            top: 68px;
            right: 80px;
            color: #e74c3c;
        }

        .inputPassIcon {
            position: absolute;
            top: 136px;
            right: 80px;
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
    <form id="form1" runat="server" >
   <div class="container" style="height: 400px; border: groove;">
            <div class="row">
                <div style="padding-top: 5%;">
                    <h1 style="text-align: center; color: white">
                        <img src="login/img/admin.png" style="width: 55px" />
                    </h1>
                    <form action="#" method="post" enctype="multipart/form-data">
                        <table style="padding-left: 13px">
                            <tr>
                                <td style="padding-left: 50px">
                                    <asp:Label ID="lbllogin" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:TextBox ID="txtEmplId" runat="server" class="user" placeholder="Employee I'd." name="user id" required="required"> </asp:TextBox></td>
                                <td><asp:TextBox ID="txtename" runat="server" class="user" placeholder="Employee Name"  required="required"></asp:TextBox> </td>
                            </tr>

                            <tr>
                                <td><asp:TextBox ID="txtpass" runat="server" class="user" placeholder="User Password" name="userPass" TextMode="Password" required="required"></asp:TextBox></td>
                                <td><asp:TextBox ID="txtcpass" runat="server" class="user" placeholder="Confirm Password" TextMode="Password"  required="required"></asp:TextBox></td>
                            </tr>

                            <tr>
                                <td><asp:TextBox ID="txtdiggnation" runat="server" class="user" placeholder="Employee Disgnation"  required="required"></asp:TextBox></td>
                               <td> <asp:TextBox ID="txtemail" runat="server" class="user" placeholder="Employee Email I'd" TextMode="Email"  required="required"></asp:TextBox></td>
                            </tr>

                            

                            <tr>
                                <td><asp:TextBox ID="txtmobile" runat="server" class="user" placeholder="Employee Mobile Number" TextMode="Phone"  required="required"></asp:TextBox></td>
                                <td><asp:Button ID="btnsave" runat="server" Style="background-color: #e74c3c" Text="Ragistration" class="entypo-lock" OnClick="btnsave_Click" /></td>
                            </tr>
                            
                        </table>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label><br />
                    </form>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
