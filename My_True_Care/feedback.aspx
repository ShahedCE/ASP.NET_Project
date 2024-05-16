<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="My_True_Care.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <center>   <table class="auto-style2">
        <tr>
            <td class="auto-style3 " style="font-family: 'Arial Black'"  >
                Feedback</td>
        </tr>
        <tr>
            <td class="auto-style4">Email Address</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Width="438px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Anything you want to say<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="146px" Width="450px"></asp:TextBox>
            </td>
        </tr>
      
        <tr>
           
            <td class="auto-style5">
                <br />
                <asp:Button CssClass="btn btn-info" ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click" />
                <br />
                <br />
                     <a href="home.aspx"> << Back to Home  </a>

            </td>
        </tr>
    </table>

       </center>


    <br />
    

</asp:Content>
