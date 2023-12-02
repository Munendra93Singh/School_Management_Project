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
                                                    <asp:DropDownList ID="ddlFyear" runat="server" TabIndex="1" class="form-control inlineDisplay" Style="width: 100%">                                                       
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-4">
                                                    <label for="dept">Class:</label>
                                                    <span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlclass" runat="server" TabIndex="9" class="form-control inlineDisplay" Style="width: 100%;" >
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Student Name/Reg. Name</label>
                                                    <asp:TextBox ID="txtRegName" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Enter Name/Reg." size="40" ></asp:TextBox>
                                                </div>
                                                <div>
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <asp:Button ID="btnsave" runat="server" Text="Search" TabIndex="31" class="btn btn-danger btnWidth" OnClick="btn1_Click" />
                                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                                </div>                                               
                                                <div class="col-lg-12">
                                                    <%--<label for="dept"></label>--%>
                                                   <%-- <asp:Label ID="lblmsg" runat="server" Visible="false"></asp:Label>--%>
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
                                    <asp:Label ID="lblmsg" runat="server" Visible="false"></asp:Label>
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
                                                             <td>Student Class</td>
                                                            <td>Year/Sesion</td>
                                                            <td>Last Payement(Rs.)</td>
                                                            <%--<td>Last Payment date</td>--%>
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
                                                        <td style="text-align: center"><%# Eval("ADM_ID") %></td>
                                                       <td><%# Eval("Ragnumber")%></td>
                                                        <td><%# Eval("Studntname")%></td>
                                                        <td><%# Eval("fathername")%></td>
                                                        <td><%# Eval("Admissiondate")%></td>
                                                        <td><%# Eval("Class")%></td>
                                                        <td><%# Eval("classyear")%></td>
                                                        <td><%# Eval("ClassAmount")%></td>
                                                         <%-- <td><%# Eval("FYear")%></td>--%>
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
                                                        <td style="text-align: center"><%# Eval("ADM_ID") %></td>
                                                        <td><%# Eval("Ragnumber")%></td>
                                                        <td><%# Eval("Studntname")%></td>
                                                        <td><%# Eval("fathername")%></td>
                                                        <td><%# Eval("Admissiondate")%></td>
                                                         <td><%# Eval("Class")%></td>
                                                       <td><%# Eval("classyear")%></td>
                                                        <td><%# Eval("ClassAmount")%></td>
                                                       <%-- <td><%# Eval("FYear")%></td>--%>
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
                                                        <td style="text-align: center"><%# Eval("ADM_ID") %></td>
                                                        <td><%# Eval("Ragnumber")%></td>
                                                        <td><%# Eval("Studntname")%></td>
                                                        <td><%# Eval("fathername")%></td>
                                                        <td><%# Eval("Admissiondate")%></td>
                                                        <td><%# Eval("Class")%></td>
                                                        <td><%# Eval("classyear")%></td>
                                                        <td><%# Eval("ClassAmount")%></td>
                                                      <%-- <td><%# Eval("FYear")%></td>--%>
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
