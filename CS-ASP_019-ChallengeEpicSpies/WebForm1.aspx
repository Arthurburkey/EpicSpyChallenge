<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CS_ASP_019_ChallengeEpicSpies.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/epic-spies-logo.jpg" Width="170px" />
        <br />
        <br />
        <span class="auto-style1"><strong>Spy New Assignment Form</strong><br />
        <br />
        Spy Code Name:<asp:TextBox ID="codeNameBox" runat="server"></asp:TextBox>
        <br />
        <br />
        New Assignment Name:<asp:TextBox ID="newAssignmentNameBox" runat="server"></asp:TextBox>
        <br />
        <br />
        End Date of Previous Assignment<br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        Start Date of New Assignment
        <br />
        <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
        <br />
        Projected End Date of New Assignment<br />
        <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="assignButton" runat="server" OnClick="assignButton_Click" Text="Assign Sply" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
        <br />
        </span>
        <br />
    
    </div>
    </form>
</body>
</html>
