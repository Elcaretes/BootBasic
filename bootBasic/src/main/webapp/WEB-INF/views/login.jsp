<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

	<!-- head -->
	<%@ include file="/WEB-INF/views/common/head.jsp"%>

    <body class="bg-primary">
        <div id="layoutAuthentication">
        
        	<!-- content -->
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">로그인</h3></div>
                                    <div class="card-body">
                                        <form>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">아이디</label>
                                                <input class="form-control py-4" id="inputEmailAddress" type="email" placeholder="아이디를 입력하세요" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">비밀번호</label>
                                                <input class="form-control py-4" id="inputPassword" type="password" placeholder="비밀번호를 입력하세요" />
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.html">비밀번호찾기</a>
                                                <a class="btn btn-primary" href="index.html">로그인</a>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="/member/join">회원가입</a></div>
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