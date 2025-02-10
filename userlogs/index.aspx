<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="userlogs.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <asp:hiddenfield id="hfUserID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtlastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtfirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Middle Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtmidName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Nickname"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtnickName" runat="server"></asp:TextBox>
                    </td>
                </tr>                <tr>
                    <td>
                        <asp:Label runat="server" Text="Email Address"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtemailAdd" runat="server" TextMode="Email"></asp:TextBox>
        
                     </td>
                </tr>                
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Department"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList runat="server" ID="dlistDepartment">
                            <asp:ListItem Text="Administration " />
                            <asp:ListItem Text="Human Resources (HR)" />
                            <asp:ListItem Text="Finance & Accounting" />
                            <asp:ListItem Text="Sales & Marketing" />
                            <asp:ListItem Text="Customer Support" />
                            <asp:ListItem Text="IT & Tech Support" />
                            <asp:ListItem Text="Research & Development" />
                            <asp:ListItem Text="Engineering" />
                            <asp:ListItem Text="Production" />
                            <asp:ListItem Text="Quality Assurance" />
                        </asp:DropDownList>
                    </td>
                </tr>                
                <tr>
                    <td>
                        <asp:Label runat="server" Text="User Type"></asp:Label>
                    </td>
                    <td colspan="2">
                        
                        <asp:RadioButtonList ID="RadiouserType" runat="server" Width="188px" style="margin-top: 6px">
                            <asp:ListItem Text="Employee" /><asp:ListItem Text="HR" />
                             <asp:ListItem Text="Admin" />  

                        </asp:RadioButtonList>
                    </td>
                </tr>                
                <tr>
                    <td>
                        <asp:Label runat="server" Text="User Status"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList runat="server" ID="dlistUserstat">
                            <asp:ListItem Text="Active " />
                            <asp:ListItem Text="Suspended" />
                            <asp:ListItem Text="Departed" />
                            </asp:DropDownList>
                    </td>
                </tr>
                <tr><td colspan="3"><hr/></td></tr>

                <tr>
                    <td>
                        <asp:Label runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtuserName" runat="server"></asp:TextBox>
                        <asp:Label runat="server" Text="*" ForeColor="Red"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox id="txtconfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>

                 <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button ID="btnAddUser" runat="server" Text="Add User" OnClick="btnAddUser_Click" />
                    </td>
                 </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label ID="SuccessMgs" runat="server" Text="" Forecolor="Green"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label ID="ErrorMgs" runat="server" Text="" forecolor="Red"></asp:Label>
                    </td>
                </tr>

             </table>
            
        </div>
    </form>
</body>
</html>
