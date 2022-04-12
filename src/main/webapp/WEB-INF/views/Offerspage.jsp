<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Offer Page</title>

<style>

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body{
   background-image:url("offerback5.png");
    /* background-repeat: no-repeat; */

}

.wrapper{
  margin-top: 3%;
}

.wrapper h1{
  font-family: 'Allura';
  font-size: 52px;
  margin-bottom: 5px;
  color: black;
  text-align: center;
}

.offer{
  display: flex;
  justify-content: center;
  width: auto;
  text-align: center;
  flex-wrap: wrap;
}


.offer .offer_name:hover
{
  background-color: rgb(246, 248, 248);
}


.offer .offer_name{
  background: rgb(174, 230, 242);
  margin: 5px;
  margin-bottom: 50px;
  width: 300px;
  padding: 20px;
  font-size: 20px;
  line-height: 20px;
  color: #8e8d8b;  
  position: relative;
}

.offer .offer_name h3{
  color: #c6444a;
  font-size: 30px;
  margin-top: 50px;
}

.offer .offer_name p.role{
  color: rgb(58, 47, 99);
  margin: 12px 0;
  font-size: 22px;
  text-transform: uppercase;

}


body{
    background-image:"";
}

.offer .offer_name .team_img{
  position: absolute;
  top: -50px;
  left: 50%;
  transform: translateX(-50%);
  width: 100px;
  height: 100px;
  border-radius: 50%;
  background: #fff;
}

.team .team_member .team_img img{
  width: 100px;
  height: 100px;
  padding: 5px;
}






.button {
  display: inline-block;
  border-radius: 2px;
  background-color: #df5025;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 25px;
  padding: 20px;
  width: 110px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>


</head>
<body>

<div class="wrapper">
   
    <img src="assets/images/Offerimg2.png"
    align="left" height="500px"  width="150">
    <img src="assets/images/Offerimg2.png"
            align="right" height="500px" width="150">

  <h1>OFFERS</h1>
  <div class="offer">
  
  
  
 <a href="pgnewtransaction" style="text-decoration: none;">
    <div class="offer_name">
      
      <h3>Silver Offer</h3>
      <p class="role">4 Months</p>
      <p class="role">1000 RS.</p>
      <ul>
      <li>Silver Offer is benifited for only 4 months.</li>
        <li>If You register your PG in this plan so, our website presents your PG details for only 4 months.</li>
          <li> After 4 months we remove your Pg from our website.</li>
        </ul>
    </div>
    </a>
    
    
    <a href="pgnewtransaction" style="text-decoration: none;">
    <div class="offer_name">
      
      <h3>Golden Offer</h3>
      <p class="role">8 Months</p>
      <p class="role">1800 RS.</p>
      <ul>
        <li>Golden Offer is benifited for only 8 months.</li>
          <li>If You register your PG in this plan so, our website presents your PG details for 8 months.</li>
            <li> After 4 months we remove your Pg from our website.</li>
          </ul>
    
    
    </div>
    </a>
    
    <a href="pgnewtransaction" style="text-decoration: none;">
    <div class="offer_name">
     
      <h3>Diamond Offer</h3>
      <p class="role">12 Months</p>
      <p class="role">2500 RS.</p>
      <ul>
        <li>Diamond Offer is benifited for only 12 months.</li>
          <li>If You register your PG in this plan so, our website presents your PG details for 12 months.</li>
            <li> After 12 months we remove your Pg from our website.</li>
          </ul>
    </div>
</a>


    
  </div>

  <div class="btn">

  <button class="button" style="float: right;" onclick="pgownerdashboardnewpg"><span>Next </span></button>
	<a href="pgownerdashboardnewpg"  target="_self">Next</a>
</div>
 
</div>			
</body>
</html>





<!-- 

	<form action="saverole" method="post">
								<div class="form-group">
									<label>Role Name:</label> <input type="text" name="roleName" placeholder="enter rolename">
								</div>
								<button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
								
								        <button class="btn btn-light">Cancel</button>
							</form>


 -->












<!-- 
<form method="POST" action="saverole">
Role Name:<input type="text" name="roleName"><br><br>
<input type="submit" value="submit">
</form> -->