<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="School_Management_Project.AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
        <div id="layout-static">
            <div class="static-content-wrapper">
                <%-- <div class="static-content">--%>
                <div class="page-content">
                    <ol class="breadcrumb">
                        <li><a href="Dashboard.aspx">Dashboard</a></li>
                        <li class="active"><a>Add Class Form</a></li>
                    </ol>
                    <div class="container-fluid">
                        <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                            <div class="panel-heading">
                                <h2>Class Master</h2>
                            </div>
                            <div class="panel-editbox" data-widget-controls=""></div>
                            <div class="col-md-12">
                                <div class="form-group col-lg-2">
                                    <lebal for="dept" class="reqinput">Fin. Year:</lebal>
                                    <asp:DropDownList ID="ddlFyear" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="2020-2021" Value="2020-2021"></asp:ListItem>
                                        <asp:ListItem Text="2022-2023" Value="2022-2023"></asp:ListItem>
                                        <asp:ListItem Text="2023-2024" Value="2023-2024"></asp:ListItem>
                                        <asp:ListItem Text="2024-2025" Value="2024-2025"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-lg-4">
                                    <lebal id="Td2" class="reqinput">Class:</lebal>
                                    <asp:DropDownList ID="ddlclass" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Bachelors in Journalism & Mass Communication" Value="Bachelors in Journalism & Mass Communication"></asp:ListItem>
                                        <asp:ListItem Text="Master in Mass Communication" Value="Master in Mass Communication"></asp:ListItem>
                                        <asp:ListItem Text="Post Graduate Diploma in Broadcast Journalism" Value="Post Graduate Diploma in Broadcast Journalism"></asp:ListItem>
                                        <asp:ListItem Text="Post Graduate Diploma in Film Direction & Producion" Value="Post Graduate Diploma in Film Direction & Producion"></asp:ListItem>
                                        <asp:ListItem Text="Post Graduate Diploma in Public Relation and Event Management" Value="Post Graduate Diploma in Public Relation and Event Management"></asp:ListItem>
                                        <asp:ListItem Text="Post Graduate Diploma in Film Direction & Producion" Value="Post Graduate Diploma in Film Direction & Producion"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-lg-3">
                                    <lebal for="dept" class="reqinput">Year:</lebal>
                                    <asp:DropDownList ID="ddlyear" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="1 Year" Value="1 Year"></asp:ListItem>
                                        <asp:ListItem Text="2 Year" Value="2 Year"></asp:ListItem>
                                        <asp:ListItem Text="3 Year" Value="3 Year"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-lg-3">
                                    <lebal for="dept" class="reqinput">Amount:</lebal>
                                    <asp:TextBox ID="txtamount" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Add Class.." size="40" required=""></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-5">
                                    <lebal id="Td3" class="reqinput">Description:</lebal>
                                    <asp:TextBox ID="txtdescription" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Description." size="40" required=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group col-lg-1"></div>
                            <table>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-primary btnWidth" OnClick="txtsave_Click" />
                                        <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-danger btnWidth" formnovalidate="" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </div>
                        <div>
                        </div>
                    </div>
                </div>
                <%--   </div>--%>



                <!-- /.row -->

                <div class="container-fluid">
                    <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                        <div class="panel-heading">
                            <h2>Add Classes</h2>
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
                                        <div style="height: 200px; overflow: auto">
                                            <table style="background-color: white">
                                                <table class="TableCSS table-bordered">
                                                    <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" BorderWidth="1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical" CssClass="table ">
                                                        <RowStyle BorderWidth="1" BorderColor="black" />

                                                        <AlternatingRowStyle BackColor="whitesmoke" />
                                                        <PagerSettings Mode="numericfirstlast" PageButtonCount="5" />
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Edit">
                                                                <ItemTemplate>
                                                                    <a href='writereaddata/<%# Eval("cl_Id") %>' target="_blank">
                                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/img/edit.png" Height="25px" Width="29px" />
                                                                    </a>
                                                                </ItemTemplate>
                                                                <HeaderStyle Width="80px" />
                                                            </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="Delete">
                                                                <ItemTemplate>
                                                                    <a href='writereaddata/<%# Eval("cl_Id") %>' target="_blank">
                                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/img/delete.jpg" Height="25px" Width="29px" />
                                                                    </a>
                                                                </ItemTemplate>
                                                                <HeaderStyle Width="80px" />
                                                            </asp:TemplateField>

                                                            <asp:BoundField HeaderText="class" DataField="Class">
                                                                <HeaderStyle Width="300px" HorizontalAlign="center" VerticalAlign="middle" />
                                                                <ItemStyle VerticalAlign="top" Wrap="true" />
                                                            </asp:BoundField>

                                                            <asp:BoundField HeaderText="finanace year" DataField="FYear">
                                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="center" VerticalAlign="middle" />
                                                                <ItemStyle VerticalAlign="top" Wrap="true" />
                                                            </asp:BoundField>

                                                            <asp:BoundField HeaderText="fees/amount" DataField="ClassAmount">
                                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="center" VerticalAlign="middle" />
                                                                <ItemStyle VerticalAlign="top" Wrap="true" />
                                                            </asp:BoundField>

                                                            <asp:BoundField HeaderText="year" DataField="ClassYear">
                                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="center" VerticalAlign="middle" />
                                                                <ItemStyle VerticalAlign="top" Wrap="true" />
                                                            </asp:BoundField>

                                                            <asp:BoundField HeaderText="discription" DataField="ClassDicription">
                                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="center" VerticalAlign="middle" />
                                                                <ItemStyle VerticalAlign="top" Wrap="true" />
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

</asp:Content>
