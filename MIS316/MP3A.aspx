<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="MP3A.aspx.cs" Inherits="MIS316_MP3A" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-right: 0px;
        }
        .auto-style4 {
            height: 119px;
        }
        .auto-style5 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>Choose a Supplier:</td>
            <td>
                <asp:DropDownList ID="ddlSupplier" runat="server" DataSourceID="dsSupplier" DataTextField="supplierName" DataValueField="supplierId" AppendDataBoundItems="True" CausesValidation="True" OnSelectedIndexChanged="ddlSupplier_SelectedIndexChanged" AutoPostBack="True" ValidationGroup="supplier">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvSupplier" runat="server" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddlSupplier" ValidationGroup="supplier"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Choose a Product:</td>
            <td><asp:DropDownList ID="ddlProduct" runat="server" DataSourceID="dsProduct" DataTextField="productName" DataValueField="productId" AppendDataBoundItems="True" CausesValidation="True" AutoPostBack="True" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged" ValidationGroup="product">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvProduct" runat="server" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddlProduct" ValidationGroup="product"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <asp:FormView ID="fvSupplierandProduct" runat="server" DataKeyNames="supplierId,productId" DataSourceID="dsSupplierAndProductInfo" CssClass="auto-style2" Visible="False" OnPageIndexChanging="fvSupplierandProduct_PageIndexChanging">
        <EditItemTemplate>
            supplierName:
            <asp:TextBox ID="supplierNameTextBox" runat="server" Text='<%# Bind("supplierName") %>' />
            <br />
            supplierId:
            <asp:Label ID="supplierIdLabel1" runat="server" Text='<%# Eval("supplierId") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />
            productId:
            <asp:Label ID="productIdLabel1" runat="server" Text='<%# Eval("productId") %>' />
            <br />
            productName:
            <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
            <br />
            listPrice:
            <asp:TextBox ID="listPriceTextBox" runat="server" Text='<%# Bind("listPrice") %>' />
            <br />
            packagingDesc:
            <asp:TextBox ID="packagingDescTextBox" runat="server" Text='<%# Bind("packagingDesc") %>' />
            <br />
            isDiscontinued:
            <asp:CheckBox ID="isDiscontinuedCheckBox" runat="server" Checked='<%# Bind("isDiscontinued") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            supplierName:
            <asp:TextBox ID="supplierNameTextBox" runat="server" Text='<%# Bind("supplierName") %>' />
            <br />

            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />

            productName:
            <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
            <br />
            listPrice:
            <asp:TextBox ID="listPriceTextBox" runat="server" Text='<%# Bind("listPrice") %>' />
            <br />
            packagingDesc:
            <asp:TextBox ID="packagingDescTextBox" runat="server" Text='<%# Bind("packagingDesc") %>' />
            <br />
            isDiscontinued:
            <asp:CheckBox ID="isDiscontinuedCheckBox" runat="server" Checked='<%# Bind("isDiscontinued") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            <table>
                <tr>
                    <td class="auto-style4" style="vertical-align: top"><strong><span class="auto-style5">Supplier Information</span></strong><table style="vertical-align: top">
                        <tr>
                            <td>Name: </td>
                            <td>
                                <asp:Label ID="supplierNameLabel" runat="server" Text='<%# Bind("supplierName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Location: </td>
                            <td>
                                <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                ,
                                <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
                            </td>
                        </tr>
                        </table>
                    </td>
                    <td class="auto-style4" style="vertical-align: top"><span class="auto-style5"><strong>Product Information</strong></span><table>
                        <tr>
                            <td>Name:</td>
                            <td>
                                <asp:Label ID="productNameLabel0" runat="server" Text='<%# Bind("productName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>List Price:</td>
                            <td>
                                <asp:Label ID="listPriceLabel0" runat="server" Text='<%# Bind("listPrice") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Packaging Description: </td>
                            <td>
                                <asp:Label ID="packagingDescLabel0" runat="server" Text='<%# Bind("packagingDesc") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Discontinued?</td>
                            <td>
                                <asp:CheckBox ID="isDiscontinuedCheckBox0" runat="server" Checked='<%# Bind("isDiscontinued") %>' Enabled="false" />
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
                        </table>
            <br />

        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
    <asp:LinkButton ID="lbContactDetails" runat="server" OnClick="lbContactDetails_Click" Visible="False">Show Contact Details</asp:LinkButton>
    <br />
    <asp:DetailsView ID="dvContactDetails" runat="server" Visible="False" DataSourceID="dsContactDetails" AutoGenerateRows="False" CellPadding="4" DataKeyNames="supplierId" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="contactPerson" HeaderText="Contact Person" SortExpression="contactPerson" />
            <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <br />
    <p>
        <asp:SqlDataSource ID="dsSupplier" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT supplierId, supplierName FROM Supplier ORDER BY supplierName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT productId, productName FROM Product WHERE (supplierId = @supplierId) ORDER BY productName">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSupplier" Name="supplierId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="dsSupplierAndProductInfo" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT Supplier.supplierName, Supplier.city, Supplier.country, Product.productId, Product.productName, Product.listPrice, Product.packagingDesc, Product.isDiscontinued, Supplier.supplierId FROM Supplier INNER JOIN Product ON Supplier.supplierId = Product.supplierId WHERE (Product.productId = @productId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlProduct" Name="productId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="dsContactDetails" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT contactPerson, supplierId, phone FROM Supplier WHERE (supplierId = @supplierId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSupplier" Name="supplierId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

