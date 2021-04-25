<%@page language="java" contentType="text/html" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
        
        <meta name='viewport' content='width=device-width, initial-scale=1'>
		<script src='https://kit.fontawesome.com/a076d05399.js'></script>
		
        <style>
        	body{
			background-color: #d6dbdf;
			background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 2000 1500'%3E%3Cdefs%3E%3CradialGradient id='a' gradientUnits='objectBoundingBox'%3E%3Cstop offset='0' stop-color='%235d6d7e'/%3E%3Cstop offset='1' stop-color='%23d6dbdf'/%3E%3C/radialGradient%3E%3ClinearGradient id='b' gradientUnits='userSpaceOnUse' x1='0' y1='750' x2='1550' y2='750'%3E%3Cstop offset='0' stop-color='%239aa4af'/%3E%3Cstop offset='1' stop-color='%23d6dbdf'/%3E%3C/linearGradient%3E%3Cpath id='s' fill='url(%23b)' d='M1549.2 51.6c-5.4 99.1-20.2 197.6-44.2 293.6c-24.1 96-57.4 189.4-99.3 278.6c-41.9 89.2-92.4 174.1-150.3 253.3c-58 79.2-123.4 152.6-195.1 219c-71.7 66.4-149.6 125.8-232.2 177.2c-82.7 51.4-170.1 94.7-260.7 129.1c-90.6 34.4-184.4 60-279.5 76.3C192.6 1495 96.1 1502 0 1500c96.1-2.1 191.8-13.3 285.4-33.6c93.6-20.2 185-49.5 272.5-87.2c87.6-37.7 171.3-83.8 249.6-137.3c78.4-53.5 151.5-114.5 217.9-181.7c66.5-67.2 126.4-140.7 178.6-218.9c52.3-78.3 96.9-161.4 133-247.9c36.1-86.5 63.8-176.2 82.6-267.6c18.8-91.4 28.6-184.4 29.6-277.4c0.3-27.6 23.2-48.7 50.8-48.4s49.5 21.8 49.2 49.5c0 0.7 0 1.3-0.1 2L1549.2 51.6z'/%3E%3Cg id='g'%3E%3Cuse href='%23s' transform='scale(0.12) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.2) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.25) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(0.3) rotate(-20)'/%3E%3Cuse href='%23s' transform='scale(0.4) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(0.5) rotate(20)'/%3E%3Cuse href='%23s' transform='scale(0.6) rotate(60)'/%3E%3Cuse href='%23s' transform='scale(0.7) rotate(10)'/%3E%3Cuse href='%23s' transform='scale(0.835) rotate(-40)'/%3E%3Cuse href='%23s' transform='scale(0.9) rotate(40)'/%3E%3Cuse href='%23s' transform='scale(1.05) rotate(25)'/%3E%3Cuse href='%23s' transform='scale(1.2) rotate(8)'/%3E%3Cuse href='%23s' transform='scale(1.333) rotate(-60)'/%3E%3Cuse href='%23s' transform='scale(1.45) rotate(-30)'/%3E%3Cuse href='%23s' transform='scale(1.6) rotate(10)'/%3E%3C/g%3E%3C/defs%3E%3Cg transform='rotate(0 0 0)'%3E%3Cg transform='rotate(0 0 0)'%3E%3Ccircle fill='url(%23a)' r='3000'/%3E%3Cg opacity='0.5'%3E%3Ccircle fill='url(%23a)' r='2000'/%3E%3Ccircle fill='url(%23a)' r='1800'/%3E%3Ccircle fill='url(%23a)' r='1700'/%3E%3Ccircle fill='url(%23a)' r='1651'/%3E%3Ccircle fill='url(%23a)' r='1450'/%3E%3Ccircle fill='url(%23a)' r='1250'/%3E%3Ccircle fill='url(%23a)' r='1175'/%3E%3Ccircle fill='url(%23a)' r='900'/%3E%3Ccircle fill='url(%23a)' r='750'/%3E%3Ccircle fill='url(%23a)' r='500'/%3E%3Ccircle fill='url(%23a)' r='380'/%3E%3Ccircle fill='url(%23a)' r='250'/%3E%3C/g%3E%3Cg transform='rotate(0 0 0)'%3E%3Cuse href='%23g' transform='rotate(10)'/%3E%3Cuse href='%23g' transform='rotate(120)'/%3E%3Cuse href='%23g' transform='rotate(240)'/%3E%3C/g%3E%3Ccircle fill-opacity='0.1' fill='url(%23a)' r='3000'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
        	background-repeat:  no-repeat;
        	background-size:cover;
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
			background-color: #0505060f;
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
			  background-color: #34495e;;
			  color: white;
			  opacity:0.9;
			}
			.product-list{
			background-color: rgba(250, 250, 250,0.6);
			width:max-content;
			margin:0 auto;
			padding: 4rem 4rem;
		    align-items: center;
		    position: absolute;
		    bottom: 0;
		    top: 70px;
		    left: 0;
		    right: 0;
		    overflow: scroll;
			
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
			background-color: #34495e;
			transform:scale(0.9);
			}
			
			.header a{
			padding:1.1rem 1.6rem;
			color: #fff;
			
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
		.a{
		width:100%;
		height:auto;
		
		}	
		#mainlink a:hover{
			transform:scale(0.9);
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
           <h1 id="pdheading">PRODUCT LIST</h1>
            <table id="products" >
                <tr >
                <th>NO</th>
                <th>CODE</th>
                <th>NAME</th>
                <th>PRICE</th>
                <th>GST%</th>
                <th colspan="2" >ACTION</th>
                 </tr>
                <c:forEach var="product" items="${listProduct}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${product.code}</td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.gst}</td>
                    <td>
                        <a class="actionlink" href="/editProduct?code=${product.code}">Edit</a>

                     </td>
                    <td>    
                        <a class="actionlink" href="/deleteProduct?code=${product.code}">Delete</a>
                    </td>
                             
                </tr>
                </c:forEach>             
            </table>
        </div>
    </body>
</html>
