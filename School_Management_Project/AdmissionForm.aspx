<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="AdmissionForm.aspx.cs" Inherits="School_Management_Project.AdmissionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    yearRange: '1950:2100',
                    maxDate: 5,

                });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $("[id*=txtAdmDate]").datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100',
                    minDate: 5,
                });
        });
    </script>
    <div id="wrapper">
        <div id="layout-static">
            <div class="static-content-wrapper">

                <div class="static-content">
                    <div class="page-content">
                        <ol class="breadcrumb">
                            <li><a href="Dashboard.aspx">Dashboard</a></li>
                            <li class="active"><a>Admission Form</a></li>
                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Admission Form</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="col-lg-12">
                                    <div class="box box-primary">
                                        <div class="box-header">
                                            <br>
                                        </div>
                                        <div class="box-body">
                                            <div class="form-group col-lg-9">
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Fill Ragistration Year</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlFinyear" runat="server" TabIndex="1" class="form-control inlineDisplay" required="" Style="width: 88%;">
                                                        <asp:ListItem Text="2021-2022" Value="2021-2022"></asp:ListItem>
                                                        <asp:ListItem Text="2021-2022" Value="2021-2022"></asp:ListItem>
                                                        <asp:ListItem Text="2022-2023" Value="2022-2023"></asp:ListItem>
                                                        <asp:ListItem Text="2023-2024" Value="2023-2024"></asp:ListItem>
                                                        <asp:ListItem Text="2024-2025" Value="2024-2025"></asp:ListItem>
                                                        <asp:ListItem Text="2025-2025" Value="2025-2025"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Ragistration Number:</label>
                                                    <asp:TextBox ID="txtRollnumber" runat="server" disabled="disbaled" class="form-control  inlineDisplay" placeholder="Roll Number" size="40" Style="background-color: #EEEEEE;">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-4">
                                                    <label for="dept">Status(Reg. Fees):</label>
                                                    <asp:TextBox ID="txtstatus" runat="server" class="form-control inlineDisplay " placeholder="Status" size="20" Style="background-color: #EEEEEE"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Roll. Num./University Num:</label>
                                                    <asp:TextBox ID="txtenrlonuber" runat="server" TabIndex="2" class="form-control  inlineDisplay" placeholder="Enrollment Num." size="40"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Mobile</label>
                                                    <asp:TextBox ID="txtmobile" runat="server" TabIndex="2" class="form-control  inlineDisplay" placeholder="Mobile Num." size="40"></asp:TextBox>
                                                </div>

                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Student Name:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtSname" runat="server" TabIndex="3" class="form-control  inlineDisplay" placeholder="Student Name" size="40" required="" Style="background-color: LightGrey"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Father Name:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtfathername" runat="server" TabIndex="4" class="form-control inlineDisplay " placeholder="Father Name" size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Mother Name:</label>
                                                    <asp:TextBox ID="txtmothername" runat="server" TabIndex="5" class="form-control inlineDisplay " placeholder="Mother Name" size="40"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-2">
                                                    <label for="dept">Gender:</label>
                                                    <asp:DropDownList ID="ddlgender" runat="server" TabIndex="6" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                        <asp:ListItem Text="Trasigender" Value="Trasigender"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                                <div class="form-group col-lg-3">
                                                    <label for="dept">DOB:</label>
                                                    <asp:TextBox ID="txtdob" runat="server" autocomplete="off" TabIndex="7" class="form-control inlineDisplay" placeholder="dd-mm-yyyy" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-4">
                                                    <label for="dept">Aadhar No.:</label>
                                                    <asp:TextBox ID="txtadharnumber" runat="server" TabIndex="8" class="form-control inlineDisplay" placeholder="Aadhar No." Style="width: 100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Religion:</label>
                                                    <asp:DropDownList ID="ddlreligion" runat="server" TabIndex="9" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Hindu" Value="Hindu"></asp:ListItem>
                                                        <asp:ListItem Text="Islam" Value="Islam"></asp:ListItem>
                                                        <asp:ListItem Text="Sikh" Value="Sikh"></asp:ListItem>
                                                        <asp:ListItem Text="Christian" Value="Christian"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Category:</label>
                                                    <asp:DropDownList ID="ddlCategory" runat="server" TabIndex="10" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="General" Value="General"></asp:ListItem>
                                                        <asp:ListItem Text="OBC" Value="OBC"></asp:ListItem>
                                                        <asp:ListItem Text="SC" Value="SC"></asp:ListItem>
                                                        <asp:ListItem Text="ST" Value="ST"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                                <div class="form-group col-lg-4">
                                                    <label for="dept">Admission Date:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtAdmDate" runat="server" autocomplete="off" TabIndex="11" class="form-control inlineDisplay" placeholder="dd-mm-yyyy" required="" Style="width: 100%;"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <label for="dept">Class:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddladdclas" runat="server" TabIndex="12" class="form-control inlineDisplay" Style="width: 100%;" OnSelectedIndexChanged="ddladdclas_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Gaurdian Occupation:</label>
                                                    <asp:DropDownList ID="ddloccupation" runat="server" TabIndex="13" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Selected" Value="Selected"></asp:ListItem>
                                                        <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                                                        <asp:ListItem Text="Job-Govt" Value="Job-Govt"></asp:ListItem>
                                                        <asp:ListItem Text="Job-Pvt" Value="Job-Pvt"></asp:ListItem>
                                                        <asp:ListItem Text="Farmer" Value="Farmer"></asp:ListItem>
                                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>

                                                <div class="form-group col-lg-4" hidden="hidden">
                                                    <label for="dept">Marital Status:</label>
                                                    <asp:DropDownList ID="txtmaritalstatus" runat="server" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                                                        <asp:ListItem Text="UnMarried" Value="UnMarried"></asp:ListItem>
                                                        <asp:ListItem Text="Divorced" Value="Divirced"></asp:ListItem>
                                                        <asp:ListItem Text="Widow/Widower" Value="Widow/Widower"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                            </div>
                                            <div class="form-group col-lg-3">
                                                <a style="font-family: Verdana; font-size: 7pt; color: #250a01; font-weight: 700; padding-top: 0px">Max. file size: 50KB 
                                                    <br>
                                                    Format .JPG/ .JPEG/ .GIF/ .PNG </a>
                                                <asp:Image ID="uploadimage" runat="server" Style="border-style: Solid; height: 150px; width: 170px;" />
                                                <asp:FileUpload ID="imgupload" runat="server" />
                                                <asp:Button ID="btn" runat="server" Text="Upload Image" class="form-group col-lg-6 btn btn-primary" formnovalidate="" OnClick="btn_Click" />

                                                <%--<asp:TextBox ID="txtimage" runat="server"></asp:TextBox>--%>
                                            </div>
                                            <div>
                                                <div class=" col-lg-12">
                                                    <div class="form-group col-lg-5">
                                                        <label for="dept">Address:</label><span class="reqinput"></span>
                                                        <asp:TextBox ID="txtaddress" runat="server" Rows="2" cols="20" TabIndex="14" class="form-control inlineDisplay" placeholder="Address" required="" Style="height: 100px; width: 100%"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-lg-2">
                                                        <label for="dept">State:</label><span class="reqinput"></span>
                                                        <asp:DropDownList ID="ddlstate" runat="server" TabIndex="14" class="form-control inlineDisplay" Style="width: 150px" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                    </div>

                                                    <div class="form-group col-lg-2">
                                                        <label for="dept">District:</label><span class="reqinput"></span>
                                                        <asp:DropDownList ID="ddlcity" runat="server" TabIndex="16" class="form-control inlineDisplay" AutoPostBack="true" AppendDataBoundItems="true"></asp:DropDownList>
                                                    </div>
                                                    <div class="form-group col-lg-3">
                                                        <label for="dept">Pin Code:</label>
                                                        <asp:TextBox ID="txtpincode" runat="server" TabIndex="17" class="form-control inlineDisplay" placeholder="Pin Code" Style="width: 80%;"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">                                              
                                                  <div class="form-group col-lg-3">
                                                    <label for="dept">Academic Year:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlclaasfees" runat="server" TabIndex="16" class="form-control inlineDisplay" AutoPostBack="true" AppendDataBoundItems="true"></asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Class Year/Class Type:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlclassyear" DataTextField="Year" runat="server" TabIndex="19" class="form-control inlineDisplay" Style="width: 200px;">
                                                    </asp:DropDownList>
                                                </div>                                              


                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Academic Fess Type:</label><span class="reqinput"></span>
                                                    <select name="AcademicFeestype" id="AcademicFeestype" tabindex="19" class="form-control inlineDisplay" style="width: 200px;">
                                                        <option selected="selected" value="">Select</option>
                                                        <option value="Full Payment">Full Payment</option>
                                                        <option value="Pending Payment">Pending Payment</option>
                                                    </select>
                                                </div>
                                                  <div class="form-group col-lg-3">
                                                    <label for="dept">Amount:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtamount" runat="server" TabIndex="14" class="form-control inlineDisplay" placeholder="Amount" required="" Style="width: 80%"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div>
                                    </div>
                                    <!-- /.box-body -->
                                    <div>
                                        <div class="form-group col-lg-3">
                                            <label for="dept"></label>
                                            <br>
                                            <asp:Button ID="btnsave" runat="server" Text="Save" TabIndex="31" class="btn btn-danger btnWidth" OnClick="btnsave_Click" />
                                            <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-primary btnWidth" formnovalidate="" />
                                        </div>
                                        <asp:Label ID="Label6" runat="server" Text="Label6"></asp:Label>
                                    </div>
                                    <!-- /. box -->

                                </div>
                            </div>
                        </div>
                        <!-- /.row -->


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
                                        <table style="background-color: white">
                                            <asp:ListView ID="ListView1" runat="server">
                                                <LayoutTemplate>
                                                    <table class="TableCSS table-bordered">
                                                        <tr class="TableHeader">
                                                            <td>Edit</td>
                                                            <td>Sr.No.</td>
                                                            <td>Ragistration No.</td>
                                                            <td>Student Name</td>
                                                            <td>Mobile</td>
                                                            <td>City</td>
                                                            <td>Admission Date</td>
                                                            <td>Study Center</td>
                                                            <td>Student Class</td>
                                                        </tr>
                                                        <tbody>
                                                            <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                                        </tbody>
                                                    </table>
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <tr class="TableDataback">
                                                        <td>
                                                            <a href='Writereaddata/<%# Eval("ADM_ID") %>' target="_blank">
                                                                <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("ADM_ID")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ragnumber")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Studntname")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <%-- <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mobile")%>'>   
                                                                </asp:Label>--%>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("city")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Admissiondate")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <%-- <asp:Label ID="Label3" runat="server" Text='<%# Eval("StudyCenter")%>'>   
                                                                </asp:Label>--%>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Class")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr class="TableData">
                                                        <td>
                                                            <a href='Writereaddata/<%# Eval("ADM_ID") %>' target="_blank">
                                                                <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("ADM_ID")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ragnumber")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Studntname")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <%-- <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mobile")%>'>   
                                                                </asp:Label>--%>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("city")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Admissiondate")%>'>   
                                                            </asp:Label>
                                                        </td>
                                                        <td>
                                                            <%-- <asp:Label ID="Label3" runat="server" Text='<%# Eval("StudyCenter")%>'>   
                                                                </asp:Label>--%>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Class")%>'>   
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

