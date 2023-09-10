<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="Registrationview.aspx.cs" Inherits="School_Management_Project.Registrationview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);" data-widget-static="" class="panel panel-default" data-widget="{&quot;draggable&quot;: &quot;false&quot;}">
            <div class="panel-heading">
                <h2>Collage Component Details</h2>
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
                            <div style="height: 470px; overflow: auto;">
                                <table class="TableCSS table-bordered" style="background-color: white">
                                    <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" BorderWidth="1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical" CssClass="table ">
                                        <RowStyle BorderWidth="1" BorderColor="Black" />
                                        <AlternatingRowStyle BackColor="WhiteSmoke" />
                                        <%-- <PagerSettings Mode="NumericFirstLast" PageButtonCount="5" />--%>
                                        <Columns>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <a href='Writereaddata/<%# Eval("StudentReg_id") %>' target="_blank">
                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/edit.png" Height="25px" Width="29px" />
                                                    </a>
                                                </ItemTemplate>
                                                <HeaderStyle Width="80px" />
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <a href='Writereaddata/<%# Eval("StudentReg_id") %>' target="_blank">
                                                        <asp:Image ID="pdfimg" runat="server" ImageUrl="~/Img/delete.jpg" Height="25px" Width="29px" />
                                                    </a>
                                                </ItemTemplate>
                                                <HeaderStyle Width="80px" />
                                            </asp:TemplateField>

                                            <asp:BoundField HeaderText="Component Name" DataField="StudentName">
                                                <HeaderStyle Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                            <asp:BoundField HeaderText="Amount" DataField="Fathername">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                            <asp:BoundField HeaderText="Fee" DataField="StudentDOB">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                            <asp:BoundField HeaderText="Finance Year" DataField="Gender">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>
                                            
                                            <asp:BoundField HeaderText="Discription" DataField="Category">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                             <asp:BoundField HeaderText="Discription" DataField="Ocupation">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                             <asp:BoundField HeaderText="Discription" DataField="State">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                             <asp:BoundField HeaderText="Discription" DataField="City">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                             <asp:BoundField HeaderText="Discription" DataField="Address">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>

                                             <asp:BoundField HeaderText="Discription" DataField="StudentFee">
                                                <HeaderStyle Font-Size="12px" Width="300px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle VerticalAlign="Top" Wrap="True" />
                                            </asp:BoundField>
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
</asp:Content>
