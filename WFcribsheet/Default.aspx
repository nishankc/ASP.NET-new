<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Crib Sheet for ASP.NET</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>My very first ASP.NET page</h1>
        <asp:Label ID="nameLabel" runat="server" Text="Please Type In Your Name"></asp:Label>
        <asp:TextBox ID="nameTB" runat="server"></asp:TextBox>
        <asp:Button ID="nameButton" runat="server" Text="Click Me" OnClick="nameButton_Click" Width="170px" />
        <br />
        <asp:Label ID="returnNameLabel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <p>Please check or uncheck the box</p>
        <asp:CheckBox ID="CheckBox1" runat="server" Text ="Check or uncheck me" />
        <br />
        <asp:Button ID="checkboxButton" runat="server" Text="Button" OnClick="checkboxButton_Click" />
        <br />
        <asp:Label ID="checkboxResult" runat="server" Text=""></asp:Label> 
        <br />
        <asp:Label ID="radioLabel" runat="server" Text="Please click the radio button"></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" />
        <br />
        <asp:Button ID="RadioButton_button" runat="server" Text="Click me!!" OnClick="RadioButton_button_Click" />
        <br />
        <asp:Label ID="resultRadioButton" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="List of radio Buttons"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Text ="one"></asp:ListItem>
            <asp:ListItem Text ="two"></asp:ListItem>
            <asp:ListItem Text ="three"></asp:ListItem>     
        </asp:RadioButtonList>    
        <br />
        <asp:Button ID="radioListButton" runat="server" Text="ClickMe" OnClick="radioListButton_Click" />
        <br />
        <asp:Label ID="listRadioLabel" runat="server" Text=""></asp:Label>
        <br />
        <p>Please click the link below</p>
        <asp:HyperLink ID="HyperLink1" href ="http://www.google.com" runat="server" >Click me!!!!</asp:HyperLink>
        <br />
        
        <asp:HyperLink ID="HyperLink2" href="https://www.pinterest.com/pin/277041814546986238/" runat="server" >
            <asp:Image ID="Image1" src="images/dogbluestaffie.jpg"  runat="server" />
        </asp:HyperLink>


        <br />
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="images/dogbluestaffie.jpg" 
             HotSpotMode="PostBack" OnClick ="imagemap_click" >
            <asp:CircleHotSpot Radius="33" X="44" Y="258" AlternateText="Paw" PostBackValue="Paw" />
            <asp:CircleHotSpot Radius="38" X="57" Y="82" AlternateText="Eye" PostBackValue="Eye" />
        </asp:ImageMap>
        <br />
        <asp:Label ID="imagemaplabel" runat="server" Text=""></asp:Label>
        <br />
        <p>Please Enter some text into the textbox</p>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="3" Height="69px" Width="308px" ></asp:TextBox>
        <br />
        <asp:Button ID="multilineButton" runat="server" Text="Button" OnClick="multilineButton_Click" />
        <br />
        <asp:Label ID="multilineLabel" runat="server" ></asp:Label>
        <br />
        <p>Please Enter In an Email Address</p>
        <div>
            <asp:TextBox ID="tb_email" runat="server" TextMode ="Email" ></asp:TextBox>
            <br />
            <asp:Button ID="EmailButton" runat="server" Text="Confirm Email" OnClick="EmailButton_Click" />
            <br />
            <asp:Label ID="emailLabel" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Display ="Dynamic"></asp:Calendar>
        <br />
        <asp:Label ID="calanderLabel" runat="server" Text=""></asp:Label>
        <br />
        <p>Choose from the list</p>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>asd</asp:ListItem>
            <asp:ListItem>ccc</asp:ListItem>
            <asp:ListItem>vvv</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClientClick="return ReloadPage();" Text="Button" />
        <br />
        <asp:Label ID="dropdownLabel" runat="server" Text=""></asp:Label>
        <br />
        <p>Choose an option</p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="checkBoxButtonList" runat="server" Text="Click to confirm" OnClick="checkBoxButtonList_Click" />
        <br />
        <asp:Label ID="checkBoxLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
