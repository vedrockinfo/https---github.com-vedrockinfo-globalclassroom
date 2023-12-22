<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Interest.aspx.cs" Inherits="Interest_Interest" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/color.css" rel="stylesheet" />
        <style type="text/css">
   
#progress
{
    z-index: 500;
    top: 60%;
    left: 50%;
    position: absolute;
    padding: 5px 5px 5px 5px;
    text-align: center;
}
     .listar-btn {
    color: #fff;
    padding: 0 30px;
    position: relative;
    text-align: center;
    -webkit-border-radius: 22px;
    border-radius: 22px;
    display: inline-block;
    vertical-align: middle;
    border: 1px solid #fff;
    text-transform: capitalize;
    font: 400 14px/42px 'Segoe UI',SegoeUI,"Helvetica Neue",Helvetica,Arial,sans-serif;
}    
   
    </style>
</head>
<body style="padding-top:20px;">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

   <div class="col-sm-12">
   <div class="col-sm-12">
  <!-- <asp:Label ID="Label2" runat="server" Style="color: #FF0000" Text="*"></asp:Label>-->


  <asp:HiddenField id="hid" runat="server" />
      <asp:DropDownList ID="ddlYouAre" runat="server" CssClass="form-control">
                                    <asp:ListItem Selected="True" Value="0">You are</asp:ListItem>
                                    <asp:ListItem Value="Investor">School Head</asp:ListItem>
                                    <asp:ListItem>Teacher</asp:ListItem>
                                    <asp:ListItem>Student</asp:ListItem>
                                    <asp:ListItem>Trainer</asp:ListItem>
                                    <asp:ListItem>Parent</asp:ListItem> 
                                    <asp:ListItem>Bookseller / Wholesaler</asp:ListItem> 
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlYouAre" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="sub"></asp:RequiredFieldValidator>
       </div>



          <div class="col-sm-12">
       <!-- <asp:Label ID="Label1" runat="server" Style="color: #FF0000" Text="*"></asp:Label>-->
          <asp:DropDownList ID="ddlInterest" runat="server" CssClass="form-control">
                                    <asp:ListItem Selected="True" Value="0">Interested in</asp:ListItem>
                                    <asp:ListItem>Training</asp:ListItem>
                                    <asp:ListItem>Synergy Workshop</asp:ListItem>
                                    <asp:ListItem>Samples</asp:ListItem>
                                    <asp:ListItem>Demostration</asp:ListItem>
                                    <asp:ListItem>Ed Leadership Conference</asp:ListItem>
                                    <asp:ListItem>Global Dream Literacy</asp:ListItem>
                                    <asp:ListItem>Education We Want Magazine</asp:ListItem>
                                    <asp:ListItem>Career</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlInterest" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="sub"></asp:RequiredFieldValidator>
           </div>

          <div class="col-sm-12">
              <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"></asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlState" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="sub"></asp:RequiredFieldValidator>
          </div>

          <div class="col-sm-12">
              <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control" ></asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlCity" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="sub"></asp:RequiredFieldValidator>
          </div>
             

          <div class="col-sm-12">
    <!--  <asp:Label ID="Label3" runat="server" Style="color: #FF0000" Text="*"></asp:Label>-->
         <asp:TextBox ID="txtName" runat="server" CssClass="form-control"  placeholder="Name"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red" ValidationGroup="sub"></asp:RequiredFieldValidator>
          </div>



          <div class="col-sm-12">
      <!-- <asp:Label ID="Label4" runat="server" Style="color: #FF0000" Text="*"></asp:Label>-->
         <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"   placeholder="Email" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="sub"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="sub"></asp:RegularExpressionValidator>
          </div>



          <div class="col-sm-12">
         <!--<asp:Label ID="Label5" runat="server" Style="color: #FF0000" Text="*"></asp:Label>-->
         <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" MaxLength="10" placeholder="Mobile"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMobile" ErrorMessage="*" ForeColor="Red" ValidationGroup="sub"></asp:RequiredFieldValidator>
          <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" FilterType="Numbers, Custom" TargetControlID="txtMobile" ValidChars="-, " />
           </div>



          <div class="col-sm-12"  style="padding-bottom:10px">
        
           <asp:TextBox ID="txtComment" runat="server" CssClass="form-control" Rows="1" TextMode="MultiLine" placeholder="Comment"></asp:TextBox>
          </div>

          <%--<div class="col-sm-1" >

 <asp:Image ID="Image1" runat="server" CssClass="mainimg" /></div>--%>
      <div class="col-sm-12">
        <table width="100%">
            <tr>
                <td style="width:8%;"> <asp:Image ID="Image1" runat="server" CssClass="mainimg"  Height="26px" Width="100px"/></td>
                <td style="width:91%;"><asp:TextBox ID="txt_char" runat="server" placeholder="Enter captcha Code" CssClass="form-control" MaxLength="7" ></asp:TextBox></td>
            </tr>
        </table>                 
              
          <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="txt_char" ErrorMessage="*" ForeColor="Red" ValidationGroup="sub"></asp:RequiredFieldValidator>
      
         </div>


  <div class="col-sm-12" >

                                                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                                                            <%--<asp:ValidationSummary ID="ValidationSummary4" runat="server" ShowMessageBox="True"
                                                                ShowSummary="False" ValidationGroup="sub" />CssClass="btn btn-primary custom-border-radius custom-btn-style-1 font-size-md font-weight-bold text-color-light text-uppercase outline-none ml-lg"--%>
                                                            <asp:Button ID="btnnextv1"  ValidationGroup="sub" runat="server"  Width="100%"
                                                                Text="Submit" OnClick="btnnextv1_Click" CssClass="listar-btn listar-btngreen" />
                                                        <p>&nbsp;</p>
                                                        </div>

    </div>


        </ContentTemplate>
        </asp:UpdatePanel>
       
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <div id="blur">
                    &nbsp;
                </div>
                <div id="progress">
                    <img alt="" src="images/ajax-loader.gif" />
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>


      <script src="javascript/jquery.min.js"></script>
    <script src="javascript/tether.min.js"></script>
    <script src="javascript/bootstrap.min.js"></script> 
    <script src="javascript/jquery.easing.js"></script>    
    <script src="javascript/jquery-waypoints.js"></script> 
    <script src="javascript/jquery-validate.js"></script>     
    <script src="javascript/jquery.cookie.js"></script>
    <script src="javascript/parallax.js"></script>
    <script src="javascript/gmap3.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtwK1Hd3iMGyF6ffJSRK7I_STNEXxPdcQ&region=GB"></script>
    
    
    <script src="javascript/main.js"></script>
</body>
</html>
