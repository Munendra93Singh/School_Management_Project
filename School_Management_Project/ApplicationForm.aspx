<%@ Page Title="" Language="C#" MasterPageFile="~/ViewMasterPage.Master" AutoEventWireup="true" CodeBehind="ApplicationForm.aspx.cs" Inherits="School_Management_Project.ApplicationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header">
                        <br>
                    </div>
                    <div class="box-body">
                        <div>
                            <div class="col-md-12">
                                <div class="form-group col-lg-2">
                                    <label for="dept">Fin. Year:</label><span class="reqinput"></span>
                                    <select name="ctl00$ContentPlaceHolder1$ddlFinYear" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$ddlFinYear\',\'\')', 0)" id="ContentPlaceHolder1_ddlFinYear" tabindex="1" class="form-control inlineDisplay" required="" style="width: 88%;">
                                        <option value="">Select</option>
                                        <option value="2016-2017">2016-2017</option>
                                        <option value="2017-2018">2017-2018</option>
                                        <option value="2018-2019">2018-2019</option>
                                        <option value="2019-2020">2019-2020</option>
                                        <option value="2020-2021">2020-2021</option>
                                        <option selected="selected" value="2021-2024">2021-2022</option>
                                        <option value="2022-2023">2022-2023</option>
                                        <option value="2023-2024">2023-2024</option>
                                        <option value="2024-2025">2024-2025</option>
                                        <option value="2025-2026">2025-2026</option>

                                    </select>
                                </div>
                                <div class="form-group col-lg-3">
                                    <label for="dept">Component Name:</label><span class="reqinput"></span>
                                    <input name="ctl00$ContentPlaceHolder1$tbCourse" type="text" id="ContentPlaceHolder1_tbCourse" tabindex="1" class="form-control inlineDisplay " placeholder="Fee Component Name" size="40" required="">
                                </div>
                                <div class="form-group col-lg-2">
                                    <label for="dept">Fee Type:</label><span class="reqinput"></span>
                                    <select name="ctl00$ContentPlaceHolder1$ddlFeeType" id="ContentPlaceHolder1_ddlFeeType" tabindex="2" class="form-control inlineDisplay" required="" style="width: 100%;">
                                        <option selected="selected" value="">Select</option>
                                        <option value="Annually">Annually</option>
                                        <option value="Monthly">Monthly</option>
                                        <option value="Once">Once</option>
                                        <option value="Registration">Registration</option>

                                    </select>
                                </div>
                                <div class="form-group col-lg-2">
                                    <label for="dept">Amount:</label>
                                    <input name="ctl00$ContentPlaceHolder1$txtFeeAmt" type="text" value="0" id="ContentPlaceHolder1_txtFeeAmt" tabindex="3" class="form-control inlineDisplay" size="40">
                                </div>
                                <div class="form-group col-lg-3 text-right">
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnCopyClass" value="Create New FinYear Fee Items" onclick="return CheckddlFinYear();" id="ContentPlaceHolder1_btnCopyClass" tabindex="5" class="btn btn-primary btnWidth" formnovalidate="" style="width: 210px;">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group col-lg-6">
                                    <label for="dept">Description:</label>
                                    <input name="ctl00$ContentPlaceHolder1$tbDesc" type="text" id="ContentPlaceHolder1_tbDesc" tabindex="4" class="form-control inlineDisplay " placeholder="Description" size="40">
                                </div>

                            </div>
                            <div>
                                <label>
                                </label>
                            </div>
                            <div>
                                <div class="form-group col-lg-8">
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnCancel" value="Cancel" id="ContentPlaceHolder1_btnCancel" class="btn btn-danger btnWidth" formnovalidate="">
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnSave" value="Save" id="ContentPlaceHolder1_btnSave" tabindex="5" class="btn btn-primary btnWidth">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="name">Search:</label>
                                    <input name="ctl00$ContentPlaceHolder1$tbSearch" type="text" id="ContentPlaceHolder1_tbSearch" class="form-control inlineDisplay" placeholder="Search" style="width: 180px;">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ImageButton1" id="ContentPlaceHolder1_ImageButton1" class="imagebtn" formnovalidate="" src="../images/search.png" style="height: 30px; width: 30px; position: relative; top: 7px">
                                </div>
                            </div>

                        </div>

                        <span style="color: red; font-size: medium; padding-left: 40px; font-weight: bold;"></span>
                        <span style="color: red; font-size: medium; padding-left: 40px; font-weight: bold;"></span>
                        <div id="ContentPlaceHolder1_lv" style="color: black">
                            <div id="ContentPlaceHolder1_Panel2" style="border-color: #990000; border-style: None; overflow-x: scroll; width: 98%">


                                <%--<table class="TableCSS table-bordered">
                                            <tbody><tr class="TableHeader">
                                                <td>Edit</td>
	
                                                
                                                <td>Sr. No.</td>
	
                                                <td>Name</td>
	
                                                <td>Fee Type</td>
	
                                                <td>Amount</td>
	
                                                <td>Description</td>
	
                                                <td>Fin. Year</td>
	
                                            </tr>
                                            
                                        <tr>
                                            
                                        </tr><tr class="ItemCSS table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl0$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl0_btnEdit_0" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                1
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl0_lblName_0">Old Tution Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl0_lblFee_Type_0">Monthly</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl0_lblAmount_0">0.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl0_lblDesc_0">Old Tution Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl0_lblFin_Year_0">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="AlternatingItemCSS  table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl1$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl1_btnEdit_1" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                2
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl1_lblName_1">Tution Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl1_lblFee_Type_1">Monthly</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl1_lblAmount_1">0.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl1_lblDesc_1">Tution Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl1_lblFin_Year_1">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="ItemCSS table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl2$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl2_btnEdit_2" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                3
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl2_lblName_2">Dress</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl2_lblFee_Type_2">Once</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl2_lblAmount_2">5000.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl2_lblDesc_2">Dress</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl2_lblFin_Year_2">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="AlternatingItemCSS  table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl3$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl3_btnEdit_3" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                4
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl3_lblName_3">Prospectus Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl3_lblFee_Type_3">Registration</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl3_lblAmount_3">1000.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl3_lblDesc_3">Prospectus Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl3_lblFin_Year_3">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="ItemCSS table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl4$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl4_btnEdit_4" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                5
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl4_lblName_4">Registration</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl4_lblFee_Type_4">Once</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl4_lblAmount_4">2500.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl4_lblDesc_4">Registration</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl4_lblFin_Year_4">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="AlternatingItemCSS  table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl5$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl5_btnEdit_5" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                6
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl5_lblName_5">Library Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl5_lblFee_Type_5">Annually</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl5_lblAmount_5">5000.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl5_lblDesc_5">Library Fee</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl5_lblFin_Year_5">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="ItemCSS table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl6$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl6_btnEdit_6" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                7
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl6_lblName_6">Sports</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl6_lblFee_Type_6">Annually</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl6_lblAmount_6">3000.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl6_lblDesc_6">Sports</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl6_lblFin_Year_6">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="AlternatingItemCSS  table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl7$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl7_btnEdit_7" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                8
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl7_lblName_7">Professionl Activity</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl7_lblFee_Type_7">Annually</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl7_lblAmount_7">2000.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl7_lblDesc_7">Professionl Activity</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl7_lblFin_Year_7">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="ItemCSS table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl8$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl8_btnEdit_8" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                9
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl8_lblName_8">Misc Charges</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl8_lblFee_Type_8">Monthly</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl8_lblAmount_8">0.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl8_lblDesc_8">Misc Charges</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl8_lblFin_Year_8">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                        <tr>
                                            
                                        </tr><tr class="AlternatingItemCSS  table-bordered">
                                            <td style="text-align: center">
                                                <input type="image" name="ctl00$ContentPlaceHolder1$lvCourseTradeMaster$ctrl9$ctl00$btnEdit" id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl9_btnEdit_9" title="Modify/Edit" class="imagebtn" formnovalidate="" src="../images/edit.png" style="height:25px;width:25px;">
                                            </td>
                                            
                                            <td style="text-align: center">
                                                10
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl9_lblName_9">Examination Fee B. Pharm</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl9_lblFee_Type_9">Annually</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl9_lblAmount_9">8200.00</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl9_lblDesc_9">Examination Fee B. Pharm</span>
                                            </td>
                                            <td>
                                                <span id="ContentPlaceHolder1_lvCourseTradeMaster_ctrl9_lblFin_Year_9">2021-2022</span>
                                            </td>
                                        </tr>
                                    
                                        
                                    
                                            <tr>
                                                <td colspan="7">
                                                    <span id="ContentPlaceHolder1_lvCourseTradeMaster_DataPager1"><a class="aspNetDisabled">Previous</a>&nbsp;<span>1</span>&nbsp;<a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lvCourseTradeMaster$DataPager1$ctl01$ctl01','')">2</a>&nbsp;<a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lvCourseTradeMaster$DataPager1$ctl02$ctl00','')">Next</a>&nbsp;</span>
                                                </td>
                                            </tr>
                                        </tbody></table>--%>
                            </div>
                            <a style="font-family: Verdana; font-size: 10pt; color: #250a01; font-weight: 700; font-style: italic; padding-top: 0px">(Note: A Master could not be deleted if used anywhere)</a>

                        </div>

                    </div>
                </div>

            </div>
        </div>

        <!-- /.row -->
    </section>
</asp:Content>
