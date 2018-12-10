<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="wrap">
         <div class="section group">
            <div class="cont span_2_of_3">
           
               <h2 class="head">검색 목록</h2>
               
               <div class="top-box">
               <c:forEach var="p" items="${plist }">
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${p.gid }">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${p.gimgname }" alt="" width= "200" height= "250"/>
                           </div>
                           <div class="price">
                                 <p class="title">${p.gname }</p>
                                 <div class="price1">
                                    <span class="actual">${p.gprice } 원</span>
                                 </div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  </c:forEach>
                  </div>

            </div>
         </div>


      </div>