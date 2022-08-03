<%@page import="story.StoryDataBean" %>
<%@page import="story.StoryDBBean" %>
<%@page import="story.StoryDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<%@ include file="/YasManView/header.jsp"%>
    <!-- Main content -->
    <section class="slice slice-lg pb-5">
        <div class="container">
            <!-- Section title -->
            <div class="row mb-10 justify-content-center text-center">
                <div class="col-lg-5 col-md-10">
                    <div class="circle"></div>
                    <div class="text"><big><big>Yas - Story<br>
                    <small>당신의 스포츠를 공유하세요! 👟</small></big></big></div>
                </div>
            </div>
            
            <!-- 로그인 했을때만 보이게  -->      
            <div class="row ml-3">
            	<button type="button" class="btn btn-lg" 
                    style="background-color:  rgb(156, 218, 243); border-style: none;">
                    <a style="color: white;" href="storyInputForm.do">스토리 작성</a>
                </button>
            </div>
            <br>
            <!--  -->
            <div class="row">
            	<c:forEach items="${dtos}" var="dtos">
                 <div class="col-lg-4">
                    <div class="card text-center">
                        <div class="px-5 pb-5 pt-5" style="padding: 0;">
                            <br>
                            <input type="hidden" name="story_num" readonly value="${dtos.story_num}">
                            <h5 class="story_member_id">${dtos.story_member_id }</h5>
                            <h3 class="story_title">${dtos.story_title}</h3>
                            <br>
                            <hr style="border: solid 1px; margin: 0;">
                            <br>
                            <div>
                               <img src="./YasManView/assets/img/yasman/${dtos.story_og_file}" width="300px%" height="300px%">
                            </div>
                             <button type="button" class="btn">
                                	<a href="storyDeletePro.do?story_num=${dtos.story_num }">삭제</a>
                             </button>
                        </div>
                    </div>
                </div>
            	</c:forEach>
            </div>
			<div>
				<c:if test="${count gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="storyList.do?pageNum=${startPage - pageBlock}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i == currentPage}">
							<b>[${i}]</b>
						</c:if>
						<c:if test="${i != currentPage}">
							<a href="storyList.do?pageNum=${i}">[${i}]</a>
						</c:if>
					</c:forEach>
					<c:if test="${pageCount gt endPage}">
						<a href="storyList.do?pageNum=${startPage + pageBlock}">[▶]</a>
					</c:if>
				</c:if>
			</div>
	<%@ include file="/YasManView/footer.jsp"%>
</html>