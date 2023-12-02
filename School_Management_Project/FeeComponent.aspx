<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="FeeComponent.aspx.cs" Inherits="School_Management_Project.FeeSubmissionComponent" %>

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
                <div class="page-content">
                    <ol class="breadcrumb">
                        <li><a href="Dashboard.aspx">Dashboard</a></li>
                        <li class="active"><a>Component Fee</a></li>
                    </ol>
                    <div class="container-fluid">
                        <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                            <div class="panel-heading">
                                <h2>Component Fee Master</h2>
                            </div>
                            <div class="panel-editbox" data-widget-controls=""></div>
                            <div class="col-lg-12">
                                <div class="form-group col-lg-2">
                                    <lebal for="dept" class="reqinput">Fin. Year:</lebal>
                                    <asp:DropDownList ID="ddlFyear" runat="server" TabIndex="1" class="form-control inlineDisplay" Style="width: 100%">
                                     <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="2022-2023" Value="2022-2023"></asp:ListItem>
                                        <asp:ListItem Text="2023-2024" Value="2023-2024"></asp:ListItem>
                                        <asp:ListItem Text="2024-2025" Value="2024-2025"></asp:ListItem>
                                        <asp:ListItem Text="2025-2026" Value="2025-2026"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-lg-4">
                                    <lebal for="dept" style="padding-bottom: 45px">Component Name:</lebal>
                                    <asp:TextBox ID="txtCompName" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Component Name" size="40" ></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-3">
                                    <lebal id="Td2" class="reqinput">Fee Type:</lebal>
                                    <asp:DropDownList ID="ddlFeeMode" runat="server" TabIndex="1" class="form-control inlineDisplay" sStyle="width: 100%">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Monthly" Value="Monthly"></asp:ListItem>
                                        <asp:ListItem Text="Once" Value="Once"></asp:ListItem>
                                        <asp:ListItem Text="Registration" Value="Registration"></asp:ListItem>
                                        <asp:ListItem Text="Anually" Value="Anually"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-lg-3">
                                    <lebal id="Td1" style="padding-bottom: 45px">Component Amount:</lebal>
                                    <asp:TextBox ID="txtamount" runat="server" TabIndex="3" class="form-control inlineDisplay" size="40" placeholder="Please Enter Amount" required=""></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-5">
                                    <lebal id="Td3" class="reqinput">Description:</lebal>
                                    <asp:TextBox ID="txtdescription" runat="server" TabIndex="1" class="form-control inlineDisplay " placeholder="Description." size="40" required=""></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-4">
                                </div>
                                <div class="form-group col-lg-3">
                                    <lebal for="dept" class="reqinput"></lebal>
                                    <asp:Button ID="Button1" runat="server" Text="Create New FinYear Fee Items" TabIndex="19" class="btn btn-primary btnWidth" Style="width: 100%" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group col-lg-6">
                                    <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-danger btnWidth" OnClick="Button1_Click" />
                                    <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                </div>
                            </div>
                            <br />
                        </div>
                        <div>
                        </div>
                    </div>
                </div>


                <!-- ListView/.row -->
                <div class="container-fluid">
                    <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                        <div class="panel-heading">
                            <h2>Component Details</h2>
                            <div class=" col-md-3" style="float: right">
                                <%-- <label for="name">Search:</label>--%>
                                <input name="ctl00$ContentPlaceHolder1$tbSearch" type="text" id="Text1" tabindex="32" class="form-control inlineDisplay" placeholder="Search" style="width: 180px;">
                                <input type="image" name="ImageButton1" id="Image2" tabindex="33" class="imagebtn" formnovalidate="" src="../Img/search.png" style="height: 30px; width: 30px; position: relative; top: 7px">
                            </div>
                            <div class="panel-heading">
                            </div>
                        </div>
                        <div class="panel-editbox" data-widget-controls=""></div>
                        <div class="panel-body">
                            <div style="height: 230px; overflow: auto">
                                <table style="background-color: white" >
                                    <asp:ListView ID="ListView1" runat="server" OnItemDeleting="ListView1_ItemDeleting" OnItemCommand="ListView1_ItemCommand">
                                        <LayoutTemplate>
                                            <table class="TableCSS table-bordered" >
                                                <tr class="TableHeader">
                                                    <td>Edit</td>
                                                    <td>Delete</td>
                                                     <td>Sr.No</td>
                                                    <td>Component Name</td>
                                                    <td>Amount/Fee</td>
                                                    <td>Fees Type/Semi</td>
                                                    <td>Finance Year</td>
                                                    <td>Discription</td>
                                                </tr>
                                                <tbody>
                                                    <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                                </tbody>
                                            </table>
                                        </LayoutTemplate>
                                        <ItemTemplate>
                                            <tr class="TableData">
                                                <td>                                                    
                                                    <a id="lnkbtnedit" <%# Eval("FEE_ID") %>' target="_blank">
                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                    </a>
                                                </td>
                                                <td>
                                                 <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return deleteConfirm();" />
                                                </td>
                                                <td>
                                                     <%# Container.DataItemIndex + 1%>
                                                       <asp:HiddenField ID="hfEmployeeID" runat="server" Value='<%#Eval("FEE_ID") %>' />
                                                  </td>
                                              
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CLASS_COMP")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("FEE_AMOUNT")%>'>   
                                                    </asp:Label>.00
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("FEES_TYPE")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("FYEAR")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("DISCRIPTIONS")%>'>   
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <tr class="TableData" style="background-color: #dadada;">
                                               <td>
                                                    <a href='Writereaddata/<%# Eval("FEE_ID") %>' target="_blank">
                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                    </a>
                                                </td>
                                            
                                               <td>
                                                  <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return deleteConfirm();" />
                                              </td>
                                               <td>
                                                <%# Container.DataItemIndex + 1%>
                                                   <asp:HiddenField ID="hfEmployeeID" runat="server" Value='<%#Eval("FEE_ID") %>' />
                                                     </td>
                                              
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CLASS_COMP")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("FEE_AMOUNT")%>'>   
                                                    </asp:Label>.00
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("FEES_TYPE")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("FYEAR")%>'>   
                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("DISCRIPTIONS")%>'>   
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
