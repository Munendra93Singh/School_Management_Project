<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="ClassSchedule.aspx.cs" Inherits="School_Management_Project.ClassSchedule" %>

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
                            <li class="active"><a>Classes & Class Teacher</a></li>

                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Class Scheduled * Class Time Table</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>

                                <div class="col-md-12" style="padding-top: 13px">
                                    <div class="form-group col-lg-1">
                                    </div>
                                    <div class="form-group col-lg-5">
                                        <table>
                                            <tr>
                                                <lebel for="dept" class="reqinput">Emp Id</lebel>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>

                                        </table>

                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Name</lebal>

                                                <td>
                                                    <asp:TextBox ID="TextBox3" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>

                                            </tr>
                                        </table>

                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Gender</lebal>
                                                <td>
                                                    <asp:TextBox ID="TextBox4" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>

                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Class</lebal>
                                                <td>
                                                    <asp:TextBox ID="TextBox5" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>

                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Class Section</lebal>
                                                <%-- <td for="dept" class="reqinput" style="padding-bottom: 35px">Catagory :</td>--%>
                                                <td>
                                                    <asp:TextBox ID="TextBox6" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>

                                    </div>
                                    <div class="form-group col-lg-6">

                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Class Date</lebal>
                                                <%-- <td for="dept" class="reqinput" style="padding-bottom: 35px">Catagory :</td>--%>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Class Time</lebal>

                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Subject</lebal>

                                                <td>
                                                    <asp:TextBox ID="TextBox8" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Tutor Phone</lebal>

                                                <td>
                                                    <asp:TextBox ID="TextBox9" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Tutor Email</lebal>

                                                <td>
                                                    <asp:TextBox ID="TextBox10" runat="server" TabIndex="4" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" Text="Save" Style="Width: 130px; margin-left: 7px" class="btn btn-danger btnWidth" formnovalidate="" /></td>
                                                <br />

                                            </tr>
                                        </table>
                                    </div>

                                </div>


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
                                                    <td>Name</td>

                                                    <td>Gender</td>

                                                    <td>Class</td>

                                                    <td>Section</td>

                                                    <td>Date</td>

                                                    <td>Time</td>

                                                    <td>Subject</td>

                                                    <td>Phone</td>

                                                    <td>Email</td>
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
