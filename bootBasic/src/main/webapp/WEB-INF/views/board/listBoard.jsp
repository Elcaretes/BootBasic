<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

	<!-- head -->
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
	
    <body class="sb-nav-fixed">
    
        <!-- navBar -->
		<%@ include file="/WEB-INF/views/common/navBar.jsp"%>
        
        <div id="layoutSidenav">
        
            <!-- sideNavBar -->
			<%@ include file="/WEB-INF/views/common/sideNavBar.jsp"%>
            
            <!-- content -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">게시판</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">대시보드</a></li>
                            <li class="breadcrumb-item active">게시판</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                게시판을 구현해보자
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                게시판
                            </div>
                            <div class="card-body">
                            
                                <div class="table-responsive">
                                	<!-- 
                                	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                	 -->
                                	 <table class="table table-bordered" id="board" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>작성자</th>
                                                <th>등록일</th>
                                                <th>조회</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                            </tr>
                                            <tr>
                                                <td>Garrett Winters</td>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>63</td>
                                                <td>2011/07/25</td>
                                            </tr>
                                            <tr>
                                                <td>Ashton Cox</td>
                                                <td>Junior Technical Author</td>
                                                <td>San Francisco</td>
                                                <td>66</td>
                                                <td>2009/01/12</td>
                                            </tr>
                                            <tr>
                                                <td>Cedric Kelly</td>
                                                <td>Senior Javascript Developer</td>
                                                <td>Edinburgh</td>
                                                <td>22</td>
                                                <td>2012/03/29</td>
                                            </tr>
                                            <tr>
                                                <td>Airi Satou</td>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>33</td>
                                                <td>2008/11/28</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    
                                    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
		                                <div class="input-group">
			                                <div class="input-group-append">
												<button class="btn btn-primary" type="button">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</form>
								
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                
            <!-- footer -->
            <div id="layoutAuthentication_footer">
            	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
            </div>
                
            </div>
        </div>
    </body>
    
</html>