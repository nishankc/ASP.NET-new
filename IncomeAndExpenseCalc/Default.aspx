<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Styles/bootstrap.css" />
    <script src="Script/canvasjs.min.js"></script>
    <script src="Script/ChartCreation.js"></script>
    
    <title></title>
</head>
<body>
    <div>
        <h1>Income and Expenses Calculator</h1>
        <br />
        <h3>Enter your estimated montly income and expenses, this will then total both and show show much disposable income is remaining. Only fill out the details relevant to you, other fields can be left blank</h3>
    </div>
    <br />
    <form id="form1" runat="server">
        <div>
            <h2>Income</h2>
            <div>
                <asp:Label ID="SalaryLabel" runat="server">Monthly Salary </asp:Label>
                <asp:TextBox ID="SalaryTextBox" runat="server"></asp:TextBox>
    
            </div>
            <div>
                <asp:Label ID="AdditionalIncomeLabel" runat="server">Additional Income </asp:Label>
                <asp:TextBox ID="AdditionalIncomeTextBox" runat="server"></asp:TextBox>
            </div>
        </div>
        <div>
            <h2>Expenses</h2>
            <div>
                <asp:Label ID="MortgageLabel" runat="server">Mortgage/Rent</asp:Label>
                <asp:TextBox ID="MortgageTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="ElectricityLabel" runat="server">Electricity</asp:Label>
                <asp:TextBox ID="ElectricityTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="GasLabel" runat="server">Gas</asp:Label>
                <asp:TextBox ID="GasTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="TvLabel" runat="server">T.V/Satellite/Cable</asp:Label>
                <asp:TextBox ID="TvTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="PhoneLabel" runat="server">Phone/Mobile Phone</asp:Label>
                <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="InternetLabel" runat="server">Internet</asp:Label>
                <asp:TextBox ID="InternetTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="PetrolLabel" runat="server">Petrol</asp:Label>
                <asp:TextBox ID="PetrolTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="InsuranceLabel" runat="server">Insurance</asp:Label>
                <asp:TextBox ID="InsuranceTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="OtherExpLabel" runat="server">Other/Misc Expenses</asp:Label>
                <asp:TextBox ID="OtherExpTextBox" runat="server"></asp:TextBox>
            </div>
        </div>
        <div>
            <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" />
        </div>
        <div>
            <asp:Label ID="DisposableLabel" runat="server"></asp:Label>
        </div>
        <div id="chartContainerExp" style="height: 400px; width: 100%;">
            <div id="chartPlaceholderExp"></div>
            <div id="noDataPlaceholderExp" class="h1"></div>
        </div>
        <div id="chartContainerIncome" style="height: 400px; width: 100%;">
            <div id="chartPlaceholderIncome"></div>
            <div id="noDataPlaceholderIncome" class="h1"></div>
        </div>
    </form>
</body>
</html>
