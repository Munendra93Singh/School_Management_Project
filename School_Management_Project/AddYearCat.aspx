<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="AddYearCat.aspx.cs" Inherits="School_Management_Project.AddYearCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
        <div id="layout-static">
            <div class="static-content-wrapper">

                <div class="page-content">
                    <ol class="breadcrumb">
                        <li><a href="Dashboard.aspx">Dashboard</a></li>
                        <li class="active"><a>Add Class Year/Sem</a></li>
                    </ol>
                    <div class="container-fluid">
                        <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                            <div class="panel-heading">
                                <h2>Sem Master</h2>
                            </div>
                            <div class="panel-editbox" data-widget-controls=""></div>
                            <div class="col-lg-12">
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
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-lg-3">
                                    <lebal for="dept" class="reqinput">Year:</lebal>
                                    <asp:TextBox ID="txtyear" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                    </asp:TextBox>
                                </div>



                                <div class="form-group col-lg-5">
                                    <lebal id="Td3" class="reqinput">Description:</lebal>
                                    <asp:TextBox ID="txtdescription" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Description." size="40" required=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group col-lg-6">
                                    <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-danger btnWidth" OnClick="btnsave_Click" />
                                    <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                </div>
                            </div>
                            <br />
                        </div>
                        <div>
                        </div>
                    </div>

                    <div class="container-fluid">
                        <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                            <div class="panel-heading">
                                <h2>State Name</h2>
                                <div class=" col-md-3" style="float: right">
                                    <%-- <label for="name">Search:</label>--%>
                                    <input name="ctl00$ContentPlaceHolder1$tbSearch" type="text" id="Text1" tabindex="32" class="form-control inlineDisplay" placeholder="Search" style="width: 180px;" />
                                    <input type="image" name="ImageButton1" id="Image2" tabindex="33" class="imagebtn" formnovalidate="" src="../Img/search.png" style="height: 30px; width: 30px; position: relative; top: 7px" />
                                </div>
                                <div class="panel-heading">
                                </div>
                            </div>
                            <div class="panel-editbox" data-widget-controls=""></div>
                            <div class="panel-body">
                                <div style="height: 230px; overflow: auto">
                                    <table style="background-color: white">
                                        <asp:ListView ID="ListView" runat="server">
                                            <LayoutTemplate>
                                                <table class="TableCSS table-bordered">
                                                    <tr class="TableHeader">
                                                        <td>Edit</td>
                                                        <td>Delete</td>
                                                        <td>Fin Year</td>
                                                        <td>Select Class</td>
                                                        <td>Select Year/Sem</td>
                                                        <td>Class Descript</td>
                                                    </tr>
                                                    <tbody>
                                                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                                    </tbody>
                                                </table>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <tr class="TableData">
                                                    <td>
                                                        <a href='Writereaddata/<%# Eval("Cl_id") %>' target="_blank">
                                                            <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href='Writereaddata/<%# Eval("Cl_id") %>' target="_blank">
                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Img/delete.jpg" Height="25px" Width="29px" />
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Fin_Year")%>'>   
                                                        </asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Class")%>'>   
                                                        </asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Class_year")%>'> 
                                                        </asp:Label> -Year
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Class_Description")%>'>   
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <AlternatingItemTemplate>
                                                <tr class="TableData" style="background-color: #dadada;">
                                                    <td>
                                                        <a href='Writereaddata/<%# Eval("Cl_id") %>' target="_blank">
                                                            <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href='Writereaddata/<%# Eval("Cl_id") %>' target="_blank">
                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Img/delete.jpg" Height="25px" Width="29px" />
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Fin_Year")%>'>   
                                                        </asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Class")%>'>   
                                                        </asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Class_year")%>'>   
                                                        </asp:Label> -Year
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Class_Description")%>'>   
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                            </AlternatingItemTemplate>
                                        </asp:ListView>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.row -->


            </div>
        </div>
    </div>

</asp:Content>
