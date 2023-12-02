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
                        <li class="active"><a>Add Class Master</a></li>
                    </ol>
                    <div class="container-fluid">
                        <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                            <div class="panel-heading">
                                <h2>Add Class Master</h2>
                            </div>
                            <div class="panel-editbox" data-widget-controls=""></div>
                            <div class="col-lg-12">
                                <div class="form-group col-lg-2">
                                    <lebal for="dept" class="reqinput">Fin. Year:</lebal>
                                    <asp:DropDownList ID="ddlFyear" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%">
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-lg-4">
                                    <lebal id="Td2" class="reqinput">Class:</lebal>
                                    <asp:TextBox ID="txtaddclass" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 100%" require=""></asp:TextBox>                             
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
                                    <asp:TextBox ID="txtamount" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="0" size="40" required=""></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-5">
                                    <lebal id="Td3" class="reqinput">Description:</lebal>
                                    <asp:TextBox ID="txtdescription" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Description." size="40" required=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group col-lg-6">
                                    <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-danger btnWidth" OnClick="txtsave_Click" />
                                    <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                </div>
                            </div>
                            <br />
                        </div>
                        <div>
                        </div>
                    </div>
                </div>

                <!-- /.row -->
                <div class="container-fluid">
                    <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                        <div class="panel-heading">
                            <h2>Class Details</h2>
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
                                    <asp:ListView ID="ListView1" runat="server">
                                        <LayoutTemplate>
                                            <table class="TableCSS table-bordered">
                                                <tr class="TableHeader">
                                                    <td runat="server" style="width: 5%;">Edit</td>
                                                    <td runat="server" style="width: 5%;">Delete</td>
                                                    <td runat="server" style="width: 5%;">Sr. No.</td>
                                                    <td runat="server" style="width: 40%;">Name</td>
                                                      <td runat="server">Year/Semis</td>
                                                    <%--<td runat="server">Discription</td>    --%>                                               
                                                    <td runat="server">Charges(Rs.)</td>
                                                     <td runat="server">Fin. Year</td>
                                                  

                                                </tr>
                                                <tbody>
                                                    <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                                </tbody>
                                            </table>
                                        </LayoutTemplate>
                                        <ItemTemplate>
                                            <tr class="TableData">
                                                <td>
                                                    <a href='writereaddata/<%# Eval("cl_Id") %>' target="_blank">
                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/img/edit.png" Height="25px" Width="29px" />
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href='writereaddata/<%# Eval("cl_Id") %>' target="_blank">
                                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/img/delete.jpg" Height="25px" Width="29px" />
                                                    </a>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("cl_Id")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Class")%>'>   
                                                    </asp:Label>
                                                </td>
                                                 <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ClassYear")%>'>   
                                                    </asp:Label>
                                                </td>
                                              <%--  <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("ClassDicription")%>'>   
                                                    </asp:Label>
                                                </td> --%>                                             
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ClassAmount")%>'>   
                                                    </asp:Label> .00
                                                </td>
                                                  <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("FYear")%>'>   
                                                    </asp:Label>
                                                </td>                                               

                                            </tr>
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <tr class="TableData" style="background-color: #dadada;">
                                                <td>
                                                    <a href='writereaddata/<%# Eval("cl_Id") %>' target="_blank">
                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/img/edit.png" Height="25px" Width="29px" />
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href='writereaddata/<%# Eval("cl_Id") %>' target="_blank">
                                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/img/delete.jpg" Height="25px" Width="29px" />
                                                    </a>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("cl_Id")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Class")%>'>   
                                                    </asp:Label>
                                                </td>
                                                 <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("ClassYear")%>'>   
                                                    </asp:Label>
                                                </td>
                                               <%-- <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("ClassDicription")%>'>   
                                                    </asp:Label>
                                                </td>--%>                                               
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ClassAmount")%>'>   
                                                    </asp:Label> .00
                                                </td>
                                                 <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("FYear")%>'>   
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
        </div>
    </div>

</asp:Content>
