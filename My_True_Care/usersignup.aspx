<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="My_True_Care.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="container">
        <div class="row">
    <div class="col-md-8 mx-auto">

         <div class="card">
           <div class="card-body">

               <div class="row">

                   <div class="col">
                       <center>
                           <img src="images/user.jpeg"  height="80" weigth="50"/>
                       </center>
                   </div>
               </div>


                   <div class="row">
        <div class="col">
            <center>
              <h4>User Sign Up</h4>
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
  
               

 <!--Row-1-->          
               <div class="row">
    <div class="col-md-6">
        <label>Full Name</label>
 <div class="form-group">
     <asp:TextBox CssClass="form-control"  ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>

 </div>
    </div>


    <div class="col-md-6">
               <label>Date of Birth</label>
     <div class="form-group">
    <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date" ></asp:TextBox>

    </div>
         </div>
</div>
 <!--End of Row-1-->


                <!--Row-2-->          
               <div class="row">
    <div class="col-md-6">
        <label>Contact No.</label>
 <div class="form-group">
     <asp:TextBox class="form-control"  ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"> </asp:TextBox>

 </div>
    </div>


    <div class="col-md-6">
               <label>Email ID</label>
     <div class="form-group">
    <asp:TextBox class="form-control"  ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email" ></asp:TextBox>

    </div>
         </div>
                   <div class="col-md-6">
           <label>City</label>
 <div class="form-group">
<asp:TextBox class="form-control"  ID="TextBox8" runat="server" placeholder="City" ></asp:TextBox>

</div>
     </div>
</div>
 <!--End of Row-2-->

               <!--Row-3 address-->          
              <div class="row">
   <div class="col">
       <label>Full Address</label>
<div class="form-group">
    <asp:TextBox class="form-control"  ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"> </asp:TextBox>

</div>
   </div>
         </div>

                     <!--Row-4 id pass-->   
                              <div class="row">
    <div class="col-md-6">
        <label>User ID</label>
 <div class="form-group">
     <asp:TextBox Class="form-control"  ID="TextBox6" runat="server" placeholder="User ID"> </asp:TextBox>

 </div>
    </div>


    <div class="col-md-6">
               <label>Password</label>
     <div class="form-group">
    <asp:TextBox Class="form-control"  ID="TextBox7" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>

    </div>
         </div>
</div>                     <!--Row-4 id pass-->   

                 <!--Row-5 Sign Up-->   
         
    <div class="row">
    <div class="col">
        
  <div class="form-group">

  <asp:Button class="btn btn-success btn-block btn-lg" ID="Button7" runat="server" Visible="True" Text="Sign Up" OnClick="Button7_Click" />

  </div> 
         </div>
        </div>
          <a href="home.aspx"> << Back to Home  </a>
  <br />
  <br />
        

          </div>
             </div>
             </div>


        </div>

     </div>


</asp:Content>
