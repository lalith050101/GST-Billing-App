<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head >
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>BILL EASY</title>
       
       <meta name='viewport' content='width=device-width, initial-scale=1'>
		<script src='https://kit.fontawesome.com/a076d05399.js'></script>
		
       <script> 
        function printDiv() { 
            var divContents = document.getElementById("bill").innerHTML; 
            var a = window.open('', '', 'height=500, width=500'); 
            a.document.write('<html>'); 
            a.document.write('<body ><h1> Bill </h1>'); 
            a.document.write(divContents); 
            a.document.write('</body></html>'); 
            a.document.close(); 
            a.print(); 
        } 
    </script> 
       <style>

      	body{
      	
			background-repeat:  no-repeat;
        	background-size:cover;

background-color: #34495e;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25' viewBox='0 0 1600 800'%3E%3Cg %3E%3Cpath fill='%23435667' d='M486 705.8c-109.3-21.8-223.4-32.2-335.3-19.4C99.5 692.1 49 703 0 719.8V800h843.8c-115.9-33.2-230.8-68.1-347.6-92.2C492.8 707.1 489.4 706.5 486 705.8z'/%3E%3Cpath fill='%23526371' d='M1600 0H0v719.8c49-16.8 99.5-27.8 150.7-33.5c111.9-12.7 226-2.4 335.3 19.4c3.4 0.7 6.8 1.4 10.2 2c116.8 24 231.7 59 347.6 92.2H1600V0z'/%3E%3Cpath fill='%2361707a' d='M478.4 581c3.2 0.8 6.4 1.7 9.5 2.5c196.2 52.5 388.7 133.5 593.5 176.6c174.2 36.6 349.5 29.2 518.6-10.2V0H0v574.9c52.3-17.6 106.5-27.7 161.1-30.9C268.4 537.4 375.7 554.2 478.4 581z'/%3E%3Cpath fill='%23707e83' d='M0 0v429.4c55.6-18.4 113.5-27.3 171.4-27.7c102.8-0.8 203.2 22.7 299.3 54.5c3 1 5.9 2 8.9 3c183.6 62 365.7 146.1 562.4 192.1c186.7 43.7 376.3 34.4 557.9-12.6V0H0z'/%3E%3Cpath fill='%237f8c8d' d='M181.8 259.4c98.2 6 191.9 35.2 281.3 72.1c2.8 1.1 5.5 2.3 8.3 3.4c171 71.6 342.7 158.5 531.3 207.7c198.8 51.8 403.4 40.8 597.3-14.8V0H0v283.2C59 263.6 120.6 255.7 181.8 259.4z'/%3E%3Cpath fill='%23939e9f' d='M1600 0H0v136.3c62.3-20.9 127.7-27.5 192.2-19.2c93.6 12.1 180.5 47.7 263.3 89.6c2.6 1.3 5.1 2.6 7.7 3.9c158.4 81.1 319.7 170.9 500.3 223.2c210.5 61 430.8 49 636.6-16.6V0z'/%3E%3Cpath fill='%23a7afb1' d='M454.9 86.3C600.7 177 751.6 269.3 924.1 325c208.6 67.4 431.3 60.8 637.9-5.3c12.8-4.1 25.4-8.4 38.1-12.9V0H288.1c56 21.3 108.7 50.6 159.7 82C450.2 83.4 452.5 84.9 454.9 86.3z'/%3E%3Cpath fill='%23bbc2c3' d='M1600 0H498c118.1 85.8 243.5 164.5 386.8 216.2c191.8 69.2 400 74.7 595 21.1c40.8-11.2 81.1-25.2 120.3-41.7V0z'/%3E%3Cpath fill='%23d0d4d6' d='M1397.5 154.8c47.2-10.6 93.6-25.3 138.6-43.8c21.7-8.9 43-18.8 63.9-29.5V0H643.4c62.9 41.7 129.7 78.2 202.1 107.4C1020.4 178.1 1214.2 196.1 1397.5 154.8z'/%3E%3Cpath fill='%23e5e7e9' d='M1315.3 72.4c75.3-12.6 148.9-37.1 216.8-72.4h-723C966.8 71 1144.7 101 1315.3 72.4z'/%3E%3C/g%3E%3C/svg%3E");

        	background-attachment:fixed;
        	margin:0px;
      	}
      	
	# {
	  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	
	
	.header{
			width:100%;
			height:70px;
			margin:0;
			background-color:#0505060f;
			display:flex;
			justify-content: center;
			
			align-items:center;
			position:fixed;
}
	table{
	        margin:0 auto;
	         border-collapse: collapse;
	        }
	        
	  td,th{
	        height:35px;
	        width:75px;
	        text-align:center;
	        }       
	
	#products td, #products th {
	  border: 1px solid #ddd;
	  padding: 8px;
	}
	
	#products tr:nth-child(even){background-color: #f2f2f2;}
	
	#products tr:hover {background-color: #ddd;}
	
	#products th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: center;
	  background-color: #34495e;
	  color: white;
	  opacity:0.9;
	}
	.product-list{
	background-color:rgba(250, 250, 250,0.6);
	width:700px;
	padding:4rem;
	position:absolute;
	left:50%;
	top:50%;
	transform:translate(-50%,-50%);

	}
	
	a{
		margin:0px;
		display:inline-block;
		
		}
		.actionlink,.headerlink {
		color: white;
		
		padding:0.5rem 1rem;
		text-decoration:none;
		background-color:#34495e;
		
		transition:all 1.2s;
		}
		
		.actionlink,.headerlink:hover{
		background-color:#34495e;
		transform:scale(0.9);
		}
		
		.header a{
		padding:1.1rem 1.6rem;
		color:white;
		
		margin:1rem;
		}
		#pdheading{
		
		transition:opacity .3s;
		
		
		}
		#mainlink{
		text-decoration:none;
		color: #34495E;
		text-shadow: 2px 2px 5px #E5E7E9;
		letter-spacing: 4px;
		line-height: 1;
		margin:0 2rem;
		font-size:3rem;
		}
		
	input[type=text],input[type=number]{
		border:1px #666 solid;
	
	}
	input[type=text]:focus,input[type=number]:focus{
		border:1px #222 solid;
		
	
	}
</style>
      
  </head>
 <body>
 
 
 		<div class="header">
 		
 		 <a class="headerlink" href="/newProduct">NEW PRODUCT</a>
           <a id="mainlink" href="/">BILL EASY</a>
          
            <a class="headerlink" href="/BillingProduct">CART<i class='fas fa-shopping-cart' style='font-size:24px'></i></a>
 		
 		</div>
 
     <div align="center" class="product-list">
         <h1 id="pdheading">BILLING PRODUCTS</h1>
         
       
        <form:form action="searchProduct" method="post">
         <input type="text" name="searchvalue" maxlength="30" required="required" placeholder="Enter Product">
         <input type="submit" value="Search">
         </form:form>
      	<h4 style="color:red">${msg}</h4>
       
       
       <% 
       if((boolean)request.getAttribute("isExist"))
       {
       
       %>
       
       
        <table>
	<tr>   
             <th>Code</th>
             <th>Name</th>
             <th>Price</th>
             <th>GST%</th>  
             <th>Quantity</th>
        </tr>
	<c:forEach var="pro" items="${pros}" varStatus="status">
        <tr>
         	<td>${pro.code}</td>
            <td>${pro.name}</td>
            <td>${pro.price}</td>
            <td>${pro.gst}</td>
           
            <form:form action='addBillingProduct?pdcode=${pro.code}' method='post'>
          <td><input type='number'  name='qnty' value='1'></td>
         <td><input type='submit' value='Add'></td>
         </form:form> 
            <td>
         </tr>
	</c:forEach>  
         
         </table>

    <%
    } 
    %>
   
        
        <% 
       if(!(boolean)request.getAttribute("isEmpty"))
       {
       
       %> 
       <div id="bill">
          <table id="products" >
             <tr >
              <th>NO</th>
              <th>CODE</th>
              <th>NAME</th>
              <th>PRICE</th>
              <th>GST%</th>
             <th>QUANTITY</th>
             <th>TOTAL</th>
              </tr>
              
              
             <c:forEach var="product" items="${listBillingProduct}" varStatus="status">
             <tr>
                 <td>${status.index + 1}</td>
                 <td>${product.code}</td>
                 <td>${product.name}</td>
                 <td>${product.price}</td>
                 <td>${product.gst}</td>
	          	 <td>
           			<form action="changeqnty?code=${product.code}" method="post">
	             	<input type="number" value="${product.qnty}" name="qnty" onchange="this.form.submit()" required>
	             	</form>
             	</td>	
                <td>${product.total}</td>
 
                <td>   <a class="actionlink" href="/removeBillingProduct?code=${product.code}">Remove</a>
                 </td> 
                          
             </tr>
             </c:forEach>   
             
               
             <tr>
             <td colspan="6" align="right">Grand Total:</td>
             <td>${GrandTotal}</td>
           	<td><a class="actionlink" href="cancelBill">Cancel Bill</a></td>
             </tr>   
             
             <tr>
             <td colspan="6" align="right">Print Bill</td>
             
           	<td colspan="2"><input type="button" value="Print" onclick="printDiv()">  </td>
             </tr>       
         </table>  
        </div>  
          <%
		    } 
		  %>
     </div>
     
     
 </body>

</html>
