<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
  lang="utf-8"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>공지사항 관리 | Class 33</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <img src="assets/img/favicon/admin_logo.svg">
              </span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- 클래스 관리 -->
            <li class="menu-item">
              <a href="clsList.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                클래스 관리
              </a>
            </li>

            <!-- 공지사항 관리 -->
            <li class="menu-item active">
              <a href="boardList.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                공지사항 관리
              </a>
            </li>

            <!-- 설정 -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-cog me-2"></i>
                설정
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="tchUpdateForm.html" class="menu-link">개인정보 수정</a>
                </li>
                <li class="menu-item">
                  <a href="tchPwChangeForm.html" class="menu-link">비밀번호 변경</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="menu-link">회원탈퇴</a>
                </li>
              </ul>
            </li>

            <!-- 컴포넌트 참고 -->
            <li class="menu-item">
              <a href="../html/index.html" class="menu-link" target="_Blank">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                컴포넌트 참고
              </a>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">

          <!-- Content wrapper -->
          <div class="content-wrapper">

            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
                <ul class="nav nav-pills flex-column flex-md-row">
                  <li class="navbar-nav-right d-flex align-items-center">
                    <h4 class="fw-bold py-3 mb-4">공지사항 관리</h4>
                  </li>
                  <li class="navbar-nav flex-row align-items-center ms-auto">
                    <button type="submit" class="btn btn-primary me-2 mb-3" onclick="location.href='boardView.html'">공지사항 등록</button>
                  </li>
                </ul>

              <!-- Basic Bootstrap Table -->
              <div class="card">
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>번호</th>
                        <th>공지사항 제목</th>
                        <th>등록 날짜</th>
                        <th>조회수</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                      
                      <tr onclick="location.href='boardView.html'">
                        <td>4</td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>제 16과 영어단어 PDF 파일
                        </strong></td>
                        <td>2022.04.01</td>
                        <td>52</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>제 16과 영어단어 PDF 파일
                        </strong></td>
                        <td>2022.04.01                        </td>
                        <td>52</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>제 16과 영어단어 PDF 파일
                        </strong></td>
                        <td>2022.04.01                        </td>
                        <td>52</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>제 16과 영어단어 PDF 파일
                        </strong></td>
                        <td>2022.04.01                        </td>
                        <td>52</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <!--/ Basic Bootstrap Table -->

              <!-- Basic Pagination -->
              <nav aria-label="Page navigation" class="container-p-y">
                <ul class="pagination justify-content-center">
                  <li class="page-item prev">
                    <a class="page-link" href="javascript:void(0);"
                      ><i class="tf-icon bx bx-chevrons-left"></i
                    ></a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">2</a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="javascript:void(0);">3</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">4</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="javascript:void(0);">5</a>
                  </li>
                  <li class="page-item next">
                    <a class="page-link" href="javascript:void(0);"
                      ><i class="tf-icon bx bx-chevrons-right"></i
                    ></a>
                  </li>
                </ul>
              </nav>
              <!--/ Basic Pagination -->
            <!-- / Content -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="assets/vendor/libs/jquery/jquery.js"></script>
    <script src="assets/vendor/libs/popper/popper.js"></script>
    <script src="assets/vendor/js/bootstrap.js"></script>
    <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="assets/js/pages-account-settings-account.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
