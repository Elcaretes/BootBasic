<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- head -->
<%@ include file="/WEB-INF/views/common/head.jsp"%>

<body class="bg-primary">

	<script>
	// 회원가입 요청
	function join(){
		
		// 회원가입 Form 을 가져온다
		var formElement = document.getElementById("joinForm");
		// Form의 데이터들을 FormData객체에 담는다
		var formData = new FormData( formElement );
		
		// formData를 console.log에 찍어도 해당 값들은 보이지 않는다
		// 백단으로 값은 정상적으로 전달된다
		//console.log( formData );
		
		var xhr = new XMLHttpRequest();
		xhr.open("POST", ctx + '/insertMember.ajax');
		xhr.send(formData);
		
	}
	</script>

	<div id="layoutAuthentication">

		<!-- content -->
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">회원가입</h3>
								</div>
								<div class="card-body">

									<form id="joinForm" method="POST" enctype="multipart/form-data">

										<div class="form-row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">아이디</label>
                                                        <input class="form-control py-4" id="inputFirstName" name="id" type="text" placeholder="아이디를 입력하세요"
                                                        			maxlength="12"/>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">비밀번호</label>
                                                        <input class="form-control py-4" id="inputFirstName" name="pw" type="text" placeholder="비밀번호를 입력하세요"
                                                        			maxlength="20"/>
                                                    </div>
                                                </div>
                                            </div>

										<fieldset class="row mb-4">
											<legend class="col-form-label col-sm-2 pt-0">성별</legend>
											<div class="col-sm-10">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="gender" id="inlineRadio1"
														value="M" checked="checked"> <label class="form-check-label"
														for="inlineRadio1">남자</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="gender" id="inlineRadio2"
														value="W"> <label class="form-check-label"
														for="inlineRadio2">여자</label>
												</div>
											</div>
										</fieldset>

										<fieldset class="row mb-4">
											<legend class="col-form-label col-sm-2 pt-0">관심사</legend>
											<div class="col-sm-10">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="checkbox"
														id="inlineCheckbox1" name="favorite" value="F01"> <label
														class="form-check-label" for="inlineCheckbox1">게임</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="checkbox"
														id="inlineCheckbox2" name="favorite" value="F02"> <label
														class="form-check-label" for="inlineCheckbox2">영화</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="checkbox"
														id="inlineCheckbox2" name="favorite" value="F03"> <label
														class="form-check-label" for="inlineCheckbox2">운동</label>
												</div>
											</div>
										</fieldset>

										<fieldset class="row mb-3">
											<legend class="col-form-label col-sm-3 pt-0">프로필 사진</legend>
											<input type="file" accept="image/jpeg, image/png, image/gif"
														class="form-control" id="profileImg" name="profileImg">
										</fieldset>
										<div class="text-center">
											<img src="/resources/img/default-profile.png" class="rounded-circle"
													 width="200" height="200" alt="프로필 이미지">
										</div>

										<div class="form-group mt-4 mb-0">
											<a class="btn btn-primary btn-block" href="javascript:join()">가입신청</a>
										</div>
										
									</form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="/">이미 계정이 있나요? 로그인페이지로 이동하기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>

		<!-- footer -->
		<div id="layoutAuthentication_footer">
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>

	</div>
</body>

</html>