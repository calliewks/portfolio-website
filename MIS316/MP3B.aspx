<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="MP3B.aspx.cs" Inherits="MIS316_MP3B" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlOne" runat="server">
        <br />
        <br />
        <asp:DropDownList ID="ddlCustomers" runat="server" AppendDataBoundItems="True" CausesValidation="True" DataSourceID="dsCustomerNames" DataTextField="CustomerName" DataValueField="customerId">
            <asp:ListItem Value=" ">- Choose a Customer -</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvChooseCustomer" runat="server" ControlToValidate="ddlCustomers" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnLoadOrders" runat="server" Text="Load Orders" OnClick="btnLoadOrders_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="dsCustomerNames" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT customerId, lastName + ', ' + firstName AS CustomerName FROM Customer ORDER BY CustomerName"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="pnlTwo" runat="server" Visible="False">
        <br />
        <table>
            <tr>
                <td style="text-align: left; vertical-align: top">
                    <asp:CheckBox ID="cbCustomerDetails" runat="server" OnCheckedChanged="cbCustomerDetails_Checked" Text="Customer Details" AutoPostBack="True" />
                </td>
                <td>
                    <asp:DetailsView ID="dvCustomerDetails" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="customerId" DataSourceID="dsCustomerDetails" ForeColor="#333333" GridLines="None" Visible="False">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                            <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                            <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblNoOrders" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="gvLoadedOrder" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="orderid" DataSourceID="dsLoadedOrder" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanging="gvLoadedOrder_SelectedIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="orderNumber" HeaderText="Order #" SortExpression="orderNumber" />
                <asp:BoundField DataField="orderDate" DataFormatString="{0:d}" HeaderText="Date Of Order" SortExpression="orderDate">
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="totalAmount" DataFormatString="{0:C}" HeaderText="Total Amount" SortExpression="totalAmount">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="numberOfProducts" HeaderText="# Products" ReadOnly="True" SortExpression="numberOfProducts">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" SelectText="View Products" ShowSelectButton="True" />
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
        <asp:Button ID="btnGoBack" runat="server" Text="Go Back" OnClick="btnGoBack_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="dsCustomerDetails" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT customerId, firstName, lastName, city, country, phone FROM Customer WHERE (customerId = @customerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCustomers" Name="customerId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsLoadedOrder" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT [Order].orderid, [Order].orderDate, [Order].orderNumber, [Order].totalAmount, [Order].customerId, COUNT(OrderItem.productId) AS numberOfProducts FROM [Order] INNER JOIN OrderItem ON [Order].orderid = OrderItem.orderId GROUP BY [Order].orderid, [Order].orderDate, [Order].orderNumber, [Order].totalAmount, [Order].customerId HAVING ([Order].customerId = @customerId) ORDER BY [Order].orderDate DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCustomers" Name="customerId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="pnlThree" runat="server" Visible="False">
        <br />
        <asp:DetailsView ID="dvSelectedProduct" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateRows="False" DataKeyNames="orderid" DataSourceID="dsSelectedProduct">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="orderid" HeaderText="Order #" InsertVisible="False" ReadOnly="True" SortExpression="orderid" />
                <asp:BoundField DataField="orderDate" HeaderText="Date of Order" SortExpression="orderDate" DataFormatString="{0:d}" />
                <asp:BoundField DataField="totalAmount" HeaderText="Total Amount" SortExpression="totalAmount" />
                <asp:BoundField DataField="Expr1" HeaderText="# Products" ReadOnly="True" SortExpression="Expr1" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <br />
        <asp:GridView ID="gvProductList" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="productId" DataSourceID="dsProducts" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
                <asp:BoundField DataField="packagingDesc" HeaderText="Packaging" SortExpression="packagingDesc" />
                <asp:BoundField DataField="isDiscontinued" HeaderText="Discontinued?" SortExpression="isDiscontinued">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="unitPrice" DataFormatString="{0:C}" HeaderText="Unit Price" SortExpression="unitPrice">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Qty" SortExpression="quantity">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="totalAmount" DataFormatString="{0:C}" HeaderText="Total Price" ReadOnly="True" SortExpression="totalAmount">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:CommandField SelectText="View Supplier" ShowSelectButton="True" />
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
        <asp:FormView ID="fvSelectedSupplier" runat="server" CellPadding="4" DataKeyNames="supplierId,productId" DataSourceID="dsSelectedSupplier" ForeColor="#333333">
            <EditItemTemplate>
                supplierId:
                <asp:Label ID="supplierIdLabel1" runat="server" Text='<%# Eval("supplierId") %>' />
                <br />
                supplierName:
                <asp:TextBox ID="supplierNameTextBox" runat="server" Text='<%# Bind("supplierName") %>' />
                <br />
                contactPerson:
                <asp:TextBox ID="contactPersonTextBox" runat="server" Text='<%# Bind("contactPerson") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                country:
                <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                productId:
                <asp:Label ID="productIdLabel1" runat="server" Text='<%# Eval("productId") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                supplierName:
                <asp:TextBox ID="supplierNameTextBox" runat="server" Text='<%# Bind("supplierName") %>' />
                <br />
                contactPerson:
                <asp:TextBox ID="contactPersonTextBox" runat="server" Text='<%# Bind("contactPerson") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                country:
                <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td><strong>Supplier:</strong></td>
                        <td>
                            <asp:Label ID="supplierNameLabel" runat="server" Text='<%# Bind("supplierName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; text-align: left"><strong>Contact:</strong></td>
                        <td>
                            <asp:Label ID="contactPersonLabel" runat="server" Text='<%# Bind("contactPerson") %>' />
                            <br />
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                            &nbsp;,
                            <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
                            <br />
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <br />
        <br />
        <asp:Button ID="btnBackAgain" runat="server" Text="Go Back" OnClick="btnBackAgain_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="dsSelectedProduct" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT [Order].orderid, [Order].orderDate, [Order].orderNumber, [Order].totalAmount, COUNT(Product.productId) AS Expr1 FROM OrderItem INNER JOIN Product ON OrderItem.productId = Product.productId INNER JOIN [Order] ON OrderItem.orderId = [Order].orderid GROUP BY [Order].orderDate, [Order].orderNumber, [Order].totalAmount, [Order].orderid HAVING ([Order].orderid = @orderId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvLoadedOrder" Name="orderId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT Product.productId, Product.productName, Product.listPrice, Product.packagingDesc, Product.isDiscontinued, OrderItem.quantity, OrderItem.unitPrice * OrderItem.quantity AS totalAmount, OrderItem.unitPrice, Product.supplierId FROM Product INNER JOIN OrderItem ON Product.productId = OrderItem.productId WHERE (OrderItem.orderId = @orderId) ORDER BY Product.productName">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvLoadedOrder" Name="orderId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsSelectedSupplier" runat="server" ConnectionString="<%$ ConnectionStrings:mis316SpiceSuppliesConnectionString %>" SelectCommand="SELECT Supplier.supplierId, Supplier.supplierName, Supplier.contactPerson, Supplier.city, Supplier.country, Supplier.phone, Product.productId FROM Supplier INNER JOIN Product ON Supplier.supplierId = Product.supplierId WHERE (Product.productId = @productId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvProductList" Name="productId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

