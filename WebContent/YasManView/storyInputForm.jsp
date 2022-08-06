<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/YasManView/header2.jsp"%>
    <div>
        <h1 style="text-align: center;">스토리 작성하기</h1>
    </div>
    <div id="root">
        <div class="form-frame">
            <div class="inputForm" style="border: 2px solid grey;padding: 30px; border-radius:1%;">
                <div id="stb_subscribe">
                <!-- ------------------------------------------------------------------------------------------------------------------- -->
                    <form method="POST" action="storyInputPro.do?id=${requestScope.id}" accept-charset="utf-8" class="stb_form" enctype="multipart/form-data" >
                      <!--   <div class="stb_form_set">
                            <label for="stb_name" class="stb_form_set_label" style="color: black;">글 제목</label>
                            <br>
                            <textarea class="form-control form-control-lg" placeholder="글 제목을 입력해주세요" rows="1"
                                required></textarea>
                        </div> -->
                        <br><br>
                        <input type="hidden" name="story_num" readonly value="${story_num}">
                        <%-- <input type="hidden" name="id" readonly value=" ${requestScope.id}"> --%>
                        <input type="hidden" name="story_member_id" readonly value="${requestScope.id}">
                        <%-- <div class="stb_form_set">
                            <label for="stb_name" class="stb_form_set_label" style="color: black;">회원 닉네임</label>
                           <input name="story_member_id" class="stb_form_set_label" style="color: black;" value="${requestScope.nick_name}">
                         </div> --%>
                        <div class="stb_form_set">
                            <label for="stb_name" class="stb_form_set_label" style="color: black;">스토리 제목</label>
                            <br>
                            <input name="story_title" class="form-control form-control-lg" placeholder="스토리를 소개해주세요!" rows="10"
                                required>
                        </div>
						<div class="inputArea">
							<label for="gdsImg">이미지</label>
							 <input type="file" id="gdsImg"	name="story_img"/>
							<div class="select_img">
								<img src="" />
							</div>

							<script>
								$("#gdsImg").change(function() {
									if (this.files && this.files[0]) {
										var reader = new FileReader;
											reader.onload = function(data) {
												$(".select_img img").attr("src", data.target.result).width(500);
											} 
											reader.readAsDataURL(this.files[0]);
									}
								});
							</script>
						</div>
						<div class="stb_form_set_submit ">
                            <button type="submit" id="stb_form_submit_button" class="stb_form_submit_button "
                                style="background-color: gray; color: rgb(255, 255, 255);">스토리 작성하기!
                            </button>
                        </div>
                    </form>
         	 <!-- ------------------------------------------------------------------------------------------------------------------- -->
                </div>
            </div>
        </div>
    </div>
 
   <script src="/static/js/runtime-main.472a9638.js"></script>
   <script src="/static/js/2.af3d02be.chunk.js"></script>
   <script src="/static/js/main.768226e7.chunk.js"></script>
   
   

</body>
</html>