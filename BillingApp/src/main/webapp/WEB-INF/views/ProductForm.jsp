<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ProductForm</title>
<style>

	body{
	background-repeat:  no-repeat;

	
	background-color: #d5dbdb;
	background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25' viewBox='0 0 100 60'%3E%3Cg %3E%3Crect fill='%23d5dbdb' width='11' height='11'/%3E%3Crect fill='%23d2d8d8' x='10' width='11' height='11'/%3E%3Crect fill='%23ced5d6' y='10' width='11' height='11'/%3E%3Crect fill='%23cbd3d3' x='20' width='11' height='11'/%3E%3Crect fill='%23c8d0d0' x='10' y='10' width='11' height='11'/%3E%3Crect fill='%23c4cdce' y='20' width='11' height='11'/%3E%3Crect fill='%23c1cacb' x='30' width='11' height='11'/%3E%3Crect fill='%23bec8c9' x='20' y='10' width='11' height='11'/%3E%3Crect fill='%23bbc5c6' x='10' y='20' width='11' height='11'/%3E%3Crect fill='%23b7c2c3' y='30' width='11' height='11'/%3E%3Crect fill='%23b4bfc1' x='40' width='11' height='11'/%3E%3Crect fill='%23b1bdbe' x='30' y='10' width='11' height='11'/%3E%3Crect fill='%23aebabc' x='20' y='20' width='11' height='11'/%3E%3Crect fill='%23abb7b9' x='10' y='30' width='11' height='11'/%3E%3Crect fill='%23a7b5b7' y='40' width='11' height='11'/%3E%3Crect fill='%23a4b2b4' x='50' width='11' height='11'/%3E%3Crect fill='%23a1afb2' x='40' y='10' width='11' height='11'/%3E%3Crect fill='%239eacb0' x='30' y='20' width='11' height='11'/%3E%3Crect fill='%239baaad' x='20' y='30' width='11' height='11'/%3E%3Crect fill='%2398a7ab' x='10' y='40' width='11' height='11'/%3E%3Crect fill='%2395a4a8' y='50' width='11' height='11'/%3E%3Crect fill='%2392a2a6' x='60' width='11' height='11'/%3E%3Crect fill='%238f9fa4' x='50' y='10' width='11' height='11'/%3E%3Crect fill='%238c9ca1' x='40' y='20' width='11' height='11'/%3E%3Crect fill='%23899a9f' x='30' y='30' width='11' height='11'/%3E%3Crect fill='%2386979d' x='20' y='40' width='11' height='11'/%3E%3Crect fill='%2383949a' x='10' y='50' width='11' height='11'/%3E%3Crect fill='%23809298' x='70' width='11' height='11'/%3E%3Crect fill='%237d8f96' x='60' y='10' width='11' height='11'/%3E%3Crect fill='%237a8c94' x='50' y='20' width='11' height='11'/%3E%3Crect fill='%23778a91' x='40' y='30' width='11' height='11'/%3E%3Crect fill='%2374878f' x='30' y='40' width='11' height='11'/%3E%3Crect fill='%2371848d' x='20' y='50' width='11' height='11'/%3E%3Crect fill='%236f828b' x='80' width='11' height='11'/%3E%3Crect fill='%236c7f88' x='70' y='10' width='11' height='11'/%3E%3Crect fill='%23697d86' x='60' y='20' width='11' height='11'/%3E%3Crect fill='%23667a84' x='50' y='30' width='11' height='11'/%3E%3Crect fill='%23647782' x='40' y='40' width='11' height='11'/%3E%3Crect fill='%23617580' x='30' y='50' width='11' height='11'/%3E%3Crect fill='%235e727d' x='90' width='11' height='11'/%3E%3Crect fill='%235c707b' x='80' y='10' width='11' height='11'/%3E%3Crect fill='%23596d79' x='70' y='20' width='11' height='11'/%3E%3Crect fill='%23566a77' x='60' y='30' width='11' height='11'/%3E%3Crect fill='%23546875' x='50' y='40' width='11' height='11'/%3E%3Crect fill='%23516573' x='40' y='50' width='11' height='11'/%3E%3Crect fill='%234f6371' x='90' y='10' width='11' height='11'/%3E%3Crect fill='%234c606e' x='80' y='20' width='11' height='11'/%3E%3Crect fill='%234a5e6c' x='70' y='30' width='11' height='11'/%3E%3Crect fill='%23475b6a' x='60' y='40' width='11' height='11'/%3E%3Crect fill='%23455968' x='50' y='50' width='11' height='11'/%3E%3Crect fill='%23425666' x='90' y='20' width='11' height='11'/%3E%3Crect fill='%23405464' x='80' y='30' width='11' height='11'/%3E%3Crect fill='%233e5162' x='70' y='40' width='11' height='11'/%3E%3Crect fill='%233b4f60' x='60' y='50' width='11' height='11'/%3E%3Crect fill='%23394c5d' x='90' y='30' width='11' height='11'/%3E%3Crect fill='%23374a5b' x='80' y='40' width='11' height='11'/%3E%3Crect fill='%23354759' x='70' y='50' width='11' height='11'/%3E%3Crect fill='%23324557' x='90' y='40' width='11' height='11'/%3E%3Crect fill='%23304255' x='80' y='50' width='11' height='11'/%3E%3Crect fill='%232e4053' x='90' y='50' width='11' height='11'/%3E%3C/g%3E%3C/svg%3E");
	background-attachment: fixed;
	background-size: cover;

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

	.btn{
	color:black;
	border :1px solid black;
	padding:0.5rem 1rem;
	text-decoration:none;
	background-color:#ddd;
	}
	
	.productform{
			background-color: rgba(250, 250, 250,0.6);
			width:max-content;
			margin:0 auto;
			padding: 2rem 4rem;
		    align-items: center;
		    position: absolute;
		    top: 70px;
		    left:0px;
		    right:0px;
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
			color: white;
			
			margin:1rem;
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
		
		.error{
		color:red;
		}
</style>


</head>
<body>


    	<div class="header">
    	
    		
            <a class="headerlink" href="/newProduct">NEW PRODUCT</a>
           <a id="mainlink" href="/">GST BILLING APP</a>
          
            <a class="headerlink" href="/BillingProduct">GENERATE A BILL</a>
    	
    	</div>
     <div align="center" class="productform">
       <h1>PRODUCT</h1>
        <h2 class="error">${msg}</h2>
        <form:form  action="saveProduct?pdcode=${product.code}?${product.name}" method="post"   modelAttribute="product">
        <table >
	
            <tr>
                <td>Code:</td>
                <td><form:input id="procode" path="code"  maxlength="30" required="required"/></td>
            	<form:errors path="code" cssClass="error"/>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input id="proname" path="name" maxlength="30" required="required" /></td>
                <form:errors path="name" cssClass="error"/>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input id="proprice"  path="price"  required="required" /></td>
                
            </tr>
            <tr>
                <td>GST:</td>
                <td><form:input id="progst" path="gst" required="required" /></td>

            </tr>
            <tr>
                <td  align="center"><input class="btn" type="submit" value="Save"></td>
            	<td align="center"> <a class="btn" href="/">Cancel</a></td>
            </tr>
			
        </table>
        </form:form>
        
    </div> 
</body>
</html>