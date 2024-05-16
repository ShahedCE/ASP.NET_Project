<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="My_True_Care.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="container">
        <div class="row">
    <div class="col-md-6 mx-auto">

         <div class="card">
           <div class="card-body">

               <div class="row">

                   <div class="col">
                       <center>
                           <img src="images/admin.jpeg" height="250" weigth="260" />
                       </center>
                   </div>
               </div>


                   <div class="row">
        <div class="col">
            <center>
              <h3>Admin Login</h3>
            </center>
        </div>
    </div>
               
                   <div class="row">
        <div class="col">
            <center>
              <hr />
            </center>
        </div>
    </div>

    <div class="row">
    <div class="col">
        <label>Admin ID</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control"  ID="TextBox1" runat="server" placeholder="User ID"></asp:TextBox>

        </div>
         <label>Password</label>
          <div class="form-group">
     <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

 </div>
    </div>
</div>

         <div class="form-group">
             <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

       </div>






         </div>           
         </div>
          <a href="home.aspx"> << Back to Home  </a>
  <br />
  <br />
        

          </div>

        </div>

     </div>

</asp:Content>
