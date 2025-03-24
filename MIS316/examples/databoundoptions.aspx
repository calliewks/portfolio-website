<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="databoundoptions.aspx.cs" Inherits="MIS316_examples_databoundoptions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="productId" DataSourceID="dsAllProducts" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="productId" HeaderText="Product ID" InsertVisible="False" ReadOnly="True" SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" DataFormatString="{0:C}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="taxAmount" DataFormatString="{0:C}" HeaderText="Tax Amount" SortExpression="taxAmount">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="outOfStock" HeaderText="Out of Stock" SortExpression="outOfStock">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="manufacturerId" HeaderText="Manufacurer ID" SortExpression="manufacturerId" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="dsAllProducts" runat="server" ConnectionString="<%$ ConnectionStrings:mis316ComputerStoreConnectionString %>" SelectCommand="SELECT productId, productName, price, outOfStock, manufacturerId, price * 0.07 AS taxAmount FROM Products ORDER BY productName"></asp:SqlDataSource>
    </p>
</asp:Content>

