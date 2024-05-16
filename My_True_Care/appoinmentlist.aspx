<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="appoinmentlist.aspx.cs" Inherits="My_True_Care.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="container-fluide">
               <center>  <h2>Available Pathology Test
</h2> </center>
        <div class="row">
    <div class="col-md-6">

         <div class="card">
           <div class="card-body">            
               
          
  
               

 <!--test-1-->          
         <div class="row">
    <div class="col">
        
  <div class="form-group">
      <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Complete Blood Count (CBC)" OnClick="Button1_Click" />

</div> 
         </div>
        </div>

 <!--test-2-->  
         <div class="row">
    <div class="col">
        
  <div class="form-group">
     <asp:Button class="btn btn-info btn-block btn-lg" ID="Button4" runat="server" Text="Basic Metabolic Panel (BMP)" OnClick="Button4_Click" />
</div> 
         </div>
        </div>
               <!--test-3-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
       <asp:Button class="btn btn-info btn-block btn-lg" ID="Button5" runat="server" Text="Comprehensive Metabolic Panel (CMP)" OnClick="Button5_Click" />

</div> 
         </div>
        </div>
               <!--test-4-->
                <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button6" runat="server" Text="Lipid Panel" OnClick="Button6_Click" />
</div> 
         </div>
        </div>    
               <!--test-5-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button7" runat="server" Text="Liver Function Tests (LFTs)" OnClick="Button7_Click"/>
</div> 
         </div>
        </div>
               <!--test-6-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
       <asp:Button class="btn btn-info btn-block btn-lg" ID="Button8" runat="server" Text="Renal Function Panel (Kidney Function Tests)" OnClick="Button8_Click" />
</div> 
         </div>
        </div>
               <!--test-7-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button9" runat="server" Text="Erythrocyte Sedimentation Rate (ESR)" />
</div> 
         </div>
        </div>                
 
                              <!--test-8-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button10" runat="server" Text="Prothrombin Time (PT) and International" />
</div> 
         </div>
        </div>
               <!--test-9-->
                <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button11" runat="server" Text="Normalized Ratio (INR)" />
</div> 
         </div>
        </div>    
               <!--test-10-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
      <asp:Button class="btn btn-info btn-block btn-lg" ID="Button12" runat="server" Text="Serum Protein Electrophoresis (SPEP)" />
</div> 
         </div>
        </div>
               <!--test-11-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
       <asp:Button class="btn btn-info btn-block btn-lg" ID="Button13" runat="server" Text="Bacterial Culture and Sensitivity (C&S)" />
</div> 
         </div>
        </div>
   




        

          
             </div>
             </div>
        </div>




            <!--2nd Card-->
                   
            <div class="col-md-6">

                          <div class="card">
           <div class="card-body">

  <!--test-1-->          
         <div class="row">
    <div class="col">
        
  <div class="form-group">
      <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Thyroid Function Tests (TFTs)" OnClick="Button2_Click" />

</div> 
         </div>
        </div>

 <!--test-2-->  
         <div class="row">
    <div class="col">
        
  <div class="form-group">
     <asp:Button class="btn btn-info btn-block btn-lg" ID="Button3" runat="server" Text="Urinalysis (UA)" OnClick="Button3_Click" />
</div> 
         </div>
        </div>
               <!--test-3-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
       <asp:Button class="btn btn-info btn-block btn-lg" ID="Button14" runat="server" Text="Blood Glucose Test" OnClick="Button14_Click" />

</div> 
         </div>
        </div>
               <!--test-4-->
                <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button15" runat="server" Text="Coagulation Panel (Clotting Factors Test)" />
</div> 
         </div>
        </div>    
               <!--test-5-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button16" runat="server" Text="Electrolyte Panel"/>
</div> 
         </div>
        </div>
               <!--test-6-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
       <asp:Button class="btn btn-info btn-block btn-lg" ID="Button17" runat="server" Text="Fecal Occult Blood Test (FOBT)" />
</div> 
         </div>
        </div>
               <!--test-7-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button18" runat="server" Text="Hemoglobin A1c (HbA1c)" />
</div> 
         </div>
        </div>                
 
                              <!--test-8-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button19" runat="server" Text="Rheumatoid Factor (RF)" />
</div> 
         </div>
        </div>
               <!--test-9-->
                <div class="row">
    <div class="col">
        
  <div class="form-group">
        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button20" runat="server" Text="Serum Iron Studies" />
</div> 
         </div>
        </div>    
               <!--test-10-->
                        <div class="row">
    <div class="col">
        
  <div class="form-group">
      <asp:Button class="btn btn-info btn-block btn-lg" ID="Button21" runat="server" Text="C-Reactive Protein (CRP)" />
</div> 
         </div>
        </div>
            

         </div>
        </div>
         
              
         </div>







        </div>
                 <a href="home.aspx"> << Back to Home  </a>
            </div>







</asp:Content>
