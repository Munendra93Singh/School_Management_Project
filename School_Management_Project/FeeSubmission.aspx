<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="FeeSubmission.aspx.cs" Inherits="School_Management_Project.FeeSubmission" %>

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
                            <li class="active"><a>Fees Submission</a></li>
                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Fees Master</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="col-lg-12">
                                    <div class="box box-primary">
                                        <div class="box-header">
                                            <br>
                                        </div>
                                        <div class="box-body">
                                            <div class="col-lg-12">
                                                <div class="form-group col-lg-2">
                                                    <label for="dept">Acadamic Year:</label>
                                                    <span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlFyear" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="2020-2021" Value="2020-2021"></asp:ListItem>
                                                        <asp:ListItem Text="2022-2023" Value="2022-2023"></asp:ListItem>
                                                        <asp:ListItem Text="2023-2024" Value="2023-2024"></asp:ListItem>
                                                        <asp:ListItem Text="2024-2025" Value="2024-2025"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-4">
                                                    <label for="dept">Class:</label>
                                                    <span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlclass" runat="server" TabIndex="9" class="form-control inlineDisplay" Style="width: 100%;" required="">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Student Name/Reg. Name</label>
                                                    <asp:TextBox ID="txtRegName" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Enter Name/Reg." size="40" required=""></asp:TextBox>
                                                </div>
                                                <div>
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <asp:Button ID="btnsave" runat="server" Text="Search" TabIndex="31" class="btn btn-danger btnWidth" OnClick="btnsave_Click1" />
                                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                                </div>
                                                <div class="col-lg-12">
                                                    <label for="dept"></label>
                                                </div>

                                            </div>
                                            <!-- /.box-body -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Fee Submision Data</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="panel-body">
                                    <div class="form-horizontal row-border">
                                        <div class="widget-content no-padding">
                                            <asp:ListView ID="ListView1" runat="server">
                                                <LayoutTemplate>
                                                    <table class="TableCSS table-bordered">
                                                        <tr class="TableHeader">
                                                            <td>Sr. No.</td>
                                                            <td>Registration No.</td>
                                                            <td>Student Name</td>
                                                            <td>Father Name</td>
                                                            <td>Admission date</td>
                                                            <td>Year/Sesion</td>
                                                            <td>Last Payement(Rs.)</td>
                                                            <td>Last Payment date</td>
                                                            <td>Pay Fees</td>
                                                            <td>Payment Details</td>
                                                        </tr>

                                                         <tbody>
                                                            <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                                        </tbody>
                                                       
                                                        
                                                    </table>
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <tr class="ItemCSS table-bordered">
                                                        <td style="text-align: center"><%# Eval("FID") %></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%# Eval("St_RegName")%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td style="text-align: center">
                                                            <asp:Button ID="btnRegFee" runat="server" Height="25px" Width="50px" class="btn btn-primary btn-sm" Text="Pay " />
                                                        </td>
                                                        <td style="text-align: center">
                                                            <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="../images/view-details.png" ToolTip="Payment Details" Width="25px" Height="25px" CssClass="imagebtn" CommandName="Select" />
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr class="AlternatingItemCSS  table-bordered">
                                                        <td style="text-align: center"><%# Eval("FID") %></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%# Eval("St_RegName")%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td style="text-align: center">
                                                            <asp:Button ID="btnRegFee" runat="server" Height="25px" Width="50px" class="btn btn-primary btn-sm" Text="Pay " />
                                                        </td>
                                                        <td style="text-align: center">
                                                            <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="../images/view-details.png" ToolTip="Payment Details" Width="25px" Height="25px" CssClass="imagebtn" CommandName="Select" />
                                                        </td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                                <SelectedItemTemplate>
                                                    <tr class="SelectedItemCSS table-bordered">
                                                        <td style="text-align: center"><%# Eval("FID") %></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%# Eval("St_RegName")%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td><%--<%# Eval("FYear")%>--%></td>
                                                        <td style="text-align: center">
                                                            <asp:Button ID="btnRegFee" runat="server" Height="25px" Width="50px" class="btn btn-primary btn-sm" Text="Pay " />
                                                        </td>
                                                        <td style="text-align: center">
                                                            <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="../images/view-details.png" ToolTip="Payment Details" Width="25px" Height="25px" CssClass="imagebtn" CommandName="Select" />
                                                        </td>
                                                    </tr>
                                                </SelectedItemTemplate>
                                            </asp:ListView>
                                            <%--The above ListView will render--%>
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
