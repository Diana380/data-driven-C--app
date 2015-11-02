<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delegates Page.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseCode,ClientNumber" DataSourceID="SqlDataSource1" Height="237px" Width="801px" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" ReadOnly="True" SortExpression="CourseCode" />
                <asp:BoundField DataField="ClientNumber" HeaderText="ClientNumber" ReadOnly="True" SortExpression="ClientNumber" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Forename" HeaderText="Forename" SortExpression="Forename" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT        Delegate.CourseCode, Delegate.ClientNumber, Delegate.Date, Client.Title, Client.Surname, Client.Forename, Client.Gender
FROM            Client INNER JOIN
                         Delegate ON Client.ClientNumber = Delegate.ClientNumber"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Male Counter" />
       
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Female Counter" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
       
    </form>
</body>
</html>
