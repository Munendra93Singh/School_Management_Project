<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="EnqForm.aspx.cs" Inherits="School_Management_Project.EnqForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id*=txtdob]").datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
        });
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
                            <li class="active"><a>Student Enquery Form</a></li>
                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Enquery Form</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="col-lg-12">
                                    <div class="box box-primary">
                                        <div class="box-header">
                                            <br>
                                        </div>
                                        <div class="box-body">
                                            <div class="col-lg-12">
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Full Name:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtSfname" runat="server" TabIndex="1" class="form-control  inlineDisplay" placeholder="Student Full Name.." size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Father Name:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtfname" runat="server" TabIndex="2" class="form-control inlineDisplay " placeholder="Father Name.." size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-2">
                                                    <label for="dept">DOB:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtdob" runat="server" TabIndex="2" class="form-control inlineDisplay " placeholder="DD/MM/YYYY" size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Mobile:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtmobile" runat="server" TabIndex="2" class="form-control inlineDisplay " placeholder="Mobile.." size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Mobile Optional:</label>
                                                    <asp:TextBox ID="txtParentscontact" runat="server" TabIndex="2" class="form-control inlineDisplay " placeholder="Parents Contact No." size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Gender:</label>
                                                    <asp:DropDownList ID="ddlgender" runat="server" TabIndex="6" class="form-control inlineDisplay" Style="width: 100%;">
                                                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Category:</label>
                                                    <asp:DropDownList ID="ddlCategory" runat="server" TabIndex="7" class="form-control inlineDisplay" Style="width: 100%;">
                                                        <asp:ListItem Text="General" Value="General"></asp:ListItem>
                                                        <asp:ListItem Text="OBC" Value="OBC"></asp:ListItem>
                                                        <asp:ListItem Text="SC" Value="SC"></asp:ListItem>
                                                        <asp:ListItem Text="ST" Value="ST"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                            </div>

                                            <div class="col-lg-12">

                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Gaurdian Occupation:</label>
                                                    <asp:DropDownList ID="ddlOccupation" runat="server" TabIndex="8" class="form-control inlineDisplay" Style="width: 100%;">
                                                        <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                                                        <asp:ListItem Text="Job-Govt" Value="Job-Govt"></asp:ListItem>
                                                        <asp:ListItem Text="Job-Pvt" Value="Job-Pvt"></asp:ListItem>
                                                        <asp:ListItem Text="Formar" Value="Formar"></asp:ListItem>
                                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Marital Status:</label>
                                                    <asp:DropDownList ID="ddlMaritalStatus" runat="server" TabIndex="9" class="form-control inlineDisplay" Style="width: 100%;">
                                                        <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                                                        <asp:ListItem Text="UnMarried" Value="UnMarried"></asp:ListItem>
                                                        <asp:ListItem Text="Divorced" Value="Divorced"></asp:ListItem>
                                                        <asp:ListItem Text="Widow/Widower" Value="Widow/Widower"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Education/Qualification</label>
                                                    <asp:DropDownList ID="ddlCourse" runat="server" TabIndex="10" class="form-control inlineDisplay" Style="width: 100%;">
                                                        <asp:ListItem Text="10th" Value="10th"></asp:ListItem>
                                                        <asp:ListItem Text="12th" Value="12th"></asp:ListItem>
                                                        <asp:ListItem Text="Post Graduation" Value="Post Graduation"></asp:ListItem>
                                                        <asp:ListItem Text="Other Graduation" Value="Other Graduation"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                                <div>
                                                    <div class="form-group col-lg-3">
                                                        <label for="dept">State:</label>
                                                        <%-- <span class="reqinput"></span>--%>
                                                        <asp:DropDownList ID="ddlState" runat="server" TabIndex="11" class="form-control inlineDisplay" Style="width: 100%;"></asp:DropDownList>

                                                    </div>
                                                    <div class="form-group col-lg-3">
                                                        <label for="dept">District:</label>
                                                        <%--<span class="reqinput"></span>--%>
                                                        <asp:DropDownList ID="ddlcity" runat="server" TabIndex="12" class="form-control inlineDisplay" Style="width: 100%;"></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">E-Mail:</label>
                                                    <asp:TextBox ID="txtemail" runat="server" TabIndex="16" class="form-control inlineDisplay" placeholder="E-Mail" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3" hidden="hidden">
                                                    <label for="dept">Highest Qualification:</label>
                                                    <asp:TextBox ID="txtqualification" runat="server" TabIndex="17" class="form-control inlineDisplay" placeholder="Qualification" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Referred By:</label>
                                                    <asp:DropDownList ID="ddlrefered" runat="server" TabIndex="10" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Pin Code:</label>
                                                    <asp:TextBox ID="txtPin" runat="server" TabIndex="15" class="form-control inlineDisplay" placeholder="Pin Code" required="" Style="width: 100%"></asp:TextBox>
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-danger btnWidth" OnClick="btnsave_Click" />
                                                    <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <label for="dept">Address:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtaddres" runat="server" Height="80px" Width="470px" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                                <div class="col-lg-12">
                                                    <label for="dept"></label>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                            <div id="ContentPlaceHolder1_lv" style="color: black">
                                                <label for="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <div id="ContentPlaceHolder1_Panel2" style="border-color: #990000; border-style: None; overflow-x: scroll; width: 98%; padding-left: 30px;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->
                            <div class="container-fluid">
                                <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                    <div class="panel-heading">
                                        <h2>Component Details</h2>
                                        <div class=" col-md-3" style="float: right">
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
                                                                <td>Edit</td>
                                                                <td>Delete</td>
                                                                <td>Full Name</td>
                                                                <td>Father Name</td>
                                                                <td>DOB</td>
                                                                <td>Mobile</td>
                                                                <td>Gender</td>
                                                                <td>Class</td>
                                                                <td>Email I'd</td>
                                                                <td>Qualification</td>
                                                                <td>Address</td>
                                                            </tr>
                                                            <tbody>
                                                                <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                                            </tbody>
                                                        </table>
                                                    </LayoutTemplate>
                                                    <ItemTemplate>
                                                        <tr class="TableData">
                                                            <td>
                                                                <a href='Writereaddata/<%# Eval("ENQ_ID") %>' target="_blank">
                                                                    <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <a href='Writereaddata/<%# Eval("ENQ_ID") %>' target="_blank">
                                                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/delete.jpg" Height="25px" Width="29px" />
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FullName")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("FatherName")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Sdob")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mobile")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender")%>'>   
                                                                </asp:Label>
                                                            </td>

                                                            <td>
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Class")%>'>   
                                                                </asp:Label>
                                                            </td>

                                                            <td>
                                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Email")%>'>   
                                                                </asp:Label>
                                                            </td>

                                                            <td>
                                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Qualification")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Address")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <AlternatingItemTemplate>
                                                        <tr class="TableData" style="background-color: #dadada;">
                                                            <td>
                                                                <a href='Writereaddata/<%# Eval("ENQ_ID") %>' target="_blank">
                                                                    <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <a href='Writereaddata/<%# Eval("ENQ_ID") %>' target="_blank">
                                                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/delete.jpg" Height="25px" Width="29px" />
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FullName")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("FatherName")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Sdob")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mobile")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender")%>'>   
                                                                </asp:Label>
                                                            </td>

                                                            <td>
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Class")%>'>   
                                                                </asp:Label>
                                                            </td>

                                                            <td>
                                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Email")%>'>   
                                                                </asp:Label>
                                                            </td>

                                                            <td>
                                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Qualification")%>'>   
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Address")%>'>   
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
