xxxxxxxxxxxxxxxxxxxxxxxx ASP.NET Code Snippet start xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="Form1" runat="server">
        <table>
            <tr>
                <td>User:</td><td><asp:TextBox ID="user" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password:</td><td><br /><asp:textbox TextMode="password" id="pass" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:button Text="Login" runat="server" id="btn" onClick="submit"/></td>
            </tr>
        </table>
    </form>
</asp:Content>

//server side Submit button method

protected void submit (object sender, EventArgs e)
{
    string query1 = "Select username, password from admin where username <> 'admin' and password = '" + pass.Text.Trim() + "' ";

    try
        {
            DataSet dSet1 = new DataSet();
            dSet1 = fetchWebDB(query1);
        }

    DataSet fetchWebDB(string query)
        {
            // connect to data source
            OleDbConnection myConn = new OleDbConnection("Provider=SQLOLEDB;Data Source=.;Initial Catalog=AMS;User ID=sa;Password=pass@123");
            myConn.Open();
            // initialize dataadapter with query
            OleDbDataAdapter myAdapter = new OleDbDataAdapter(query, myConn);

            // initalize and fill dataset with query results
            DataSet myData = new DataSet();
            myAdapter.Fill(myData);
            myConn.Close();

            // return dataset
            return myData;
        }
}
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx ASP.Net Code snippet end xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
