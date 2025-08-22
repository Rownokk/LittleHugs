<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="LittleHugs.Admin.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <!-- Category Name Input -->
        <div class="col-sm-12 col-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Category</h4>
                    <hr />
                    <div class="form-body">
                        <label for="txtCategoryName">Category Name</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:TextBox 
                                        ID="txtCategoryName" 
                                        runat="server" 
                                        CssClass="form-control" 
                                        placeholder="Enter Category Name">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator 
                                        ID="rfvCategoryName" 
                                        runat="server" 
                                        ForeColor="Red" 
                                        Font-Size="Small" 
                                        Display="Dynamic" 
                                        SetFocusOnError="true" 
                                        ControlToValidate="txtCategoryName" 
                                        ErrorMessage="Category Name is required">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                         <label for="txtCategoryName">Category Image</label>
 <div class="row">
     <div class="col-md-12">
         <div class="form-group">
             <asp:FileUpload ID="fucategoryImage" runat="server" CssClass="form-control"/>
           
         </div>
     </div>
 </div>
                        <div class="row">
                              <div class="col-md-12">
                                 <div class="form-group">
                                     <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; ÏsActive"/>
                                 </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- Another Section -->
        <div class="col-sm-12 col-md-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Category</h4>
                    <hr />
                    <!-- You can add more content here as needed -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>