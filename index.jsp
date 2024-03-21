<%
    if(session.getAttribute("name") == null)
    {
    response.sendRedirect("login.jsp");
    }
 %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />

<meta name="author" content="" />


<title>Student results </title>
<style>
         table {
            width: 100%;
            border-collapse: collapse;
        }
         tr:hover {
            background-color: #f5f5f5; /* Change background color on hover */
        }
        
        th, td {
            padding: 8px; /* Add padding to table cells */
            border: 1px solid #ddd; /* Add border to table cells */
            font-size: 16px; /* Increased text size */
        }

        @media only screen and (max-width: 768px) {
            th, td {
                padding: 6px; /* Adjust padding for smaller screens */
                font-size: 10px; /* Decrease text size for smaller screens */
            }
        }
        
        
    </style>



<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body>

<body>

  <!-- Header -->
  <section id="header">
    <div class="header container">
      <div class="nav-bar">
        <div class="brand">
          <a href="#hero">
            <h1><span>Kits</span>warangal </h1>
          </a>
        </div>
        <div class="nav-list">
          <div class="hamburger">
            <div class="bar"></div>
          </div>
          <ul>
            <li><a href="#hero" data-after="Home">Home</a></li>
            
            
            <li><a href="#projects" data-after="Projects">leaderboard</a></li>
            
            
            
            
            <li><a href="#about" data-after="About">topper</a></li>
            <li><a href="#contact" data-after="Contact">search</a></li>
            
             <li><a href="Logout" data-after="Service">Logout</a></li>
             
          </ul>
        </div>
      </div>
    </div>
  </section>
  <!-- End Header -->






  <!-- Hero Section  -->
  <section id="hero">
    <div class="hero container">
      <div>
        <h1>Welcome to, <span></span></h1>
        <h1>Kits Warangal <span></span></h1>
        <h1>6CSE2 <span></span></h1>
        <a href="#projects" type="button" class="cta"><marquee>RESULTS</marquee></a>
      </div>
    </div>
  </section>
  <!-- End Hero Section  -->

  
  
  <!-- Projects Section -->
  <section id="projects">
    <div class="projects container">
        <h1 class="section-title">leader<span>board</span>  <br> 
        
         </h1>
  
<%@ page import="java.sql.*" %>

<%
ResultSet rs = null;
Connection con = null;
PreparedStatement ps = null;

String selectedTable = request.getParameter("table"); 

if(selectedTable == null || selectedTable.isEmpty()) {
    selectedTable = "minor"; 
}

String query = "SELECT * FROM " + selectedTable + " ORDER BY marks DESC LIMIT 13";


try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root", "nithish");
    ps = con.prepareStatement(query);
    rs = ps.executeQuery();
    
    
    String topScorerName = "";
    String toproll="";
    int topdaa=0;
    int topdwdm=0;
    int topiot=0;
    int topdm=0;
    int topstm=0;
    int topmarks=0;
    if (rs.next()) {
        topScorerName = rs.getString("Name");
        toproll = rs.getString("roll");
        topdaa=rs.getInt("daa");
        topdwdm=rs.getInt("dwdm");
        topiot=rs.getInt("iot");
        topdm=rs.getInt("dm");
        topstm=rs.getInt("stm");
        topmarks=rs.getInt("marks");
        
        

        
    }
    
    
%>

<!-- Dropdown to select table -->
<form method="get">
    <select name="table">
  
        
       <option value="" <%= (selectedTable.equals("")) ? "selected" : "" %>>select exam</option>
    <option value="minor" <%= (selectedTable.equals("minor")) ? "selected" : "" %>>minor-1</option>
    <option value="minor2" <%= (selectedTable.equals("minor2")) ? "selected" : "" %>>minor-2</option>
    <option value="mid" <%= (selectedTable.equals("mid")) ? "selected" : "" %>>mid-1</option>
    <option value="mid2" <%= (selectedTable.equals("mid2")) ? "selected" : "" %>>mid-2</option>
        
        <!-- Add more options for other tables -->
    </select>
    <input type="submit" value="Submit">
</form>

<table border="20px" >
    <tr>
        <th>Roll</th>
        <th>Name</th>
    
         <th>Daa</th>
        <th>DwdM</th>
        <th>IOt</th>
         <th>DM</th>
        <th>Stm</th>
            <th>Marks</th>
        
        
    </tr>
    <% while (rs.next()) { %>
    <tr>
        <td><%= rs.getString("roll") %></td>
        <td><%= rs.getString("Name") %></td>
      
        <td><%= rs.getInt("daa") %></td>
        <td><%= rs.getInt("dwdm") %></td>
        <td><%= rs.getInt("iot") %></td>
        <td><%= rs.getInt("dm") %></td>
        <td><%= rs.getInt("stm") %></td>
          <td><%= rs.getInt("marks") %></td>
      
    </tr>
    <% } %>
</table>

 






      </div>
   

</section>

         
   
   
      
   
  <!-- About Section -->
  <section id="about">
    <div class="about container">
      <div class="col-left">
        <div class="about-img">
          <img src="./images/std.jpg">
        </div>
      </div>
      <div class="col-right">
        <h1 class="section-title">Class <span>topper</span></h1>
        <h2></h2>
        <p> 
        
        
              
        
        
         </p>
        <a href=" "  class="cta">Student Name: <%= topScorerName %>  <br>  ROLL: <%= toproll %> <br>  DAA: <%= topdaa %>
        <br>   DWDM: <%= topdwdm %> <br>  IOT: <%= topiot %>   <br>  DM: <%= topdm %> <br>  STM: <%= topstm %>
         <br>  TOTAL MARKS: <%= topmarks %></a>
      </div>
         
      
      
      
      
      
    </div>
  </section>
  
  
<%
} catch (Exception e) {
    out.print(e);
}
%>
  
  <!-- End About Section -->

  <!-- Contact Section -->
  <section id="contact">
    <div class="contact container">
      <div>
        <h1 class="section-title">Search <span>student</span></h1>
      </div>
      <div class="contact-items">
        <div class="contact-item">
          <div class="icon"><img src="https://img.icons8.com/3d-fluency/94/student-male--v1.png" /></div>
          <div class="contact-info">
            <h1>Student  name</h1>
           
          </div>
        </div>
        <div class="contact-item">
          <div class="icon"><img src="https://img.icons8.com/color/96/checked-identification-documents.png" alt="checked-identification-documents" /></div>
          <div class="contact-info">
            <h1>RollNumber</h1>
            
          </div>
        </div>
        <div class="contact-item">
          <div class="icon"><img src="https://img.icons8.com/fluency/48/marker.png" /></div>
          <div class="contact-info">
            <h1>CLASS/SECTION</h1>
            
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Contact Section -->

  <!-- Footer -->
  <section id="footer">
    <div class="footer container">
      <div class="brand">
        <h1><span>K</span>its <span>W</span>arangal</h1>
      </div>
      <div class="social-icon">
        <div class="social-item">
          <a  href="https://www.linkedin.com/feed/"> 
            <img src="https://img.icons8.com/color/48/linkedin.png" alt="linkedin"/> </a>   
        
        </div>
        <div class="social-item">
          <a href="https://instagram.com/nithish_129_?igshid=ZDdkNTZiNTM=" >
             <img class=" im" src="https://img.icons8.com/fluency/48/null/instagram-new.png"/></a>
        </div>
        
        <div class="social-item">
          <a href="https://mail.google.com/mail/u/0/#inbox"> <img  src="https://img.icons8.com/fluency/48/null/mail.png"/></a>
        </div>
      </div>
      
      <p>Copyright © 2024 kitsw. All rights reserved</p>
       <p> <span id="count">0</span> viewers</p>
    </div>
  </section>
  
  
  
  
  
  
  
  <!-- End Footer -->



	
	
	
	
	
	
	
	
	
	
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
