<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="FeeSubmissionComponent.aspx.cs" Inherits="School_Management_Project.FeeSubmissionComponent" %>

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
                            <li class="active"><a>Component Fee</a></li>
                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Component Fee</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="col-md-12">
                                    <div class="form-group col-lg-3">
                                        <table>
                                            <tr>
                                                <lebal for="dept" class="reqinput">Fin. Year:</lebal>
                                                <td>
                                                    <asp:DropDownList ID="ddlFyear" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="2023-2024" Value="2020-2021"></asp:ListItem>
                                                        <asp:ListItem Text="2024-2025" Value="2022-2023"></asp:ListItem>
                                                        <asp:ListItem Text="2025-2026" Value="2023-2024"></asp:ListItem>
                                                        <asp:ListItem Text="2026-2027" Value="2024-2025"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <lebal id="Td2" class="reqinput">Fee Type:</lebal>
                                                <td>
                                                    <asp:DropDownList ID="ddlFeeMode" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="Monthly" Value="Monthly"></asp:ListItem>
                                                        <asp:ListItem Text="Once" Value="Once"></asp:ListItem>
                                                        <asp:ListItem Text="Registration" Value="Registration"></asp:ListItem>
                                                        <asp:ListItem Text="Anually" Value="Anually"></asp:ListItem>
                                                    </asp:DropDownList></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="form-group col-lg-3">
                                        <table>
                                            <tr>
                                                <lebal for="dept" style="padding-bottom: 45px">Component Name:</lebal>
                                                <td>
                                                    <asp:TextBox ID="txtCompName" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Component Name" size="40" required=""></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <lebal id="Td1" style="padding-bottom: 45px">Amount:</lebal>
                                                <td>
                                                    <asp:TextBox ID="txtamount" runat="server" TabIndex="3" class="form-control inlineDisplay" size="40" placeholder="Please Enter Amount" required=""></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-danger btnWidth" formnovalidate="" ONCLICK="Button1_Click" /></td>
                                                <br />
                                                <td>
                                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-success  btnWidth" formnovalidate="" Style="margin-left: 24px" /></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-lg-1"></div>
                                    <div class="col-md-5">
                                        <table>
                                            <tr>
                                                <lebal>Description:</lebal>
                                                <td>
                                                    <asp:TextBox ID="txtdescription" runat="server" TabIndex="4" Height="130px" Width="300px" TextMode="MultiLine" class="form-control inlineDisplay" placeholder="Description" size="40"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Collage Component Details</h2>
                                    <div class=" col-md-3" style="float: right">
                                        <%-- <label for="name">Search:</label>--%>
                                        <input name="ctl00$ContentPlaceHolder1$tbSearch" type="text" id="Text1" tabindex="32" class="form-control inlineDisplay" placeholder="Search" style="width: 180px;">
                                        <input type="image" name="ImageButton1" id="Image2" tabindex="33" class="imagebtn" formnovalidate="" src="../Img/search.png" style="height: 30px; width: 30px; position: relative; top: 7px">
                                    </div>
                                </div>
                                <div class="panel-heading">
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="panel-body">
                                    <div class="form-horizontal row-border">
                                        <div class="widget-content no-padding">
                                            <section class="abt">
                                                <div style="height: 200px; overflow: auto;">
                                                    <%--<table class="TableCSS table-bordered" style="background-color: white">
                                                        <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" BorderWidth="1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical" CssClass="table ">
                                                            <RowStyle BorderWidth="1" BorderColor="Black" />                                                           
                                                            <AlternatingRowStyle BackColor="WhiteSmoke" />
                                                             <PagerSettings Mode="NumericFirstLast" PageButtonCount="5" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Edit">
                                                                    <ItemTemplate>
                                                                        <a href='Writereaddata/<%# Eval("CF_id") %>' target="_blank">
                                                                            <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                                        </a>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="80px" />
                                                                </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Delete">
                                                                    <ItemTemplate>
                                                                        <a href='Writereaddata/<%# Eval("CF_id") %>' target="_blank">
                                                                            <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/delete.jpg" Height="25px" Width="29px" />
                                                                        </a>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="80px" />
                                                                </asp:TemplateField>

                                                                <asp:BoundField HeaderText="Component Name" DataField="CompoName">
                                                                    <HeaderStyle  Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                </asp:BoundField>

                                                                <asp:BoundField HeaderText="Amount" DataField="Camount">
                                                                    <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                </asp:BoundField>

                                                                <asp:BoundField HeaderText="Fee" DataField="feetype">
                                                                    <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                </asp:BoundField>

                                                                <asp:BoundField HeaderText="Finance Year" DataField="Fyear">
                                                                    <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                </asp:BoundField>


                                                                <asp:BoundField HeaderText="Discription" DataField="Discription">
                                                                    <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                </asp:BoundField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </table>--%>

                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--<div class="container-fluid">
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
                                                    <td>Fin. Year</td>

                                                    <td>Name</td>

                                                    <td>Fee Type</td>

                                                    <td>Amount</td>

                                                    <td>Description</td>

                                                    <td>Edit</td>

                                                </tr>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
