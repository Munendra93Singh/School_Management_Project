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
    <%--<script type="text/javascript">
        $(function () {
            $("[id*=txtdob]").datepicker({
                showOn: 'button',
                buttonImageOnly: true,
                buttonImage: 'images/calendar.png'
            });
        });
    </script>--%>
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
                                                    <%-- <table>
                                                        <tr><lebal for="dept">Confirmation-1</lebal>
                                                            <td><asp:RadioButtonList ID="rdbtn" runat="server" RepeatColumns="2">
                                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                                </asp:RadioButtonList></td>
                                                        </tr>
                                                    </table>
                                                    <table>
                                                         <tr><lebal for="dept">Confirmation-2</lebal>
                                                            <td><asp:RadioButtonList ID="rdbtn2" runat="server" RepeatColumns="2">
                                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                                </asp:RadioButtonList></td>
                                                        </tr>
                                                    </table>--%>
                                                    <table>
                                                        <tr>
                                                            <td></td>
                                                            <td>
                                                                <asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-primary btnWidth" OnClick="btnsave_Click" />
                                                                <%--<td><asp:Button ID="btnsave" runat="server" Text="Submit" TabIndex="19" class="btn btn-primary btnWidth"/>--%>
                                                                <asp:Button ID="btnCacel" runat="server" Text="Cancel" class="btn btn-danger btnWidth" formnovalidate="" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="form-group col-lg-6">

                                                    <label for="dept">Address:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtaddres" runat="server" Height="80px" Width="470px" TextMode="MultiLine"></asp:TextBox>
                                                    <%-- <textarea id="txtaddres" runat="server" rows="2" cols="20" tabindex="14" class="form-control inlineDisplay" placeholder="Address" required="" style="height: 100px; width: 100%"></textarea>
                                                    <textarea name="ctl00$ContentPlaceHolder1$txtAddress" rows="2" cols="20" id="ContentPlaceHolder1_txtAddress" tabindex="14" class="form-control inlineDisplay" placeholder="Address" required="" style="height: 100px; width: 100%;"></textarea>--%>
                                                </div>
                                                <div class="col-lg-12">
                                                    <label for="dept"></label>
                                                </div>
                                                <%--<div id="ContentPlaceHolder1_UpdatePanel2">
                                                    <div class="form-group col-lg-4" hidden="hidden">
                                                        <label for="dept">Registered in Govt. ITI?</label>
                                                        <table id="ContentPlaceHolder1_rbIsGovtReg" class="RBL">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbIsGovtReg_0" type="radio" name="ctl00$ContentPlaceHolder1$rbIsGovtReg" value="Yes" onclick="javascript: setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$rbIsGovtReg$0\',\'\')', 0)" tabindex="119"><label for="ContentPlaceHolder1_rbIsGovtReg_0">Yes</label></td>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbIsGovtReg_1" type="radio" name="ctl00$ContentPlaceHolder1$rbIsGovtReg" value="No" checked="checked" tabindex="119"><label for="ContentPlaceHolder1_rbIsGovtReg_1">No</label></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group col-lg-4" hidden="hidden">
                                                        <label for="dept">Getting Any Scholarship from Govt.?</label>
                                                        <table id="ContentPlaceHolder1_rbScholarship" class="RBL">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbScholarship_0" type="radio" name="ctl00$ContentPlaceHolder1$rbScholarship" value="Yes" onclick="javascript: setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$rbScholarship$0\',\'\')', 0)" tabindex="120"><label for="ContentPlaceHolder1_rbScholarship_0">Yes</label></td>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbScholarship_1" type="radio" name="ctl00$ContentPlaceHolder1$rbScholarship" value="No" checked="checked" tabindex="120"><label for="ContentPlaceHolder1_rbScholarship_1">No</label></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="form-group col-lg-4" hidden="hidden">
                                                        <label for="dept">Anyone known studied in this college:</label>
                                                        <table id="ContentPlaceHolder1_rbAlumni" class="RBL">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbAlumni_0" type="radio" name="ctl00$ContentPlaceHolder1$rbAlumni" value="Yes" onclick="javascript: setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$rbAlumni$0\',\'\')', 0)" tabindex="121"><label for="ContentPlaceHolder1_rbAlumni_0">Yes</label></td>
                                                                    <td>
                                                                        <input id="ContentPlaceHolder1_rbAlumni_1" type="radio" name="ctl00$ContentPlaceHolder1$rbAlumni" value="No" checked="checked" tabindex="121"><label for="ContentPlaceHolder1_rbAlumni_1">No</label></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div id="ContentPlaceHolder1_dvgvtRegNo" class="form-group col-lg-4" hidden="hidden">
                                                        <label for="dept">Govt ITI Registration No.:</label>
                                                        <input name="ctl00$ContentPlaceHolder1$txtGovtRegnum" type="text" readonly="readonly" id="ContentPlaceHolder1_txtGovtRegnum" tabindex="122" class="form-control inlineDisplay" placeholder="Govt. ITI Reg. Number" style="width: 100%;">
                                                    </div>
                                                    <div id="ContentPlaceHolder1_dvScholarshipDetail" class="form-group col-lg-4" hidden="hidden">
                                                        <label for="dept">Govt. Scholarship Details:</label>
                                                        <input name="ctl00$ContentPlaceHolder1$txtScholarship" type="text" readonly="readonly" id="ContentPlaceHolder1_txtScholarship" tabindex="123" class="form-control inlineDisplay" placeholder="Govt. Scholarship Details" style="width: 100%;">
                                                    </div>
                                                    <div id="ContentPlaceHolder1_Div1" class="form-group col-lg-4" hidden="hidden">
                                                        <label for="dept">Known Person Details:</label>
                                                        <input name="ctl00$ContentPlaceHolder1$txtAlumni" type="text" readonly="readonly" id="ContentPlaceHolder1_txtAlumni" tabindex="124" class="form-control inlineDisplay" placeholder="Known Person Details" style="width: 100%;">
                                                    </div>


                                                </div>--%>
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
                                        <h2>Enquery Form Details</h2>
                                    </div>
                                    <div class="panel-editbox" data-widget-controls=""></div>
                                    <div class="panel-body">
                                        <div class="form-horizontal row-border">
                                            <div class="widget-content no-padding">
                                                <div class="container">
                                                    <section class="abt">
                                                        <div style="width: 980px; height: 400px; overflow: auto;">
                                                            <table style="background-color: white">
                                                                <table class="TableCSS table-bordered">
                                                                    <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" BorderWidth="1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical" CssClass="table ">
                                                                        <RowStyle BorderWidth="1" BorderColor="Black" />
                                                                        <AlternatingRowStyle BackColor="White" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="Full Name">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("FullName") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Father Name">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("FatherName") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                           <%-- <asp:TemplateField HeaderText="DOB" hidden="hidden">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("Sdob") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>--%>

                                                                            <asp:TemplateField HeaderText="Mobile">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("Mobile") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Gender">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("Gender") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                          <%--  <asp:TemplateField HeaderText="Category" hidden="hidden">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                   <%-- <%#Eval("Category") %>--
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>--%>

                                                                            <asp:TemplateField HeaderText="Class">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("Class") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                           <%-- <asp:TemplateField HeaderText="Pin Code" hidden="hidden">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                  <%--  <%#Eval("PinCode") %>--
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>--%>

                                                                            <asp:TemplateField HeaderText="Email I'd">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("Email") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Qualification">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                   <%#Eval("Qualification") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Address">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <%#Eval("Address") %>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>


                                                                            <asp:TemplateField HeaderText="Edit">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="imgbtnEdit" runat="server" CommandName="Edit" ImageUrl="~/Img/icon-edit.png" />
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:LinkButton ID="imgbtnUpdate" runat="server" CommandName="Update" ImageUrl="~/Img/icon-update.png" />
                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Delete">
                                                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="true" Font-Size="Small" />
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="imgbtnEdit" runat="server" CommandName="Edit" ImageUrl="~/Img/Delete.png" />
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:LinkButton ID="imgbtnUpdate" runat="server" CommandName="Update" ImageUrl="~/Img/icon-Cancel.png" />
                                                                                </EditItemTemplate>
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
    </div>
</asp:Content>
