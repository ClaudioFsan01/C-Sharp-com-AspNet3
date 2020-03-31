<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridview.aspx.cs" Inherits="GridView.gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 237px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Código" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="Código" />
                <asp:BoundField DataField="nomeCurso" HeaderText="nomeCurso" SortExpression="nomeCurso" />
                <asp:BoundField DataField="valorCurso" HeaderText="valorCurso" SortExpression="valorCurso" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cursos] WHERE [Código] = ?" InsertCommand="INSERT INTO [Cursos] ([Código], [nomeCurso], [valorCurso]) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Código], [nomeCurso], [valorCurso] FROM [Cursos]" UpdateCommand="UPDATE [Cursos] SET [nomeCurso] = ?, [valorCurso] = ? WHERE [Código] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Código" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Código" Type="Int32" />
                <asp:Parameter Name="nomeCurso" Type="String" />
                <asp:Parameter Name="valorCurso" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nomeCurso" Type="String" />
                <asp:Parameter Name="valorCurso" Type="Int32" />
                <asp:Parameter Name="Código" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
