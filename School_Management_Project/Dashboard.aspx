<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="School_Management_Project.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <div id="Dasboard">
            <div class="container-fluid">
                <%-- <a id="ContentPlaceHolder1_LinkButton1" class="btn btn-default DTTT_button_text" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$LinkButton1','')" style="float: right; margin-top: 5px; margin-bottom: 10px; background-color: #038DCC !important; border-color: #FAFAFA !important; color: #fff; margin-right: 0px;"><i class="ti ti-plus"></i><span>Sign In</span></a>
                --%>
            </div>
        </div>
        <br />
        <div class="container-fluid">
            <div data-widget-group="group1" class="ui-sortable">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-info" data-widget="{&quot;id&quot; : &quot;wiget9&quot;, &quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
                            <div class="panel-heading">
                                <h2 style="color: white; font-size: 16px">Master</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="#">
                        <span class="custom-social custom-social-image" style="background-color: #7d3b24">
                            <span class="fa fa-university fa-4x"></span>                            
                            <br>
                            <br>
                            Total Student
                           <%-- College / Center--%> 
                        </span></a>
                    <br>
                    <br>
                </div>
            </div>

            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                   <%-- <a href="State.aspx">--%>
                        <span class="custom-social custom-social-image" style="background-color: #6d1c7b;">
                             <span class="fa fa-user fa-4x"></span>
                            <br>
                            <br>
                            Total Teacher
                        </span>
                    <%--</a>--%>
                </div>
            </div>

             <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="City.aspx">
                        <span class="custom-social custom-social-image" style="background-color: #3f51b5;">
                            <span class="fa fa-book fa-4x"></span>
                            <br>
                            <br>
                           Total Class
                        </span></a>
                </div>
            </div>

            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="State.aspx">
                        <span class="custom-social custom-social-image" style="background-color: #6d1c7b;">
                            <span class="fa fa-globe fa-4x"></span>
                            <br>
                            <br>
                            Total Subject
                        </span></a>
                </div>
            </div>
            <!-- .container-fluid -->
        </div>

        <div class="container-fluid">
            <div data-widget-group="group1" class="ui-sortable">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-info" data-widget="{&quot;id&quot; : &quot;wiget9&quot;, &quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
                            <div class="panel-heading">
                                <h2 style="color: white; font-size: 16px">Administration</h2>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="#">
                        <span class="custom-social custom-social-image" style="background-color: #af3027">
                            <span class="fa fa-question fa-4x"></span>
                            <br>
                            <br>
                            Student Enquiry 
                        </span></a>
                </div>
            </div>


            <!-- .container-fluid -->
            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="Registrationview.aspx">
                        <span class="custom-social custom-social-image" style="background-color: #346f36">
                            <span class="fa fa-user fa-4x"></span>
                            <br>
                            <br>
                            Student Registration 
                        </span></a>
                </div>
            </div>

            <!-- .container-fluid -->
            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="Admissionview.aspx">
                        <span class="custom-social custom-social-image" style="background-color: #602eb7">
                            <span class="fa fa-registered fa-4x"></span>
                            <br>
                            <br>
                            Student Admission 
                        </span></a>
                </div>
            </div>


            <!-- .container-fluid -->
            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="#">
                        <span class="custom-social custom-social-image" style="background-color: #009688">
                            <span class="fa fa-money fa-4x"></span>
                            <br>
                            <br>
                            Fees Payment
                        </span></a>
                </div>
            </div>
            <!-- .container-fluid -->
            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="Studentsearchview.aspx">
                        <span class="custom-social custom-social-image" style="background-color: #675c5c">
                            <span class="fa fa-search fa-4x"></span>
                            <br>
                            <br>
                            Search Student
                        </span></a>
                </div>
            </div>          

        </div>
        <br />

        <div class="container-fluid">
            <div data-widget-group="group1" class="ui-sortable">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-info" data-widget="{&quot;id&quot; : &quot;wiget9&quot;, &quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
                            <div class="panel-heading">
                                <h2 style="color: white; font-size: 16px">Report</h2>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2">
                <h4 class="text-center"></h4>
                <div class="color-palette-set">
                    <a href="#">
                        <span class="custom-social custom-social-image" style="background-color: #7d3b24">
                            <span class="fa fa-university fa-4x"></span>
                            <br>
                            <br>
                            College / Center 
                        </span></a>
                    <br>
                    <br>
                </div>
            </div>


            <!-- .container-fluid -->
        </div>
    </div>
</asp:Content>
