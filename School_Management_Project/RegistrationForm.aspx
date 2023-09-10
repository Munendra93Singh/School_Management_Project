<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="School_Management_Project.RegistrationStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("input[name='chk']").click(function () {
                if ($("#yes").is(":checked")) {
                    $("#txtamount").removeAttr("disabled");
                    $("#txtamount").focus();
                }
                else {
                    $("#txtamount").attr("disabled", "disabled");
                }
            });
        });
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
     <script type = "text/javascript">
         function functionx(evt) {
             if (evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
                 alert("Allow Only Numbers");
                 return false;
             }
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
                            <li class="active"><a>Registration Form</a></li>
                        </ol>
                        <div class="container-fluid">
                            <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                                <div class="panel-heading">
                                    <h2>Registration Form</h2>
                                </div>
                                <div class="panel-editbox" data-widget-controls=""></div>
                                <div class="col-lg-12">
                                    <div class="box box-primary">
                                        <div class="box-header">
                                            <br>
                                        </div>
                                        <div class="box-body">
                                            <div class="col-lg-12">
                                                <div class="form-group col-lg-3">
                                                    <label for="dept" class="reqinput">Fin. Year:</label>
                                                    <asp:DropDownList ID="ddlFinYear" runat="server" required="" Style="width: 88%" TabIndex="1" class="form-control  inlineDisplay">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="2020-2021" Value="2020-2021"></asp:ListItem>
                                                        <asp:ListItem Text="2022-2023" Value="2022-2023"></asp:ListItem>
                                                        <asp:ListItem Text="2023-2024" Value="2023-2024"></asp:ListItem>
                                                        <asp:ListItem Text="2024-2025" Value="2024-2025"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Full Name:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtName" runat="server" TabIndex="1" class="form-control  inlineDisplay" placeholder="Full Name" size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Father Name:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtFatherName" runat="server" TabIndex="2" class="form-control inlineDisplay " placeholder="Father Name" size="40" required=""></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">DOB:</label>
                                                    <asp:TextBox ID="txtdob" runat="server" TabIndex="3" class="form-control inlineDisplay " placeholder="DD/MM/YYYY"  size="40" required=""></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Mobile:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtContact" runat="server" TextMode="phone" MaxLength="10" TabIndex="4" class="form-control inlineDisplay" placeholder="Mobile" required="" Style="width: 100%" onkeypress="return functionx(event)"></asp:TextBox>
</asp:TextBox>                                     </div>
                                                 <div class="form-group col-lg-3">
                                                    <label for="dept">E-Mail:</label>
                                                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email" TabIndex="16" class="form-control inlineDisplay" placeholder="E-Mail" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Gender:</label>
                                                    <asp:DropDownList ID="ddlGender" runat="server" TabIndex="6" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                        <asp:ListItem Text="Transgender" Value="Transgender"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>                                               

                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Blood Group:</label>
                                                    <asp:DropDownList ID="ddlblood" runat="server" TabIndex="7" class="form-control inlineDisplay" Style="width: 100%;">
                                                        <asp:ListItem Text="Selected" Value="Selected"></asp:ListItem>
                                                        <asp:ListItem Text="AB" Value="AB"></asp:ListItem>
                                                        <asp:ListItem Text="A+" Value="A+"></asp:ListItem>
                                                        <asp:ListItem Text="B-" Value="B-"></asp:ListItem>
                                                        <asp:ListItem Text="O+" Value="O-"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Gaurdian Occupation:</label>
                                                    <asp:DropDownList ID="ddlOccupation" runat="server" TabIndex="8" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Selected" Value="Selected"></asp:ListItem>
                                                        <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                                                        <asp:ListItem Text="Job-Govt" Value="Job-Govt"></asp:ListItem>
                                                        <asp:ListItem Text="Job-Pvt" Value="Job-Pvt"></asp:ListItem>
                                                        <asp:ListItem Text="Farmer" Value="Farmer"></asp:ListItem>
                                                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-lg-3" hidden="hidden">
                                                    <label for="dept">Marital Status:</label>
                                                    <asp:DropDownList ID="ddlMaritalStatus" runat="server" TabIndex="9" class="form-control inlineDisplay" Style="width: 100%">
                                                        <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                                                        <asp:ListItem Text="UnMarried" Value="UnMarried"></asp:ListItem>
                                                        <asp:ListItem Text="Divorced" Value="Divorced"></asp:ListItem>
                                                        <asp:ListItem Text="Widow/Widower" Value="Widow/Widower"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Gaurdians Anual Incom</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtincome" runat="server" TextMode="Number" TabIndex="2" class="form-control inlineDisplay " placeholder="Father Name" size="40" required=""></asp:TextBox>
                                                 </div>

                                                  <div class="form-group col-lg-3">
                                                    <label for="dept">Gaurdians Contact Number</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtcontact1" runat="server" TextMode="phone" MaxLength="10" TabIndex="2" class="form-control inlineDisplay " placeholder="Father Name" size="40" onkeypress="return functionx(event)" required=""></asp:TextBox>
                                                 </div>
                                                <div class="form-group col-lg-3" hidden="hidden">
                                                    <label for="dept">Academic Year:</label>
                                                    <asp:DropDownList ID="ddlacadmicyear" runat="server" TabIndex="11" class="form-control inlineDisplay" Style="width: 100%;">
                                                        <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                                                        <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                                                        <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                                                        <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                                                        <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                                                        <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div>
                                                    <div class="form-group col-lg-3">
                                                        <label for="dept">Nationality</label><span class="reqinput"></span>
                                                        <asp:TextBox ID="txtnationality" runat="server" TabIndex="2" class="form-control inlineDisplay " placeholder="Father Name" size="40" required=""></asp:TextBox>

                                                    </div>
                                                  <%--  <div class="form-group col-lg-3">
                                                        <label for="dept">Proficiency in Language:</label><span class="reqinput"></span>
                                                       <asp:CheckBoxList ID="chkLanguages" runat="server">
                                                            <asp:ListItem Text="Hindi" Value="Hindi" />
                                                              <asp:ListItem Text="English" Value="English" />                                                              
                                                                 <asp:ListItem Text="Other" Value="Other" />                                                                   
                                                               </asp:CheckBoxList>
                                                    </div>--%>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Edcutional Qualification:</label>
                                                    <asp:TextBox ID="txtEdQu" runat="server" TabIndex="15" class="form-control inlineDisplay" placeholder="Edcutional Qualification" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                 <div class="form-group col-lg-3">
                                                    <label for="dept">Subject:</label>
                                                    <asp:TextBox ID="txtsubject" runat="server" TabIndex="15" class="form-control inlineDisplay" placeholder="Please Enter Subject" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                  <div class="form-group col-lg-3">
                                                    <label for="dept">Board/University:</label>
                                                    <asp:TextBox ID="txtboard" runat="server" TabIndex="15" class="form-control inlineDisplay" placeholder="Please Enter Board/University" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                 <div class="form-group col-lg-3">
                                                    <label for="dept">Year:</label>
                                                    <asp:TextBox ID="txtyear" runat="server" TextMode="Number" TabIndex="15" class="form-control inlineDisplay" placeholder="Please Enter Your Passing Year" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                  <div class="form-group col-lg-3">
                                                    <label for="dept">Percentage:</label>
                                                    <asp:TextBox ID="txtpercentage" TextMode="Number" runat="server" TabIndex="15" class="form-control inlineDisplay" placeholder="Please Enter Passing Percentage" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-3">
                                                    <label for="dept">Professional Qualification:</label>
                                                    <asp:TextBox ID="txtPrQu" runat="server" TabIndex="16" class="form-control inlineDisplay" placeholder="Professional Qualification" Style="width: 100%"></asp:TextBox>
                                                </div>
                                                                                              
                                                <div class="form-group col-lg-6">
                                                    <label for="dept">Address:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="txtAddress" runat="server" TabIndex="12" MaxLength="90" class="form-control inlineDisplay" placeholder="Address" required="" Style="height: 100px; width: 100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <label for="dept">Medical History-any seriouse disease, hospitalization etc:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="TextBox2" runat="server" TabIndex="12" MaxLength="90" class="form-control inlineDisplay" placeholder="Medical History-any seriouse disease, hospitalization etc" required="" Style="height: 100px; width: 100%"></asp:TextBox>
                                                </div>                                                    
                                             
                                                                                            
                                                 <div class="form-group col-lg-6">
                                                    <label for="dept">What are your co-curricular interests?:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="TextBox3" runat="server" TabIndex="12" MaxLength="90" class="form-control inlineDisplay" placeholder="What are your co-curricular interests?" required="" Style="height: 100px; width: 100%"></asp:TextBox>
                                                </div>                                             
                                                 <div class="form-group col-lg-6">
                                                    <label for="dept">Any State/National Level achievement:</label><span class="reqinput"></span>
                                                    <asp:TextBox ID="TextBox4" runat="server" TabIndex="12" MaxLength="90" class="form-control inlineDisplay" placeholder="Any State/National Level achievement" required="" Style="height: 100px; width: 100%"></asp:TextBox>
                                                </div>
                                                 <div class="form-group col-lg-2">
                                                        <label for="dept">Amount:</label><span class="reqinput"></span>
                                                        <asp:TextBox ID="txtamount" runat="server" TextMode="Number" TabIndex="22" class="form-control inlineDisplay" placeholder="Reg. Fees" required="" Style="width: 80%"></asp:TextBox>
                                                       </div>
                                              

                                                <div class="form-group col-lg-12">
                                                    <label for="dept"></label>
                                                </div>
                                                <!-- /.box-body -->

                                                <div>
                                                    <div class="form-group col-lg-8">
                                                        <label for="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                        <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-danger btnWidth" formnovalidate="" />
                                                        <asp:Button ID="btnsave" runat="server" Text="Save" TabIndex="31" class="btn btn-primary btnWidth" OnClick="btnsave_Click" />
                                                        
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label for="name">Search:</label>
                                                        <input name="ctl00$ContentPlaceHolder1$tbSearch" type="text" id="ContentPlaceHolder1_tbSearch" tabindex="32" class="form-control inlineDisplay" placeholder="Search" style="width: 180px;">
                                                        <input type="image" name="ctl00$ContentPlaceHolder1$ImageButton1" id="ContentPlaceHolder1_ImageButton1" tabindex="33" class="imagebtn" formnovalidate="" src="../images/search.png" style="height: 30px; width: 30px; position: relative; top: 7px">
                                                    </div>
                                                </div>

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

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 
</asp:Content>
