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
                    yearRange: '1950:2100'
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
                    yearRange: '1950:2100'
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
                                                    <label for="dept">Fill Ragistration</label><span class="reqinput"></span>
                                                    <%--<asp:TextBox ID="txtRegistration" runat="server" TabIndex="1" placeholder="Registration Number" class="form-control inlineDisplay" required="" Style="width: 88%"></asp:TextBox>--%>
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
                                                    <asp:TextBox ID="txtRollnumber" runat="server" disabled="disbaled" class="form-control  inlineDisplay" placeholder="Roll Number" size="40" Style="background-color: #EEEEEE;"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-4">
                                                    <label for="dept">St. Status:</label>
                                                    <asp:TextBox ID="txtstatus" runat="server" class="form-control inlineDisplay " placeholder="Status" size="20" Style="background-color: #EEEEEE"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Roll. Num.:</label>
                                                    <asp:TextBox ID="txtenrlonuber" runat="server" TabIndex="2" class="form-control  inlineDisplay" placeholder="Enrollment Num." size="40"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-5">
                                                    <label for="dept">Mobile</label>
                                                    <asp:TextBox ID="txtmobile" runat="server" TabIndex="2" class="form-control  inlineDisplay" placeholder="SR. Num." size="40"></asp:TextBox>
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
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Class:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddladdclas" runat="server" TabIndex="12" class="form-control inlineDisplay" required="" Style="width: 100%;"></asp:DropDownList>

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
                                                        <asp:DropDownList ID="ddlstate" runat="server" TabIndex="14" class="form-control inlineDisplay" required="" Style="width: 150px"></asp:DropDownList>
                                                    </div>
                                                    <div class="form-group col-lg-2">
                                                        <label for="dept">District:</label><span class="reqinput"></span>
                                                        <asp:DropDownList ID="ddlcity" runat="server" TabIndex="16" class="form-control inlineDisplay" required="" Style="width: 150px"></asp:DropDownList>
                                                    </div>
                                                    <div class="form-group col-lg-3">
                                                        <label for="dept">Pin Code:</label>
                                                        <asp:TextBox ID="txtpincode" runat="server" TabIndex="17" class="form-control inlineDisplay" placeholder="Pin Code" Style="width: 80%;"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--<div class="form-group col-lg-12">
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Study Center:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlcolage" runat="server" TabIndex="21" class="form-control inlineDisplay" Style="width: 200px">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="Arya College of Pharmacy" Value="Arya College of Pharmacy"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Class/Year:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlclassyear" runat="server" TabIndex="19" class="form-control inlineDisplay" Style="width: 200px;">
                                                    </asp:DropDownList>
                                                    <%--<select name="ctl00$ContentPlaceHolder1$ddlClassYear" id="ContentPlaceHolder1_ddlClassYear" tabindex="19" class="form-control inlineDisplay" style="width: 200px;">
                                                    <option selected="selected" value="">Select</option>
                                                    <option value="Ist Year">Ist Year</option>
                                                    <option value="IInd Year">IInd Year</option>
                                                </select>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Academic Year:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlAyear" runat="server" TabIndex="21" class="form-control inlineDisplay" Style="width: 200px"></asp:DropDownList>
                                                    <%--                                                <select name="ctl00$ContentPlaceHolder1$ddlAcademicYear" id="ContentPlaceHolder1_ddlAcademicYear" tabindex="21" class="form-control inlineDisplay" style="width: 200px;">
                                                    <option value="0">None</option>
                                                    <option value="">Select</option>
                                                    <option value="2000">2000</option>
                                                    <option value="2001">2001</option>
                                                    <option value="2002">2002</option>
                                                    <option value="2003">2003</option>
                                                    <option value="2004">2004</option>
                                                    <option value="2005">2005</option>
                                                    <option value="2006">2006</option>
                                                    <option value="2007">2007</option>
                                                    <option value="2008">2008</option>
                                                    <option value="2009">2009</option>
                                                    <option value="2010">2010</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                    <option value="2020">2020</option>
                                                    <option value="2021">2021</option>
                                                    <option value="2022">2022</option>
                                                    <option value="2023">2023</option>
                                                    <option value="2024">2024</option>
                                                    <option value="2025">2025</option>
                                              </select>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Month:</label><span class="reqinput"></span>
                                                    <asp:DropDownList ID="ddlmonth" runat="server" TabIndex="22" class="form-control inlineDisplay" Style="width: 180px">
                                                        <asp:ListItem Text="None" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="March" Value="3"></asp:ListItem>
                                                        <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                                        <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                                        <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                                        <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                                        <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                                        <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                                        <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                                        <asp:ListItem Text="November" Value="11"></asp:ListItem>
                                                        <asp:ListItem Text="December" Value="12"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                            </div>--%>
                                        </div>
                                        <%--<div>
                                                <div class="form-group col-lg-12">
                                                    <div class="form-group col-lg-2">
                                                        <label for="dept">Transport Required:</label>
                                                        <table id="ContentPlaceHolder1_rbTPReq" class="RBL">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbTPReq_0" type="radio" name="ctl00$ContentPlaceHolder1$rbTPReq" value="Yes" onclick="javascript: setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$rbTPReq$0\',\'\')', 0)" tabindex="19"><label for="ContentPlaceHolder1_rbTPReq_0">Yes</label></td>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbTPReq_1" type="radio" name="ctl00$ContentPlaceHolder1$rbTPReq" value="No" checked="checked" tabindex="19"><label for="ContentPlaceHolder1_rbTPReq_1">No</label></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>

                                                    <div class="form-group col-lg-2">
                                                        <label for="dept">Hostel Required:</label>
                                                        <table id="ContentPlaceHolder1_rbHostelReq" class="RBL">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbHostelReq_0" type="radio" name="ctl00$ContentPlaceHolder1$rbHostelReq" value="Yes" onclick="javascript: setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$rbHostelReq$0\',\'\')', 0)" tabindex="21"><label for="ContentPlaceHolder1_rbHostelReq_0">Yes</label></td>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbHostelReq_1" type="radio" name="ctl00$ContentPlaceHolder1$rbHostelReq" value="No" checked="checked" tabindex="21"><label for="ContentPlaceHolder1_rbHostelReq_1">No</label></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>

                                                    <div class="form-group col-lg-2">
                                                        <label for="dept">Mess Required:</label>
                                                        <table id="ContentPlaceHolder1_rbMessReq" class="RBL">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbMessReq_0" type="radio" name="ctl00$ContentPlaceHolder1$rbMessReq" value="Yes" onclick="javascript: setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$rbMessReq$0\',\'\')', 0)" tabindex="23"><label for="ContentPlaceHolder1_rbMessReq_0">Yes</label></td>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbMessReq_1" type="radio" name="ctl00$ContentPlaceHolder1$rbMessReq" value="No" checked="checked" tabindex="23"><label for="ContentPlaceHolder1_rbMessReq_1">No</label></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>

                                                </div>
                                            </div>--%>
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
                                          <%--  <asp:Label ID="Label6" runat="server" Text="Label6"></asp:Label>--%>
                                        </div>
                                        <!-- /. box -->

                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->
                            <div class="container-fluid">
                                <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                    <div class="panel-heading">
                                        <h2>Enquery Form Details</h2>
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
                                                        <table style="background-color: white">
                                                            <table class="TableCSS table-bordered">
                                                                <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" BorderWidth="1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical" CssClass="table ">
                                                                    <RowStyle BorderWidth="1" BorderColor="Black" />
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Photo">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("imageupload","~/FIleImage/{0}") %>' Width="100px" Height="60px" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Ragistration No.">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Ragnumber") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Name">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Studntname") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Father Name">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("fathername") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <%--  <asp:TemplateField HeaderText="Gender">
                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                <ItemTemplate>
                                                                    <%#Eval("Gender") %>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>--%>

                                                                        <asp:TemplateField HeaderText="Gender">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Gender") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>


                                                                        <asp:TemplateField HeaderText="Status">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Mariedstatus") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Birth">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("DOB") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Class">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Class") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Address">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Address") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Occupation">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Groccupation") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Date">
                                                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                            <ItemTemplate>
                                                                                <%#Eval("Admissiondate") %>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

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
    </div>
</asp:Content>

