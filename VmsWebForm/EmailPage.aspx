<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailPage.aspx.cs" Inherits="VmsWebForm.EmailPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" Height="96px" Width="552px" BorderStyle="Solid" BorderWidth="1">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Sender Display Name</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtSenderName" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Sender Email Address</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtSenderAddress" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Recipient Display Name</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtRecipientName" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Recipient Email Address</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtRecipientAddress" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Email Subject</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtEmailSubject" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Email Body</asp:TableCell>
                    <asp:TableCell runat="server">
                       <asp:TextBox ID="txtEmailBody" runat="server" TextMode="MultiLine" Width="90%" Height="100"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSenderEmail_Click" Text="Send Email" />
            <br />
            <br />
            <asp:Label ID="labelResult" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
        </div>
    </form>
</body>
</html>
