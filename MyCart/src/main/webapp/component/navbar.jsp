  <%@page import="com.mycart.entities.Users" %>

<% 

Users user1=(Users)session.getAttribute("current");


%> 




<nav class="navbar navbar-expand-xl bg-dark nav-bg" >
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">ERG_MARKET</a>
    
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      
        
       
     <!--    
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            CATEGORIES
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">GROCERIES</a></li>
            <li><a class="dropdown-item" href="#">MOBILES</a></li>
            <li><a class="dropdown-item" href="#">FASHION</a></li>
            <li><a class="dropdown-item" href="#">ELECTRONICS</a></li>
            <li><a class="dropdown-item" href="#">APPLIANCES</a></li>
            <li><a class="dropdown-item" href="#">HOMENEED</a></li>
            <li><a class="dropdown-item" href="#">BEUTY&TOYS</a></li>
            <li><hr class="dropdown-divider"></li>
          </ul>
        </li> -->
        
         <li class="nav-item">
          <a class="nav-link" href="products.jsp">PRODUCTS</a>
        </li>
      </ul>
      
     
     <%  if(user1==null){
    	  
    	 %>
    	  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userlogin.jsp">LOGIN</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="register.jsp">REGISTER</a>
        </li>
    </ul>
    	 
    	 
    <% 
    	 
    }
     
     
     else{
    	 %>
    	 
    	   <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#!"><%-- <%=user1.getName() %> --%></a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="LogoutServlet">logout</a>
        </li>
    </ul>
    	 
    <%  }
    	 
    	 
    	 
    	 
    	 
    	 %>
     
   
     <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    
      
    </div>
  </div>
</nav>