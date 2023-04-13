<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kontakt.aspx.cs" Inherits="B14.Kontakt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
            <div class="hcol1">
                Zadatak 14
            </div>
            <div class="hcol2">
                TV program           
            </div>           
        </div>
        <div class="main">
            <div class="container">                
                <h1>Kontakt</h1>
                <asp:Label ID="Label1" runat="server" Text="Ime:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="E-mail: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Naslov poruke: "></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Poruka: "></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Pošalji" />
                               
            </div>
        </div>
        <div class="footer">
            <div class="fcol1">
                Elektrotehnička škola "Zemun" Beograd
            </div>
            <div class="fcol2">              
                <a class="a" href="/Program.aspx">Početna</a>
                <a class="a" href="/KorisnickoUputstvo.aspx">Uputstvo</a>
                <a class="a" href="">O autoru</a> <!--Ovakvo uputstvo se javlja u nekim maturskim zadacima-->
            </div>           
        </div>
        </div>
    </form>
</body>
</html>
