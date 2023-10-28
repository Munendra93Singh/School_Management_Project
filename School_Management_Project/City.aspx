<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="School_Management_Project.City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
       // Confirmation before delete operation.
       function deleteConfirm(sender) {
           var c = confirm("Are you sure?");
           if (c) { return true; } else { return false; }
       }
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
                                    <div class="box box-primary">
                                        <div class="box-header">
                                            <br>
                                        </div>
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
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group col-lg-6">
                                                <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-danger btnWidth" OnClick="Button1_Click" />
                                                <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid">
                                <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                    <div class="panel-heading">
                                        <h2>State Name</h2>
                                        <div class=" col-md-3" style="float: right">
                                            <%-- <label for="name">Search:</label>--%>
                                            <input name="ctl00$ContentPlaceHolder1$tbSearch" type="text" id="Text1" tabindex="32" class="form-control inlineDisplay" placeholder="Search" style="width: 180px;"/>
                                            <input type="image" name="ImageButton1" id="Image2" tabindex="33" class="imagebtn" formnovalidate="" src="../Img/search.png" style="height: 30px; width: 30px; position: relative; top: 7px"/>
                                        </div>
                                        <div class="panel-heading">
                                        </div>
                                    </div>
                                    <div class="panel-editbox" data-widget-controls=""></div>
                                    <div class="panel-body">
                                        <div style="height: 230px; overflow: auto">
                                            <table style="background-color: white">
                                                <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" OnItemEditing="ListView1_ItemEditing" OnItemDeleting="ListView1_ItemDeleting">
                                                    <LayoutTemplate>
                                                        <table class="TableCSS table-bordered">
                                                            <tr class="TableHeader">
                                                                <td>Edit</td>
                                                                <td>Delete</td>
                                                                <td>Sr.No</td>
                                                                <td>State</td>
                                                                <td>City</td>
                                                            </tr>
                                                            <tbody>
                                                                <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                                            </tbody>
                                                        </table>
                                                    </LayoutTemplate>
                                                    <ItemTemplate>
                                                        <tr class="TableData">
                                                            <td>
                                                                <a href='Writereaddata/<%# Eval("Cid") %>' target="_blank">
                                                                    <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return deleteConfirm();" />
                                                            </td>
                                                             <td>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="hfEmployeeID" runat="server" Value='<%#Eval("Cid") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label1"  runat="server" Text='<%# Eval("State_Name")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("City_Name")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <AlternatingItemTemplate>
                                                        <tr class="TableData" style="background-color: #dadada;">
                                                           <td>
                                                                <a href='Writereaddata/<%# Eval("Cid") %>' target="_blank">
                                                                    <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return deleteConfirm();" />
                                                            </td>
                                                             <td>
                                                                <%# Container.DataItemIndex + 1%>
                                                                <asp:HiddenField ID="hfEmployeeID" runat="server" Value='<%#Eval("Cid") %>' />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("State_Name")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("City_Name")%>'>   
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
            </div>
        </div>
    </div>
</asp:Content>
