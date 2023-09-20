﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="School_Management_Project.City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .cssPager td {
            padding-left: 3px;
            padding-right: 3px;
            font-family: Verdana;
            font-size: 12px;
        }

        #ContentPlaceHolder1_GV_Data tr td {
            text-align: left !important;
            text-transform: uppercase;
            padding: 0 10px 0 4px;
        }

        .gd-style tr td {
            text-align: left !important;
            text-transform: uppercase;
            padding: 0 10px 0 4px;
        }

        .txt-header {
            font-family: initial;
            text-transform: uppercase;
            font-size: small;
        }
    </style>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 1);
        window.onunload = function () { null };
    </script>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 1);
        window.onunload = function () { null };
    </script>


    <%-- <style type="text/css">
         .fixedHeader
         {
            overflow: auto;
            height: 150px;
         }
      </style>--%>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 1);
        window.onunload = function () { null };
    </script>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 1);
        window.onunload = function () { null };
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
        <div id="layout-static">
            <div class="static-content-wrapper">
                <div class="static-content">
                    <div class="page-content">
                        <ol class="breadcrumb">
                            <li><a href="Dashboard.aspx">Dashboard</a></li>
                            <li class="active"><a>City</a></li>
                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>City Master</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="col-lg-12">                                    
                                        <div class="box-body">
                                            <div class="col-lg-12">
                                                <div class="form-group col-lg-2">
                                                    <label for="dept">STATE NAME:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlState" runat="server" class="form-control inlineDisplay" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-4">
                                                    <label for="dept">CITY NAME:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtcity" runat="server" class="form-control  inlineDisplay" placeholder="ENTER CITY NAME.." size="40"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-1"></div>
                                            <table>
                                                <tr>                                                  
                                                    <td>
                                                        <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-primary btnWidth" OnClick="Button1_Click" />
                                                        <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-danger btnWidth" formnovalidate="" />
                                                    </td>
                                                </tr>
                                            </table>
                                              <br />
                                        </div>
                                    </div>
                                
                            </div>
                        </div>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>City Name</h2>
                                    <div class=" col-md-3" style="float: right">
                                         <label for="name">Search:</label>
                                        <input name="tbSearch" type="text" id="Text1" tabindex="32" class="form-control inlineDisplay" placeholder="Search" style="width: 180px;"/>
                                        <input type="image" name="ImageButton1" id="Image2" tabindex="33" class="imagebtn" formnovalidate="" src="../Img/search.png" style="height: 30px; width: 30px; position: relative; top: 7px"/>
                                    </div>

                                    <div class="panel-heading">
                                    </div>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="panel-body">
                                    <div class="form-horizontal row-border">
                                        <div class="widget-content no-padding">
                                            <section class="abt">
                                                <div style="height: 200px; overflow: auto;">
                                                    <table style="background-color: black">
                                                        <table class="TableCSS table-bordered">
                                                            <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" BorderWidth="1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical" CssClass="table ">
                                                                <RowStyle BorderWidth="1" BorderColor="Black" />
                                                                <AlternatingRowStyle BackColor="WhiteSmoke" />
                                                                <%-- <PagerSettings Mode="NumericFirstLast" PageButtonCount="5" />--%>
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Edit">
                                                                        <ItemTemplate>
                                                                            <a href='Writereaddata/<%# Eval("Cid") %>' target="_blank">
                                                                                <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                                            </a>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle Width="80px" />
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField HeaderText="Delete">
                                                                        <ItemTemplate>
                                                                            <a href='Writereaddata/<%# Eval("Cid") %>' target="_blank">
                                                                                <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/delete.jpg" Height="25px" Width="29px" />
                                                                            </a>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle Width="80px" />
                                                                    </asp:TemplateField>

                                                                    <asp:BoundField HeaderText="REF NO" DataField="Cid">
                                                                        <HeaderStyle Font-Size="12px" Width="150px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                    </asp:BoundField>

                                                                    <asp:BoundField HeaderText="State" DataField="State_Name">
                                                                        <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                    </asp:BoundField>

                                                                    <asp:BoundField HeaderText="City" DataField="City_Name">
                                                                        <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <ItemStyle VerticalAlign="Top" Wrap="True" />
                                                                    </asp:BoundField>
                                                                </Columns>

                                                            </asp:GridView>
                                                        </table>
                                                    </table>
                                                </div>
                                            </section>
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
