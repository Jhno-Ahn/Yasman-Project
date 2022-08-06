<%@page import="story.StoryDataBean" %>
<%@page import="story.StoryDBBean" %>
<%@page import="story.StoryDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



    
<!DOCTYPE html>
<html>
	<%@ include file="/YasManView/header2.jsp"%>
    <!-- Main content -->
    <section class="slice slice-lg pb-5">
        <div class="container">
            <!-- Section title -->
            <div class="row mb-10 justify-content-center text-center">
                <div class="col-lg-5 col-md-10">
                    <div class="text">
                    <h1>Story</h1>
                    <br>
                    <h4> 당신의 스포츠를 공유하세요! 👟</small>
                    </h4>
                    </div>
                </div>
            </div>
            <!-- 로그인 했을때만 보이게  -->      
            <c:if test = "${sessionScope.memId ne null}">
            <div class="row ml-3">
            	<button type="button" class="btn btn-lg" 
                    style="background-color:  rgb(156, 218, 243); border-style: none;">
                    <a style="color: white;" href="storyInputForm.do?id=${requestScope.id}">스토리 작성</a>
                </button>
            </div>
            </c:if>
            <br>
            <!--  -->
            <div class="row">
            	<c:forEach items="${dtos}" var="dtos">
                 <div class="col-lg-4">
                    <div class="card text-center hover-translate-y-n10 hover-shadow-lg">
                        <div class="px-5 pb-5 pt-5" style="padding: 0;">
                            <br>
                            <input type="hidden" name="story_num"  value="${dtos.story_num}">
                            <h5 class="story_member_id">${dtos.story_member_id }</h5>
	                        <h3 class="story_title">${dtos.story_title}</h3>
                            <br>
                            <hr style="border: solid 1px; margin: 0;">
                            <br>

							<div class="row justify-content-center">
								<div class="col-md-8">
									<div class="row">
										<a href="./YasManView/assets/img/yasman/${dtos.story_og_file}"
											data-toggle="lightbox" style="width:300px; height:300px;">
										<img src="./YasManView/assets/img/yasman/${dtos.story_og_file}" class="img-fluid rounded">
										</a>
									</div>
								</div>
							</div>
                            <c:if test="${requestScope.id == dtos.story_member_id}">
                             <button type="button">
                                	<a href="storyDeletePro.do?story_num=${dtos.story_num}&id=${requestScope.id}">삭제</a>
                             </button>
                            </c:if>
                            <c:if test="${requestScope.id == 'rhksflwk123'}">
                            	<button type="button">
                                	<a href="storyDeletePro.do?story_num=${dtos.story_num}&id=${requestScope.id}">삭제</a>
                             	</button>
                            </c:if>
                        </div>
                    </div>
                </div>
            	</c:forEach>
            </div>

			<div>
				<c:if test="${count gt 0}">
					<c:if test="${startPage gt pageBlock}">
						<a href="storyList.do?pageNum=${startPage - pageBlock}&id=${requestScope.id}">[◀]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i == currentPage}">
							<b>[${i}]</b>
						</c:if>
						<c:if test="${i != currentPage}">
							<a href="storyList.do?pageNum=${i}&id=${requestScope.id}">[${i}]</a>
						</c:if>
					</c:forEach>
					<c:if test="${pageCount gt endPage}">
						<a href="storyList.do?pageNum=${startPage + pageBlock}&id=${requestScope.id}">[▶]</a>
					</c:if>
				</c:if>
			</div>
			<script>
				$(document).on('click', '[data-toggle="lightbox"]',
					function(event) {
						event.preventDefault();
						$(this).ekkoLightbox();
				});
			</script>
		<%@ include file="/YasManView/footer2.jsp"%>
	
	
</html>