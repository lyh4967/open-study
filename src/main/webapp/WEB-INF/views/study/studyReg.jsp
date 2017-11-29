<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>

<style>
.fileDrop {
	width: 80%;
	height: 100px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	margin: auto;
}
</style>

<div class="container write inner">
	<form class="form-horizontal" id="registerForm"
		action="/study/studyReg" method="post">
		<div class="step1">
			<h2>1단계</h2>
			<div class="row">
				<div class="form-group">
					<div class="col-sm-12">
						<div class="col-md-4">
							<!-- 카테고리들 체크박스로 바꿔줘용 -->
							<div class="write-category">
								<a href="">카테고리</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">카테고리</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">카테고리</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">카테고리</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">카테고리</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">카테고리</a>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">스터디명</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="studyName"
								placeholder="스터디이름을 넣어주세요">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">지역</label>
					<div class="col-sm-10">
						<div class="col-sm-6 step1-select1">
							<select class="form-control" name="studyRegion">
								<option>대분류</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
						<div class="col-sm-6 step1-select2">
							<select class="form-control" name="studyRegion">
								<option>소분류</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<button type="button" class="btn btn-default">Next</button>
				</div>
			</div>
		</div>
		<div class="step2">
			<h2>2단계</h2>
			<div class="row">
				<div class="form-group">
					<label class="col-sm-2 control-label">연령층</label>
					<!-- 연령층들 체크박스로 바꿔줘용 -->
					<div class="col-sm-10">
						<div class="col-md-4">
							<div class="write-category">
								<a href="">10대</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">20대</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">30대</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">40대</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">50대</a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="write-category">
								<a href="">60대</a>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">시작날짜</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" id="testDatepicker" class="form-control"
								name="studyStartDate">
							<script>
								$(function() {
									$("#testDatepicker").datepicker({

									});
								});
							</script>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">요일</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox1" value="월"> 월
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox2" value="화"> 화
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox3" value="수"> 수
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox4" value="목"> 목
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox5" value="금"> 금
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox6" value="토"> 토
							</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox7" value="일"> 일
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">시간</label>
					<div class="col-sm-10 time_box">
						<input id="timepicker1" type="text" class="form-control"
							name="timepicker1" />
						<script>
							$('#timepicker1').timepicki();
						</script>
						<div class="hyphen">~</div>
						<input id="timepicker2" type="text" class="form-control"
							name="timepicker1" />
						<script>
							$('#timepicker2').timepicki();
						</script>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">비용</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="studyMemFee"
								placeholder="ex.10000명명">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">인원수</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="studyMaxMemCnt"
								placeholder="ex.10명">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<button type="button" class="btn btn-default">Next</button>
				</div>
			</div>
		</div>
		<div class="step3">
			<h2>3단계</h2>
			<div class="row">
				<div class="form-group">
					<label class="col-sm-2 control-label">자기소개</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<textarea class="form-control" rows="10" name="studyIntroduce"></textarea>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">소개</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<label for="exampleInputFile">파일 업로드</label> 
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<button type="submit" class="btn btn-default">완료</button>
					<button type="button" class="btn btn-default m_r_10">취소</button>
				</div>
				<ul class="mailbox-attachments clearfix uploadedList">
				</ul>
			</div>
		</div>
		<!-- 파일 업로드 테스트 해보자!!!  -->
		<div class="form-group">
			<label for="exampleInputEmail">File DROP</label>
			<div class="fileDrop"></div>
		</div>


		<div class="box-footer">
			<div>
				<hr>
			</div>
		</div>


	</form>
</div>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- 업로드된 리스트 템플릿  -->
<script id="template" type="text/x-handlebars-template">

	<li>
		<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
		<div class="mailbox-attachment-info">
			<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
			<a data-src="{{fullName}}"  class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
		</div>
	</li>
</script>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script>
	/*화면에 업로드된리스트출력  */
	var template = Handlebars.compile($("#template").html());

	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event) {
		event.preventDefault();

		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];

		//console.log(file);

		var formData = new FormData();
		formData.append("file", file);

		/*컴트롤러로 파일명을 보낸후 콜백으로 만들어진 이미지파일명을 받은후 템플릿에 출력시킨다.  */
		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);

				var html = template(fileInfo);

				$(".uploadedList").append(html);
			}
		});
	});

	/* input:hidden 으로 현재 업로드된 파일들의 목록을 저장한다. */
	$("#registerForm").submit(
			function(event) {
				event.preventDefault();

				var that = $(this);

				var str = "";

				$(".uploadedList .delbtn").each(
						function(index) {
							str += "<input type='hidden' name='files[" + index
									+ "]' value='" + $(this).attr("data-src")
									+ "'>";
						});
				that.append(str);
				that.get(0).submit();
			});
	/* 업로드 된 파일들중 x버튼을 누르면 업로드된 파일들이 삭제되도록한다.  */
	$(".uploadedList").on("click", "a", function(event) {
		var that = $(this);

		$.ajax({
			url : "/deleteFile",
			type : "post",
			data : {
				fileName : $(this).attr("data-src")
			},
			dataType : "text",
			success : function(result) {
				if (result == 'deleted') {
					that.parent("div").parent("li").remove();
				}
			}
		});
	});
</script>
<%@include file="../include/footer.jsp"%>
