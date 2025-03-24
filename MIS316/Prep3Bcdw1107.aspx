<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="Prep3Bcdw1107.aspx.cs" Inherits="MIS316_Prep3Bcdw1107" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="gvManufaturers" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="manufacturerId" DataSourceID="dsAllManufacturers" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="View Products" ShowSelectButton="True" />
                <asp:BoundField DataField="manufacturerName" HeaderText="Manufacturer Name" SortExpression="manufacturerName" />
                <asp:BoundField DataField="NumberOfProducts" HeaderText="Number Of Products" SortExpression="NumberOfProducts">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="dsAllManufacturers" runat="server" ConnectionString="<%$ ConnectionStrings:mis316ComputerStoreConnectionString %>" SelectCommand="SELECT Manufacturers.manufacturerId, Manufacturers.manufacturerName, COUNT(Products.productId) AS NumberOfProducts FROM Manufacturers INNER JOIN Products ON Manufacturers.manufacturerId = Products.manufacturerId GROUP BY Manufacturers.manufacturerId, Manufacturers.manufacturerName ORDER BY Manufacturers.manufacturerName"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="productId" DataSourceID="dsAllProductsByManufacturer" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
                <asp:BoundField DataField="price" DataFormatString="{0:C}" HeaderText="List Price" SortExpression="price">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="outOfStock" HeaderText="Out of Stock?" SortExpression="outOfStock">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="discountedPrice" DataFormatString="{0:C}" HeaderText="Discounted Price" SortExpression="discountedPrice">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="dsAllProductsByManufacturer" runat="server" ConnectionString="<%$ ConnectionStrings:mis316ComputerStoreConnectionString %>" SelectCommand="SELECT productId, productName, price, outOfStock, manufacturerId, price * 0.9 AS discountedPrice FROM Products WHERE (manufacturerId = @manufacturerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvManufaturers" Name="manufacturerId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
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
</asp:Content>

