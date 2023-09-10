<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="SendMsg.aspx.cs" Inherits="School_Management_Project.SendMsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
        <div id="layout-static">

            <div class="static-content-wrapper">



                <div class="static-content">
                    <div class="page-content">
                        <ol class="breadcrumb">

                            <li><a href="Dashboard.aspx">Dashboard</a></li>
                            <li class="active"><a>Send SMS Alert</a></li>

                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>SEND SMS ALERT</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>

                                <div class="col-md-12" style="padding-top: 13px">
                                     <div class="form-group col-lg-1">
                                         </div>
                                    <div class="form-group col-lg-4">
                                        <table>
                                            <tr>
                                                <lebel for="dept" class="reqinput">Send SMS To :-</lebel>
                                                <%--<td for="dept" class="reqinput">Send SMS To :-</td>--%>
                                                <td>
                                                    <asp:DropDownList ID="ddlsms" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 160px">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="All Student" Value="All Student"></asp:ListItem>
                                                        <asp:ListItem Text="Parents" Value="Parents"></asp:ListItem>
                                                        <asp:ListItem Text="All Teacher" Value="All Teacher"></asp:ListItem>
                                                        <asp:ListItem Text="All Management" Value="All Managment"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                           
                                        </table>

                                        <table>
                                             <tr>
                                                <lebal for="dept" class="reqinput">catagory :</lebal>
                                               <%-- <td for="dept" class="reqinput" style="padding-bottom: 35px">Catagory :</td>--%>
                                                <td>
                                                    <asp:DropDownList ID="ddlcatagory" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 160px">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="All Student" Value="All Student"></asp:ListItem>
                                                        <asp:ListItem Text="All Teacher" Value="All Teacher"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="form-group col-lg-6">

                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Description:</lebal>
                                               <%-- <td>Description:</td>--%>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" runat="server" TabIndex="4" Height="150px" Width="450px" TextMode="MultiLine" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>

                                        </table>
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" Text="Save" Style="Width: 130px; margin-left: 7px" class="btn btn-danger btnWidth" formnovalidate="" /></td>
                                                <br />
                                                <%--<td><asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-primary " formnovalidate=""/></td>--%>
                                            </tr>
                                        </table>
                                    </div>

                                </div>
                                <%--<div class="col-md-12">
                                    <div class="form-group col-lg-2">
                                    </div>
                                    <div class="form-group col-lg-2">

                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="btnsave" runat="server" Text="Save" Style="Width: 130px; margin-left: -61px" class="btn btn-danger btnWidth" formnovalidate="" /></td>
                                                <br />
                                                <td><asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-primary " formnovalidate=""/></td>
                                            </tr>
                                        </table>

                                    </div>


                                </div>--%>

                                <div>
                                </div>

                            </div>
                        </div>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Fee Submision Data</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="panel-body">
                                    <div class="form-horizontal row-border">
                                        <div class="widget-content no-padding">
                                            <table class="TableCSS table-bordered">

                                                <tr class="TableHeader">
                                                    <td>Sr. No.</td>
                                                    <td>Send To</td>

                                                    <td>Calagory</td>

                                                    <td>Date</td>
                                                                                                        
                                                    <td>Description</td>

                                                    <td>Edit</td>

                                                    <td>Delete</td>

                                                </tr>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
