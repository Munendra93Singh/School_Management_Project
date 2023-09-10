<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="Admissionview.aspx.cs" Inherits="School_Management_Project.Admissionview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
    <div class="container-fluid">
        <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
            <div class="panel-heading">
                <h2>Enquery Form Details</h2>
            </div>
            <div class="panel-editbox" data-widget-controls=""></div>
            <div class="panel-body">
                <div class="form-horizontal row-border">
                    <div class="widget-content no-padding">
                        <section class="abt">
                            <div style="height: 470px; overflow: auto;">                               
                                    <table class="TableCSS table-bordered" style="background-color: white">
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
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>
