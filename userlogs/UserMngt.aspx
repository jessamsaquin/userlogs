<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserMngt.aspx.cs" Inherits="userlogs.UserMngt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Logs</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>User Management</h1>
            <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="Username" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                    <asp:BoundField DataField="UserType" HeaderText="User Type" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandArgument='<%# Eval("UserId") %>' OnClick="btnEdit_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandArgument='<%# Eval("UserId") %>' OnClick="btnDelete_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnAddUser" runat="server" Text="Add User" OnClick="btnAddUser_Click" />
        </div>
    </form>
</body>
</html>
