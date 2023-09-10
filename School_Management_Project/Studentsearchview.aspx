<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="Studentsearchview.aspx.cs" Inherits="School_Management_Project.Studentsearchview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://public-assets.envato-static.com/assets/market/pages/full_screen_preview/index-908950ef3ecdc9c38c400187aa20f0f3aaed760661969ce49e5759af43207ec0.js" nonce="1hvVpkdUvGM1Oq2Kbpr6Rw=="></script>
    <script nonce="1hvVpkdUvGM1Oq2Kbpr6Rw==">
        //<![CDATA[
        //function to fix height of iframe!
        var calcHeight = function () {
            var headerDimensions = $('.preview__header').height();
            $('.full-screen-preview__frame').height($(window).height() - headerDimensions);
        }

        $(document).ready(function () {
            calcHeight();
        });

        $(window).resize(function () {
            calcHeight();
        }).load(function () {
            calcHeight();
        });

        //]]>
    </script>

    <style>
        .dashboard-card-ten .card-body .student-info .info-table .table tbody tr td {
            border: none;
            padding: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
        <div style="padding-top: 10px">
            <div class="container-fluid">
                <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
                    <div class="panel-heading">
                        <h2>Enquery Form Details</h2>
                        <div class=" col-md-3" style="float: right">
                            <%-- <label for="name">Search:</label>--%>
                            <asp:TextBox ID="txtsearch" runat="server" TabIndex="32" class="form-control inlineDisplay" placeholder="Search Roll No." Style="width: 180px"></asp:TextBox>
                            <asp:ImageButton ID="imgbtn" runat="server" OnClick="imgbtn_Click" class="imagebtn" formnovalidate="" src="../Img/search.png" Style="height: 30px; width: 30px; position: relative; top: 7px" />
                            <%--                            <input name="ctl00$ContentPlaceHolder1$tbSearch" type="text" id="Text1" tabindex="32" class="form-control inlineDisplay" placeholder="Search Roll No." style="width: 180px;">
                            <input type="image" name="ImageButton1" id="Image2" tabindex="33" class="imagebtn" formnovalidate="" src="../Img/search.png" style="height: 30px; width: 30px; position: relative; top: 7px">--%>
                        </div>
                    </div>
                    <div class="panel-editbox" data-widget-controls=""></div>
                    <div class="panel-body">
                        <div class="form-horizontal row-border">
                            <div class="widget-content no-padding">
                                <%-- <div class="col-4-xxxl col-12">--%>
                                <div class="card dashboard-card-ten">
                                    <div class="card-body">
                                        <div class="heading-layout1">
                                            <%-- <div class="item-title">
                                                    <h3>About Me</h3>
                                                </div>
                                               <div class="dropdown">
                                        <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">...</a>

                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#"><i class="fas fa-times text-orange-red"></i>Close</a>
                                            <a class="dropdown-item" href="#"><i class="fas fa-cogs text-dark-pastel-green"></i>Edit</a>
                                            <a class="dropdown-item" href="#"><i class="fas fa-redo-alt text-orange-peel"></i>Refresh</a>
                                        </div>
                                    </div>--%>
                                        </div>
                                        <table class="student-info">
                                            <div style="margin-left: 100px">
                                                <div class="col-bottom">
                                                    <div class="col-lg-4">
                                                        <div class="media media-none--xs" style="background-color: #4dd0e1; height: 115px; width: 115px; line-height: 129px; text-align: center; border-radius: 50%; overflow: hidden;">
                                                            <div class="item-img">
                                                                <img src="Img/MAHI.jpg" class="media-img-auto" alt="student">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="media-body">
                                                            <h3 class="item-title">MU/212243</h3>
                                                            <hr />
                                                            <p>I AM A STUDENT OF 10TH STATNDERED</p>
                                                            <hr />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </table>

                                        <table class="student-info">
                                            <div class="table-responsive info-table" style="padding-left: 100px">
                                                <table class="table text-nowrap" style="font-size: 16px; font-family: 'Roboto', sans-serif; font-weight: 400;">
                                                    <%--  <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" EmptyDataText="No Records Found">
                                                           <Columns>                                                               
                                                               <asp:TemplateField HeaderText="Name:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Studntname") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Gender:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Gender") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Father Name:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("fathername") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                 <asp:TemplateField HeaderText="Mother Name:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("mothername") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                  <asp:TemplateField HeaderText="Date Of Birth:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("DOB") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                               <asp:TemplateField HeaderText="Religion:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Religion") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                  <asp:TemplateField HeaderText="Father Occupation:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Groccupation") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                               <%-- <asp:TemplateField HeaderText="E-Mail:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>--

                                                                <asp:TemplateField HeaderText="Admission Date:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Admissiondate") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Class:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Class") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                               <%-- <asp:TemplateField HeaderText="Semister:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>--

                                                                <asp:TemplateField HeaderText="Roll:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Rolnumber") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Adress:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Address") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Phone:">
                                                                   <ItemTemplate>
                                                                       <%#Eval("Rolnumber") %>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>
                                                           </Columns>
                                                       </asp:GridView>--%>

                                                    <tbody>
                                                        <tr>
                                                            <td>Name:</td>
                                                            <td class="font-medium text-dark-medium">Rohan Kumar</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Gender:</td>
                                                            <td class="font-medium text-dark-medium">Male</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Father Name:</td>
                                                            <td class="font-medium text-dark-medium">Rakesh Kumar</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Mother Name:</td>
                                                            <td class="font-medium text-dark-medium">Lajwanti Kumari</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Date Of Birth:</td>
                                                            <td class="font-medium text-dark-medium">07.08.2006</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Religion:</td>
                                                            <td class="font-medium text-dark-medium">Hindu</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Father Occupation:</td>
                                                            <td class="font-medium text-dark-medium">Farmer</td>
                                                        </tr>
                                                        <tr>
                                                            <td>E-Mail:</td>
                                                            <td class="font-medium text-dark-medium">Rohan06@gmail.com</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Admission Date:</td>
                                                            <td class="font-medium text-dark-medium">05.01.2019</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Class:</td>
                                                            <td class="font-medium text-dark-medium">B.Pharma</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Semister:</td>
                                                            <td class="font-medium text-dark-medium">3rd</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Roll:</td>
                                                            <td class="font-medium text-dark-medium">10005</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Adress:</td>
                                                            <td class="font-medium text-dark-medium">House 02, Lajpat Namagar, New Delhi</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Phone:</td>
                                                            <td class="font-medium text-dark-medium">+ 88 9856418</td>
                                                        </tr>
                                                    </tbody>
                                                </table>


                                            </div>

                                        </table>

                                    </div>
                                </div>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
