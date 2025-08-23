<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="LittleHugs.Admin.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-4">
        <asp:Label ID ="lblMsg" runat ="server"></asp:Label>

    </div>

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
             <asp:FileUpload ID="fuCategoryImage" runat="server" CssClass="form-control"/>
           <asp:HiddenField ID ="hfCategoryId" runat ="server" Value="0" />
         </div>
     </div>
 </div>
                        <label for="txtCategoryName">Category Image Preview</label>
<div class="row mb-3">
    <div class="col-md-12">
        <asp:Image ID="imagePreview" runat="server"  />
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
                
                <div class="form-actions pb-5">
                    <div class="text-left">
                        <asp:Button 
                            ID="btnAddOrUpdate" 
                            runat="server" 
                            CssClass="btn btn-info" 
                            Text="Add" 
                            OnClick="btnAddOrUpdate_Click" />
                        
                        <asp:Button 
                            ID="btnClear" 
                            runat="server" 
                            CssClass="btn btn-dark" 
                            Text="Reset" 
                            OnClick="btnClear_Click" />
                    </div>
                </div>


                    </div>
            </div>
        </div>

        <!-- Another Section -->
        <div class="col-sm-12 col-md-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Category List</h4>
                    <hr />
                    <div class="table-responsive">
                        <asp:Repeater ID="rCategory"  runat="server">
                        <HeaderTemplate>
                            <table>
                                <thead>
                                    <tr>
                                        <th class="table-plus">Name</th>
                                        <th>Image</th>
                                        <th>IsActive</th>
                                        <th>CreatedDate</th>
                                        <th class="datatable-nosort">Action</th>
                                            
                                
                                    </tr>
                                </thead>
                                <tbody>]


                        </HeaderTemplate>
                        <ItemTemplate>
                             <tr>
                                 <td class="table-plus"> <%#  Eval("CategoryName") %></td>
                                  <td >

                                 <img width="40" src=<%# LittleHugs.Utils.getImageUrl(Eval("CategoryImageUrl")) %>  alt="image"/>
                            <td/> 

                           <td>
    <asp:Label ID="lbIsActive" runat="server"
        Text='<%# (bool)Eval("IsActive") ? "Active" : "Inactive" %>'
        CssClass='<%# (bool)Eval("IsActive") ? "badge badge-success" : "badge badge-danger" %>'>
    </asp:Label>
</td>

                                <td>
                                    <%# Eval("CreatedDate") %>
                                    
                                </td>
                                <td>
                                    <asp:LinkButton ID="lbEdit" Text ="Edit" runat ="server" CssClass="badge badge-primary">
                                        <i class="fas fa-edit">

                                        </i>
                                    </asp:LinkButton>
                                     <asp:LinkButton ID="lbDelete" Text ="Delete" runat ="server" CssClass="badge badge-danger">
                                          <i class="fas fa-trash-alt">

                                              </i>
                                        </asp:LinkButton>
                            </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                             </tbody>
                                                           
                            </table>
                        </FooterTemplate>
                            </asp:Repeater>

                    </div>
                      
                    <!-- You can add more content here as needed -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>