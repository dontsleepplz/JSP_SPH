<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<div class="col-12" style="padding: 0px;">
   	<div class="card-header" style="background-color: #4188FE; color: white; width: 100%;">
      <span style="font-weight: bold;">수강중인 강의</span>

      <button type="button" class="btn-sm btn-primary" style="float: right;"
         onclick="CloseWindow();">닫기</button>

      <button type="button" class="btn-sm btn-primary" data-toggle="modal"
         style="float: right; margin-right: 10px;"
         data-target="#modal-default">평가하기</button>
      &nbsp;&nbsp;&nbsp;&nbsp;

      <!-- 검색창 end -->
   </div>
</div>


<div class="row">
   <!-- 수강중인 강의 start -->
   <div class="col-3">
      <div class="card "
         style="border: #4188FE solid 0.5px; border-radius: 10px; margin-left: 10px; margin-top: 10px;">
         <div class="col-12 table-responsive" style="text-align: center;">

            <img class="img-fluid" style="width: 200px; height: 184px;"
               src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/HAN.jpg"
               alt="User Avatar">
         </div>
      </div>
   </div>
   <!-- 수강중인 강의 end -->	

   <!-- 가장 미흡한 과목, 내성적 추이 col start -->
   <div class="col-9">
      <div class="card"
         style="border: #4188FE solid 0.5px; border-radius: 10px; height: 184px; margin-top: 10px; margin-right: 10px;">

         <div class="card-body table-responsive p-0"
            style="height: 100%; border-radius: 10px;">
            <table class="table text-nowrap" style="text-align: center;">
               <thead>
               </thead>
               <tbody style="font-size: 14px;">
                  <tr>
                     <th style="background-color: lightgray;">강사명</th>
                     <td>한민기</td>
                  </tr>
                  <tr>
                     <th style="background-color: lightgray;">이메일</th>
                     <td>sdf111@naver.com</td>
                  </tr>
                  <tr>
                     <th style="background-color: lightgray;">평점</th>
                     <td><span class="starcolor" style="color: #FFC107;">
                           <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                           class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                           class="fa-solid fa-star"></i>
                     </span></td>
                  </tr>
                  <tr>
                     <th style="background-color: lightgray;">시작일 / 종료일</th>
                     <td>2022-11-11 / 2023-01-11</td>
                  </tr>
                  <tr>
                     <th style="background-color: lightgray;">시작시간 / 종료시간</th>
                     <td>09:00 ~ 14:00</td>
                  </tr>
               </tbody>
            </table>
         </div>

      </div>
   </div>
</div>

<!-- 강의 진척도 start -->
<div class="col-12">
   <div class="card "
      style="border: #4188FE solid 0.5px; border-radius: 10px;">
      <div class="card-header"
         style="height: 40px; background: #4188FE; color: white;">
         <h2 class="card-title">강의 진척도</h2>
      </div>

      <div class="card-body p-0">
         <table class="table">
            <thead>
               <tr>
                  <th style="width: 250px;">강의명</th>
                  <th>Progress</th>
                  <th style="width: 40px;">Label</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td style="vertical-align: middle; font-weight: bold;">바로
                     배워쓰는 SpringBoots</td>
                  <td>
                     <div class="progress" style="margin-top: 20px;">
                        <div class="progress-bar bg-danger" style="width: 45%;"></div>
                     </div>
                  </td>
                  <td style="text-align: center; font-size: 30px;"><span
                     class="badge badge-lg bg-danger">55%</span></td>
               </tr>
            </tbody>
         </table>
      </div>

   </div>
</div>
<!-- 강의진척도 end-->

<div class="col-12">
   <div class="card "
      style="border: #4188FE solid 0.5px; border-radius: 10px; height: 380px;">
      <div class="card-header"
         style="height: 40px; background: #4188FE; color: white;">
         <h2 class="card-title">수업 계획</h2>
         <div class="card-tools">
            <div class="input-group input-group-sm"></div>
         </div>
      </div>

      <div class="card-body table-responsive p-0"
         style="height: 150px; text-align: center;">
         <div class="form-group col-sm-12" style="margin-top: 10px;">
            <input type="text" style="height: 300px;" class="form-control"
               id="viewcnt" value="${pds.viewcnt }" readonly />
         </div>
      </div>
   </div>

</div>

<div class="modal fade" id="modal-default" aria-hidden="true"
   style="display: none; border-radius: 10px;">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title">강의 평가하기</h5>
            <button type="button" class="btn-sm btn-primary" data-toggle="modal"
               style="float: right; margin-left: 200px; margin-right: 10px;"
               data-target="#modal-default">평가하기</button>
            <button type="button" class="btn-sm btn-primary"
               style="float: right;"
               onclick="OpenWindow('<%=request.getContextPath()%>/open_student/lecing/detail.jsp','수강중인강의',400,680)">닫기</button>
         </div>

         <div class="modal-body" style="padding: 0.5rem">

            <!-- Reply content -->
            <div class="col-12">
               <div class="card"
                  style="border: #4188FE solid 0.5px; border-radius: 10px; height: 380px;">

                  <div class="card-body table-responsive p-0"
                     style="height: 100%; border-radius: 10px;">
                     <table class="table text-nowrap" style="text-align: center;">
                        <thead>
                        </thead>
                        <tbody style="font-size: 14px;">
                           <tr>
                              <th style="background-color: lightgray;">강사명</th>
                              <td>한민기</td>
                           </tr>
                           <tr>
                              <th style="background-color: lightgray;">이메일</th>
                              <td>sdf111@naver.com</td>
                           </tr>
                           <tr>
                              <th style="background-color: lightgray;">평점</th>
                              <td><span class="starcolor" style="color: #FFC107;">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                                    class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i
                                    class="fa-solid fa-star"></i>
                              </span></td>
                           </tr>
                           <tr>
                              <th style="background-color: lightgray;">시작일 / 종료일</th>
                              <td>2022-11-11 / 2023-01-11</td>
                           </tr>
                           <tr>
                              <th style="background-color: lightgray;">시작시간 / 종료시간</th>
                              <td>09:00 ~ 14:00</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>

         </div>

      </div>

   </div>

</div>