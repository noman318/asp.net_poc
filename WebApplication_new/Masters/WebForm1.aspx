<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Mobile.Master" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication_new.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <asp:Label ID="vmsg" runat="server" Text=""></asp:Label>
 
 <div class="container row">
     <div class="col-md-9">
         <div class="form-horizontal">
             <fieldset class="fmfieldset">
                 <legend class="fmlegend">Services Offered</legend>
                 <div class="form-group"  style="padding-top:10px; margin-top:10px; margin-bottom:10px">
                     <asp:Label ID="lblcust" runat="server" AssociatedControlID="txtServiceName" CssClass="col-md-3 control-label">Service Name</asp:Label>
                     <div class="col-md-8 col-xs-11">
                         <asp:TextBox ID="txtServiceName" runat="server" Width="300px" CssClass="form-control fmtxtbx"></asp:TextBox>
                     </div>
                 </div>
                 <div class="form-group"  style="padding-top:10px; margin-top:10px">
                    <asp:Label ID="Label2" runat="server" AssociatedControlID="txtCompanyName" CssClass="col-md-3 control-label">Company Name</asp:Label>
                    <div class="col-md-8 col-xs-11">
                        <asp:TextBox ID="txtCompanyName" runat="server" Width="300px" CssClass="form-control fmtxtbx"></asp:TextBox>
                    </div>
                </div>
                 <div class="form-group"  style="padding-top:10px; margin-top:10px; margin-bottom:10px">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="txtServiceOfferedName" CssClass="col-md-3 control-label">Services Offered</asp:Label>
                    <div class="col-md-8 col-xs-11">
                        <asp:TextBox ID="txtServiceOfferedName" runat="server" TextMode="MultiLine" Width="300px" CssClass="form-control fmtxtbx"></asp:TextBox>
                    </div>
                </div>
                 <div class="form-group d-flex align-items-center" style="padding-top:10px; margin-top:10px; margin-bottom:10px">
                     <asp:Label ID="Label3" runat="server" AssociatedControlID="ddlcurrency" CssClass="col-md-3 control-label">Type</asp:Label>
                     <div class="col-md-8 col-xs-11" style="margin-left:-9%">
                          <asp:DropDownList ID="ddlcurrency" runat="server">
                                 <asp:ListItem Selected="True" Text="Door to Door Service" Value="door_to_door_service"></asp:ListItem>
                                 <asp:ListItem Text="Service Center" Value="service_center"></asp:ListItem>
                           </asp:DropDownList>
                     </div>
                 </div>
                   <div class="col-md-3 col-xs-11  d-flex align-items-center" style="padding-top:10px; margin-top:10px">
                    <asp:Label ID="Label26" runat="server" AssociatedControlID="isActive" CssClass="col-md-3 col-xs-11 control-label">Active</asp:Label>
                      <asp:RadioButtonList ID="isActive" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="true" style="margin-left:37%">
                          <asp:ListItem Selected="True" Text="Yes" Value="yes"></asp:ListItem>
                          <asp:ListItem Text="No" Value="no"></asp:ListItem>
                      </asp:RadioButtonList>
                  </div>
                  <asp:Button ID="btnAdd" runat="server" Text="Save" CssClass="btn btn-primary mt-4" />
             </fieldset>
         </div>
     </div>
 </div>
</asp:Content>
