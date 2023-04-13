<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program.aspx.cs" Inherits="B14.Program" %>

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
                

                    <asp:Label ID="Label1" runat="server" Text="Datum: " ForeColor="#345c96"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="programskeSeme/11.04.2022.txt">11.04.2022</asp:ListItem>
                        <asp:ListItem Value="programskeSeme/12.04.2022.txt">12.04.2022</asp:ListItem>
                        <asp:ListItem Value="programskeSeme/13.04.2022.txt">13.04.2022</asp:ListItem>
                        <asp:ListItem Value="programskeSeme/16.05.2022.txt">16.05.2022</asp:ListItem>
                        <asp:ListItem Value="programskeSeme/17.05.2022.txt">17.05.2022</asp:ListItem>
                        <asp:ListItem Value="programskeSeme/18.05.2022.txt">18.05.2022</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Tip emisije: " ForeColor="#345c96"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Pronađi" OnClick="Button1_Click" />
                    <br />

                    <hr class="fading_line"/>

                    <div class="gridView">
                        <!--GridView je sirine 1152px jer je to 3/5 od 1920 tj. ekrana sirine 1920px, a prema dizajnu zadatka tabela zauzima otprilike 3/5 stranice.
                            TODO Uraditi procentima da bi bilo isto na ekranima razlicite sirine-->
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" ForeColor="#345c96" Height="192px" Width="1152px" CellPadding="0" RowStyle-HorizontalAlign="Left">
                            <Columns>
                                <asp:BoundField DataField="vreme" HeaderText="Vreme">
                                    <HeaderStyle BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="naziv" HeaderText="Naziv emisije">
                                    <HeaderStyle BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                                </asp:BoundField>
                                <asp:ImageField DataImageUrlField="slika" HeaderText="Tip emisije">
                                    <ControlStyle Height="50px" Width="50px" />
                                    <HeaderStyle BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                                </asp:ImageField>
                            </Columns>
                            <HeaderStyle BackColor="#264c73" BorderColor="White" BorderStyle="Solid" ForeColor="White" Wrap="False" />
                        </asp:GridView>

                    </div>

                    <br />
                


            </div>
        </div>
        <div class="footer">
            <div class="fcol1">
                Elektrotehnička škola "Zemun" Beograd
            </div>
            <div class="fcol2">              
                <a class="a" href="/KorisnickoUputstvo.aspx">Uputstvo</a>
                <a class="a" href="/Kontakt.aspx">Kontakt</a>
                <a class="a" href="">O autoru</a>               
            </div>           
        </div>
        </div>
    </form>
</body>
</html>
