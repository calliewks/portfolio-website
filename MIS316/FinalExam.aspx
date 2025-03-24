<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="FinalExam.aspx.cs" Inherits="MIS316_FinalExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <asp:Panel ID="pnlChooseSupplier" runat="server">
        <asp:DropDownList ID="ddlChooseASupplier" runat="server" AppendDataBoundItems="True" CausesValidation="True" DataSourceID="dsSupplier" DataTextField="supplierName" DataValueField="supplierId" ValidationGroup="supply">
            <asp:ListItem Value=" ">--- Choose a supplier ---</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvSupplier" runat="server" ControlToValidate="ddlChooseASupplier" ErrorMessage="* required" ForeColor="Red" ValidationGroup="supply"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnLoadRecords" runat="server" OnClick="btnLoadRecords_Click" Text="Load Records" ValidationGroup="supply" />
        <br />
        <asp:SqlDataSource ID="dsSupplier" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT supplierName, supplierId FROM Supplier ORDER BY supplierName"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="pnlTwo" runat="server" Visible="False">
        <asp:GridView ID="gvProducts" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="productId" DataSourceID="dsProducts" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="listPrice" HeaderText="List Price" SortExpression="listPrice">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="packagingDesc" HeaderText="Packaging Description" SortExpression="packagingDesc" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnGoBack" runat="server" OnClick="btnGoBack_Click" Text="Go Back" />
        <br />
        <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT productId, productName, listPrice, packagingDesc FROM Product WHERE (supplierId = @supplierId) ORDER BY productName">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlChooseASupplier" Name="supplierId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

