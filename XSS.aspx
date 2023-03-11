<%@ Page language="C#" autoeventwireup="true" 

CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Demonstrating Cross Site Scripting </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Panel ID="commentPrompt" runat="server">
       What is your comment?
       <asp:TextBox ID="commentInput" 

          runat="server" TextMode="MultiLine" /><br />
       <asp:Button ID="submit" runat="server" 

        Text="Submit" />
       </asp:Panel>

       <asp:Panel ID="commentDisplay" runat="server" 

        Visible="false">
       Comment: 

<asp:Literal ID="commentOutput" runat="server" />
       </asp:Panel>
    </div>
    </form>
</body>
</html>
