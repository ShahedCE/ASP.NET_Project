<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="My_True_Care.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <center> <h1> Pay your Bill </h1> </center>
  
        <div class="container">
        <div class="row">
    <div class="col-md-7 mx-auto">

         <div>
          <div style="font-size:x-large; background-image: url('imgs/Background.png');" align="Left" ><br />
              <table class="w-100">
                  <tr>
                      <td>Name</td>
                      <td>Contact Number</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          User ID</td>
                      <td>
                          Amount</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Appointment Details</td>
                      <td>
                          Date</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                      </td>
                      <td> 
                        
                              <asp:TextBox CssClass="form-control"  ID="TextBox4" runat="server" placeholder="Date of Birth" TextMode="Date" ></asp:TextBox>


                       </td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
              </table>
              <br />
     
               
          </div>
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button7" runat="server" Visible="True"  OnClick="Button7_Click" Text="Confirm" />

     </div>

        <br />
        <br />
        <br />
        <br />




             </div>


        </div>

     </div>






</asp:Content>
