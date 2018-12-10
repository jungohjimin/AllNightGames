<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
   href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script
   src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Free Leoshop Website Template | Checkout :: w3layouts</title>
<meta name="viewport"
   content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/AllNightGames/view/resources/css/style.css"
   rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2'
   rel='stylesheet' type='text/css'>
<script type="text/javascript"
   src="/AllNightGames/view/resources/js/jquery1.min.js"></script>
<!-- start menu -->
<link href="/AllNightGames/view/resources/css/megamenu.css"
   rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
   src="/AllNightGames/view/resources/js/megamenu.js"></script>
<script>
   $(document).ready(function() {
      $(".megamenu").megamenu();
   });
</script>
<script type="text/javascript">
   
</script>

<!-- dropdown -->
<script src="/AllNightGames/view/resources/js/jquery.easydropdown.js"></script>
<style>
table, td, tr {
   width: 400px;
   border: 1px solid black;
   text-align: center;
}
</style>
<div class="wrap">
   <div class="container">
      <div class="row">
         <div class="col-xs-8">
            <div class="panel panel-info">
               <div class="panel-heading">
                  <div class="panel-title">
                     <div class="row">
                        <div class="col-xs-6">
                           <h5>
                              <span class="glyphicon glyphicon-shopping-cart"></span>
                              Shopping Cart
                           </h5>
                        </div>
                        <div class="col-xs-6">
                           <a href="index.html">
                              <button type="button" class="btn btn-primary btn-sm btn-block">
                                 <span class="glyphicon glyphicon-share-alt"></span> Continue
                                 shopping
                              </button>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="panel-body">
               <div id="dddd" class="row">
               <c:forEach var="g" items="${gllist }">
                     
                     
                         <div class="col-xs-2">
                           <img class="img-responsive"
                              src="${g.gimgname }">
                        </div>  
                        
                        <div class="col-xs-6">
                           
                           <div class="col-xs-1">
                               <h6>
                                 ${g.gname}
                              </h6> 
                           </div>
                           
                           
                              
                           
                        </div>
                  
                  </c:forEach>
                     </div>
                  <div id="ddddr" class="row">
                  <c:forEach var="p" items="${oddlist }">
                     <form id="delete-form">
                        <input type="hidden" value="${p.odid}" name="oid">
                     </form>
                     
                        <%--  <div class="col-xs-2">
                           <img class="img-responsive"
                              src="${gllist[status.index].gimgname }">
                        </div>  --%>    
                        <div class="col-xs-6">
                           <div class="col-xs-4 text-right">
                              <h8> <strong>${p.gprice}원<span
                                 class="text-muted"></span></strong> </h8>
                           </div>
                           <div class="col-xs-1">
                              <%-- <h6>
                                 ${gllist[status.index].gname}
                              </h6> --%>
                           </div>
                              <div class="col-xs-4 text-right">
                                 ${p.gserialnm }
                              </div>
                              
                        </div>
                     
                  </c:forEach>
                  </div>

               </div>


            </div>
         </div>
      </div>
   </div>
   <p class="cart">
      You have no items in your shopping cart.<br>Click<a
         href="index.html"> here</a> to continue shopping
   </p>
</div>