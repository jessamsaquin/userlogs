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
                <tr>
                    <td>
                            <asp:Label runat="server" Text="Time Zone:"></asp:Label>
                    </td>
                    <td colspan="2">
                            <asp:DropDownList ID="dlistTimeZone" runat="server" OnSelectedIndexChanged="dlistTimeZone_SelectedIndexChanged">
                            <asp:ListItem Text="(UTC-12:00) International Date Line West" Value="-720"></asp:ListItem>
    <asp:ListItem Text="(UTC-11:00) Coordinated Universal Time-11" Value="-660"></asp:ListItem>
    <asp:ListItem Text="(UTC-10:00) Hawaii" Value="-600"></asp:ListItem>
    <asp:ListItem Text="(UTC-09:00) Alaska" Value="-540"></asp:ListItem>
    <asp:ListItem Text="(UTC-08:00) Pacific Time (US & Canada)" Value="-480"></asp:ListItem>
    <asp:ListItem Text="(UTC-07:00) Mountain Time (US & Canada)" Value="-420"></asp:ListItem>
    <asp:ListItem Text="(UTC-06:00) Central Time (US & Canada)" Value="-360"></asp:ListItem>
    <asp:ListItem Text="(UTC-05:00) Eastern Time (US & Canada)" Value="-300"></asp:ListItem>
    <asp:ListItem Text="(UTC-04:00) Atlantic Time (Canada)" Value="-240"></asp:ListItem>
    <asp:ListItem Text="(UTC-03:00) Buenos Aires, Georgetown" Value="-180"></asp:ListItem>
    <asp:ListItem Text="(UTC-02:00) Mid-Atlantic" Value="-120"></asp:ListItem>
    <asp:ListItem Text="(UTC-01:00) Azores" Value="-60"></asp:ListItem>
    <asp:ListItem Text="(UTC+00:00) Greenwich Mean Time" Value="0"></asp:ListItem>
    <asp:ListItem Text="(UTC+01:00) Central European Time" Value="60"></asp:ListItem>
    <asp:ListItem Text="(UTC+02:00) Eastern European Time" Value="120"></asp:ListItem>
    <asp:ListItem Text="(UTC+03:00) Moscow, St. Petersburg" Value="180"></asp:ListItem>
    <asp:ListItem Text="(UTC+04:00) Dubai" Value="240"></asp:ListItem>
    <asp:ListItem Text="(UTC+05:00) Islamabad, Karachi" Value="300"></asp:ListItem>
    <asp:ListItem Text="(UTC+06:00) Dhaka" Value="360"></asp:ListItem>
    <asp:ListItem Text="(UTC+07:00) Bangkok, Hanoi, Jakarta" Value="420"></asp:ListItem>
    <asp:ListItem Text="(UTC+08:00) Beijing, Hong Kong, Manila" Value="480"></asp:ListItem>
    <asp:ListItem Text="(UTC+09:00) Tokyo, Seoul" Value="540"></asp:ListItem>
    <asp:ListItem Text="(UTC+10:00) Sydney, Melbourne" Value="600"></asp:ListItem>
    <asp:ListItem Text="(UTC+11:00) Solomon Islands" Value="660"></asp:ListItem>
    <asp:ListItem Text="(UTC+12:00) Auckland, Wellington" Value="720"></asp:ListItem>    
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
