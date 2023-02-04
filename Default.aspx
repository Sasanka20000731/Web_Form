<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div styple ="pedding: 15px ">
       
       &nbsp;<table class="nav-justified" style="width: 88%">
           <tr>
               <td class="text-center" colspan="5" style="color: #000099"><strong>Complete CRUD in asp. Net</strong></td>
           </tr>
           <tr>
               <td style="width: 504px" colspan="2">Employee Number</td>
               <td colspan="3">
                   <asp:TextBox ID="TB_EmpNum" runat="server" Height="26px" Width="523px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="height: 20px; width: 504px" colspan="2">Employee Name</td>
               <td style="height: 20px" colspan="3">
                   <asp:TextBox ID="TBEmpName" runat="server" Height="26px" Width="523px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 504px" colspan="2">Date of Birth</td>
               <td colspan="3">
                   <asp:TextBox ID="TB_DOB" runat="server" Height="26px" Width="523px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 504px; height: 41px" colspan="2">Gender<br />
               </td>
               <td style="height: 41px" colspan="3">
                   <asp:RadioButtonList ID="RadioButtonList_Gender" runat="server" Height="19px" RepeatDirection="Horizontal" Width="377px">
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                   </asp:RadioButtonList>
               </td>
           </tr>
           <tr>
               <td style="width: 504px; height: 20px" colspan="2">Position </td>
               <td style="height: 20px" colspan="3">
                   <asp:TextBox ID="TBPosition" runat="server" Height="26px" Width="523px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 504px" colspan="2">Department</td>
               <td colspan="3">
                   <asp:DropDownList ID="DropDownList_Department" runat="server" Height="25px" Width="161px">
                       <asp:ListItem>None</asp:ListItem>
                       <asp:ListItem>PD</asp:ListItem>
                       <asp:ListItem>ENG</asp:ListItem>
                       <asp:ListItem>QA</asp:ListItem>
                       <asp:ListItem>WH</asp:ListItem>
                       <asp:ListItem>HR</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td style="width: 504px; height: 32px" colspan="2">Joined Date</td>
               <td style="height: 32px" colspan="3">
                   <asp:TextBox ID="TBJoinedDate" runat="server" Height="26px" Width="523px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 504px; height: 20px" colspan="2">Contact Number</td>
               <td style="height: 20px" colspan="3">
                   <asp:TextBox ID="TBContactNumber" runat="server" Height="26px" Width="523px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 504px; height: 20px" colspan="2"></td>
               <td style="height: 20px" colspan="3"></td>
           </tr>
           <tr>
               <td style="height: 20px" colspan="5">
                   <asp:Button ID="BtnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" Width="327px" BackColor="#9999FF" /> 
               </td>
           </tr>
           <tr>
               <td colspan="5" style="height: 20px">
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="BTNUpdate" runat="server" Height="28px" OnClick="BTNUpdate_Click" Text="Update" Width="224px" BackColor="#9999FF" />
               </td>
               <td>
                   <asp:Button ID="BTNDelete" runat="server" Height="29px" OnClick="BTNDelete_Click" Text="Delete" Width="223px" BackColor="#9999FF" />
               
               </td>
               <td>
                   <asp:Button ID="Button002" runat="server" Height="31px" OnClick="Button002_Click" Text="Clear" Width="228px" BackColor="#9999FF" />
               </td>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td colspan="5">
                   <asp:GridView ID="GridView1" runat="server" ForeColor="#666666" Height="94px" Width="714px">
                   </asp:GridView>
               </td>
           </tr>
       </table>


       
   </div>
</asp:Content>
