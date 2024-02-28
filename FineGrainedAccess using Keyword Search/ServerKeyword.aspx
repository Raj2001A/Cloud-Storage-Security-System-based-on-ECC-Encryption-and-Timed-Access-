<%@ Page Title="" Language="C#" MasterPageFile="~/Server.master" AutoEventWireup="true" CodeFile="ServerKeyword.aspx.cs" Inherits="ServerKeyword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <table style="width: 100%; color: #000000">
        <tr>
            <td style="width: 39px">
                <strong>
            </td>
            <td colspan="2" style="text-align: center">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Keyword Based Ranking"></asp:Label>
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="FileId" HeaderText="Id" />
                        <asp:BoundField DataField="OwerName" HeaderText="OwnerName" />
                        <asp:BoundField DataField="FileName" HeaderText="FileName" />
                        <asp:BoundField DataField="FileSize" HeaderText="Size" />
                         <asp:BoundField DataField="Keyword" HeaderText="KeyWord" />
                          <asp:BoundField DataField="Rank" HeaderText="SearchCount" />
                       <asp:TemplateField HeaderText = "Rank" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>
    </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 39px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                </strong>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

