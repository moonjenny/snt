<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/contents/2015_t/views/includefile/declare.jsp"%>
</head>
<body>
<%@ include file="/contents/2015_t/views/includefile/skipNavi.jsp"%>
<div class="container">
	<div class="wrap">
		<%@ include file="/contents/2015_t/views/includefile/ctgr_sideBar.jsp"%>

		<div class="wrap_inner">
			<!--header S-->
			<%@ include file="/contents/2015_t/views/includefile/header.jsp"%>
			<!--header E-->
			<!--main S-->
			<main id="contents">
				<section class="contents">
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
					<h2><span>나의 적립금</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>나의 적립금</span></h2>
					</nav><!-- 2016-06-24 -->
					<!-- 20180713 적립금 수정으로 삭제 <div class="summaryZone">

						<ul class="savemoney">
							<li>
								<div>
									<p><span>적립예정</span></p><!-- 2015-05-09 수정
									<span class="price"><em>900</em>원</span>
								</div>
							</li>
							<li>
								<div>
									<p><span>소멸예정</span></p><!-- 2015-05-09 수정
									<span class="price"><em>100,000</em>원</span>
								</div>
							</li>
							<li>
								<div>
									<p><span>총 적립금</span></p><!-- 2015-05-09 수정
									<span class="price"><em>9,876,000</em>원</span>
								</div>
							</li>
						</ul>
						<p class="message iconed emp2">적립금 소멸 시효는 발생일자로부터 2년입니다.</p><!-- 2015-05-09 추가

						<div class="mypage_wrap">
							<h3><span>적립/사용 내역</span></h3><!-- 2015-05-09 추가
							<ul class="tab_group tabtype2 piece4 ui-tab-btns">
								<li><a class="current"data-tab-target="detail_tab1"><span>1개월</span></a></li>
								<li><a data-tab-target="detail_tab2"><span>3개월</span></a></li>
								<li><a data-tab-target="detail_tab3"><span>6개월</span></a></li>
								<li><a class="accordion_btn" data-tab-target="detail_tab4"><span>기간 조회</span></a></li>
							</ul>

							<div id="detail_tab1" class="ui-tab-content" style="display:block;"><!-- 2015-05-09 tab div 추가

								<div class="result_wrap">
									<p class="count"><span class="num">총 <em>23</em>건</span></p>
									<p class="period">2014.11.11 ~ 2014.11.11</p>
								</div>
								<div class="table_wrap">
								<table class="colTable aligncenter"><!-- 2015-05-09 수정
									<!-- 2015-05-09 수정
									<colgroup>
										<col style="width:26%;"/>
										<col style="width:20%;"/>
										<col style="width:26%;"/>
										<col style="width:28%;"/>
									</colgroup>
									<!-- /2015-05-09 수정
									<thead>
										<!-- 2015-05-09 수정
										<tr>
											<th scope="col"><p>발생일자</p></th>
											<th scope="col"><p>구분</p></th>
											<th scope="col"><p>금액</p></th>
											<th scope="col"><p>상세내역</p></th>
										</tr>
										<!-- /2015-05-09 수정
									</thead>
									<tbody>
										<!-- 2015-05-09 수정
										<tr>
											<td>2014.11.11</td>
											<td>적립예정</td>
											<td class="tar">+4,600원</td>
											<td>상품구매적립</td>
										</tr>
										<!-- /2015-05-09 수정
										<tr>
											<td>2014.11.11</td>
											<td>적립예정</td>
											<td class="tar">+4,600원</td>
											<td>상품구매적립</td>
										</tr>
										<tr>
											<td>2014.11.11</td>
											<td>적립예정</td>
											<td class="tar">+4,600원</td>
											<td>상품구매적립</td>
										</tr>
										<tr>
											<td>2014.11.11</td>
											<td>적립예정</td>
											<td class="tar">+4,600원</td>
											<td>상품구매적립</td>
										</tr>
										<tr>
											<td>2014.11.11</td>
											<td>적립예정</td>
											<td class="tar">+4,600원</td>
											<td>상품구매적립</td>
										</tr>
									</tbody>
								</table>
								<!-- 2015-05-09 수정
								<div class="btns_wrap">
									<span class="btn viewmore"><a>더보기</a></span>
								</div>
								<!-- /2015-05-09 수정
								<!-- 내역이 없을 경우
								<div class="list_nodata">
									<p>적립금 내역이 없습니다.<br />
									적립 및 사용 이력이 있으시다면<br />기간을 길게 설정해보세요.</p><!-- 2015-05-09 수정
								</div>
								<!-- //내역이 없을 경우

							</div>

							</div>

							<div id="detail_tab2" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab div 추가
							 3개월 조회 결과
							</div>

							<div id="detail_tab3" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab div 추가
							 6개월 조회 결과
							</div>

							<div id="detail_tab4" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab div 추가

								<!-- 기간 조회
								<div class="accordion_wrap active"><!-- 2015-05-18 수정, 위치변경
									<div class="period">
										<div class="accordion_con">
											<div class="period_inquiry">
												<div class="period_ymd">
													<p>
														<span>
															<select name="" tabindex="4">
											                      <option value="">2014</option>
											                      <option value="">2015</option>
											                </select>
											                <em>년</em>
														</span>
													</p>
													<p>
														<span>
															<select name="" tabindex="4">
											                      <option value="">1</option>
											                      <option value="">2</option>
											                      <option value="">3</option>
											                      <option value="">4</option>
											                      <option value="">5</option>
											                      <option value="">6</option>
											                      <option value="">7</option>
											                      <option value="">8</option>
											                      <option value="">9</option>
											                      <option value="">10</option>
											                      <option value="">11</option>
											                      <option value="">12</option>
											                </select>
											                <em>월</em>
														</span>
													</p>
													<p>
														<span>
															<select name="" tabindex="5">
											                      <option value="">1</option>
											                      <option value="">2</option>
											                      <option value="">3</option>
											                      <option value="">4</option>
											                      <option value="">5</option>
											                      <option value="">6</option>
											                      <option value="">7</option>
											                      <option value="">8</option>
											                      <option value="">9</option>
											                      <option value="">10</option>
											                      <option value="">11</option>
											                      <option value="">12</option>
											                      <option value="">13</option>
											                      <option value="">14</option>
											                      <option value="">15</option>
											                      <option value="">16</option>
											                      <option value="">17</option>
											                      <option value="">18</option>
											                      <option value="">19</option>
											                      <option value="">20</option>
											                      <option value="">21</option>
											                      <option value="">22</option>
											                      <option value="">23</option>
											                      <option value="">24</option>
											                      <option value="">25</option>
											                      <option value="">26</option>
											                      <option value="">27</option>
											                      <option value="">28</option>
											                      <option value="">29</option>
											                      <option value="">30</option>
											                      <option value="">31</option>
											                </select>
											                <em>일</em>
											            </span>
												    </p>
												</div>
												<div class="period_ymd">
													<p>
														<span><!-- 2015-05-09 수정
															<select name="" tabindex="4">
											                      <option value="">2014</option>
											                      <option value="">2015</option>
											                </select>
											                <em>년</em>
														</span>
													</p>
													<p>
														<span>
															<select name="" tabindex="4">
											                      <option value="">1</option>
											                      <option value="">2</option>
											                      <option value="">3</option>
											                      <option value="">4</option>
											                      <option value="">5</option>
											                      <option value="">6</option>
											                      <option value="">7</option>
											                      <option value="">8</option>
											                      <option value="">9</option>
											                      <option value="">10</option>
											                      <option value="">11</option>
											                      <option value="">12</option>
											                </select>
											                <em>월</em>
														</span>
													</p>
													<p>
														<span>
															<select name="" tabindex="5">
											                      <option value="">1</option>
											                      <option value="">2</option>
											                      <option value="">3</option>
											                      <option value="">4</option>
											                      <option value="">5</option>
											                      <option value="">6</option>
											                      <option value="">7</option>
											                      <option value="">8</option>
											                      <option value="">9</option>
											                      <option value="">10</option>
											                      <option value="">11</option>
											                      <option value="">12</option>
											                      <option value="">13</option>
											                      <option value="">14</option>
											                      <option value="">15</option>
											                      <option value="">16</option>
											                      <option value="">17</option>
											                      <option value="">18</option>
											                      <option value="">19</option>
											                      <option value="">20</option>
											                      <option value="">21</option>
											                      <option value="">22</option>
											                      <option value="">23</option>
											                      <option value="">24</option>
											                      <option value="">25</option>
											                      <option value="">26</option>
											                      <option value="">27</option>
											                      <option value="">28</option>
											                      <option value="">29</option>
											                      <option value="">30</option>
											                      <option value="">31</option>
											                </select>
											                <em>일</em>
											            </span>
												    </p>
												</div>
											    <p class="inquiry"><span class="btn size2 bgcolor1"><a>조회</a></span></p><!-- 2015-05-09 수정
											</div>
										</div>
									</div>
								</div>
								<!-- //기간 조회

							</div>

						</div>

					</div> -->
	        <!-- 20180713 적립금 수정 s -->
	        <div class="summaryZone">
	          <ul class="savemoney">
	            <li>
	                <span class="txt">총 적립금</span>
	                <span class="pt_total"><em>30,480</em>원</span>
	            </li>
	            <li>
	                <span class="txt">30일 이내 소멸예정</span>
	                <span class="pt"><em>-1,450</em>원</span>
	            </li>
	            <li>
	                <span class="txt">적립예정</span>
	                <span class="pt"><em>0</em>원</span>
	            </li>
	          </ul>

	          <ul class="pt-list ui-tab-btns">
							<li><a href="#none" class="current" >적립내역</a></li>
							<li><a href="#none">소멸내역</a></li>
							<li><a href="#none">사용내역</a></li>
						</ul>
	          <!-- 적립내역 -->
	          <div class="pt-list ui-tab-content" style="display:block">
	            <ul class="tab-term ui-tab-btns">
	              <li><a href="#none" class="current">1개월</a></li> <!-- 선택시 .current -->
	              <li><a href="#none">3개월</a></li>
	              <li><a href="#none">6개월</a></li>
	              <li><a href="#none" class="accordion_btn">기간조회</a></li>
	            </ul>
	            <!-- 기간 조회 -->
	            <div class="accordion_wrap">
	              <div class="period">
	                <div class="accordion_con">
	                  <div class="period_inquiry">
	                    <div class="period_ymd">
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">2014</option>
	                            <option value="">2015</option>
	                          </select>
	                          <em>년</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                          </select>
	                          <em>월</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="5">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                            <option value="">13</option>
	                            <option value="">14</option>
	                            <option value="">15</option>
	                            <option value="">16</option>
	                            <option value="">17</option>
	                            <option value="">18</option>
	                            <option value="">19</option>
	                            <option value="">20</option>
	                            <option value="">21</option>
	                            <option value="">22</option>
	                            <option value="">23</option>
	                            <option value="">24</option>
	                            <option value="">25</option>
	                            <option value="">26</option>
	                            <option value="">27</option>
	                            <option value="">28</option>
	                            <option value="">29</option>
	                            <option value="">30</option>
	                            <option value="">31</option>
	                          </select>
	                          <em>일</em>
	                        </span>
	                      </p>
	                    </div>
	                    <div class="period_ymd">
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">2014</option>
	                            <option value="">2015</option>
	                          </select>
	                          <em>년</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                          </select>
	                          <em>월</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="5">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                            <option value="">13</option>
	                            <option value="">14</option>
	                            <option value="">15</option>
	                            <option value="">16</option>
	                            <option value="">17</option>
	                            <option value="">18</option>
	                            <option value="">19</option>
	                            <option value="">20</option>
	                            <option value="">21</option>
	                            <option value="">22</option>
	                            <option value="">23</option>
	                            <option value="">24</option>
	                            <option value="">25</option>
	                            <option value="">26</option>
	                            <option value="">27</option>
	                            <option value="">28</option>
	                            <option value="">29</option>
	                            <option value="">30</option>
	                            <option value="">31</option>
	                          </select>
	                          <em>일</em>
	                        </span>
	                      </p>
	                    </div>
	                    <p class="inquiry"><span class="btn size2 bgcolor1"><a>조회</a></span></p>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <!-- //기간 조회 -->
	            <!-- 조회일자 -->
	            <div class="term-result">
	              <span>2015.05.01 - 2015.05.30</span>
	            </div>
	            <!-- //조회일자 -->
	            <!-- 적립내역 리스트 -->
	            <dl>
	              <dt>
	                <span class="day">2015.04.30</span>
	                <span class="name">모바일 첫 구매 적립금 <i class="new">N</i></span>
	              </dt>
	              <dd>
	                <span class="coment">적립완료</span>
	                <span class="pt plus">+3,000</span>
	              </dd>
	            </dl>
	            <dl>
	              <dt>
	                <span class="day">2015.04.30</span>
	                <span class="name">모바일 첫 구매 적립금 모바일 첫 구매 적립금 모바일 첫 구매 적립금</span>
	              </dt>
	              <dd>
	                <span class="coment">적립완료</span>
	                <span class="pt plus">+3,000</span>
	              </dd>
	            </dl>
	            <dl>
	              <dt>
	                <span class="day">2015.04.04</span>
	                <span class="name">모바일 첫 구매 적립금 모바일 첫 구매 적립금 모바일 첫 구매 적립금</span>
	              </dt>
	              <dd>
	                <span class="coment">적립완료</span>
	                <span class="pt plus">+3,000</span>
	              </dd>
	            </dl>
	            <!-- //적립내역 리스트 -->
	            <!-- btn -->
	            <div class="btns_wrap">
								<span class="btn viewmore"><a>더보기</a></span>
							</div>
	            <!-- //btn -->
	            <!-- 내역이 없을 경우 -->
	            <div class="list_nodata">
	              <p>적립금 내역이 없습니다.<br>적립 및 사용 이력이 있으시다면<br>기간을 길게 설정해보세요.</p>
	            </div>
	            <!-- //내역이 없을 경우 -->
	          </div>
	          <!-- //적립내역 -->
	          <!-- 소멸내역 -->
	          <div class="pt-list ui-tab-content" style="display:none">
	            <ul class="tab-term ui-tab-btns">
	              <li><a href="#none" class="current">1개월</a></li> <!-- 선택시 .current -->
	              <li><a href="#none">3개월</a></li>
	              <li><a href="#none">6개월</a></li>
	              <li><a href="#none" class="accordion_btn">기간조회</a></li>
	            </ul>
	            <!-- 기간 조회 -->
	            <div class="accordion_wrap">
	              <div class="period">
	                <div class="accordion_con">
	                  <div class="period_inquiry">
	                    <div class="period_ymd">
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">2014</option>
	                            <option value="">2015</option>
	                          </select>
	                          <em>년</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                          </select>
	                          <em>월</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="5">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                            <option value="">13</option>
	                            <option value="">14</option>
	                            <option value="">15</option>
	                            <option value="">16</option>
	                            <option value="">17</option>
	                            <option value="">18</option>
	                            <option value="">19</option>
	                            <option value="">20</option>
	                            <option value="">21</option>
	                            <option value="">22</option>
	                            <option value="">23</option>
	                            <option value="">24</option>
	                            <option value="">25</option>
	                            <option value="">26</option>
	                            <option value="">27</option>
	                            <option value="">28</option>
	                            <option value="">29</option>
	                            <option value="">30</option>
	                            <option value="">31</option>
	                          </select>
	                          <em>일</em>
	                        </span>
	                      </p>
	                    </div>
	                    <div class="period_ymd">
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">2014</option>
	                            <option value="">2015</option>
	                          </select>
	                          <em>년</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                          </select>
	                          <em>월</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="5">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                            <option value="">13</option>
	                            <option value="">14</option>
	                            <option value="">15</option>
	                            <option value="">16</option>
	                            <option value="">17</option>
	                            <option value="">18</option>
	                            <option value="">19</option>
	                            <option value="">20</option>
	                            <option value="">21</option>
	                            <option value="">22</option>
	                            <option value="">23</option>
	                            <option value="">24</option>
	                            <option value="">25</option>
	                            <option value="">26</option>
	                            <option value="">27</option>
	                            <option value="">28</option>
	                            <option value="">29</option>
	                            <option value="">30</option>
	                            <option value="">31</option>
	                          </select>
	                          <em>일</em>
	                        </span>
	                      </p>
	                    </div>
	                    <p class="inquiry"><span class="btn size2 bgcolor1"><a>조회</a></span></p>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <!-- //기간 조회 -->
	            <!-- 조회일자 -->
	            <div class="term-result">
	              <span>2015.05.01 - 2015.05.30</span>
	            </div>
	            <!-- //조회일자 -->
	            <!-- 소멸내역 리스트 -->
	            <dl>
	              <dt>
	                <span class="day">2015.04.30</span>
	                <span class="name">사용기간만료</span>
	              </dt>
	              <dd>
	                <span class="coment">소멸예정</span>
	                <span class="pt">-3,000</span>
	              </dd>
	            </dl>
	            <dl>
	              <dt>
	                <span class="day">2015.04.30</span>
	                <span class="name">사용기간만료</span>
	              </dt>
	              <dd>
	                <span class="coment">소멸</span>
	                <span class="pt">-3,000</span>
	              </dd>
	            </dl>
	            <dl>
	              <dt>
	                <span class="day">2015.04.04</span>
	                <span class="name">사용기간만료</span>
	              </dt>
	              <dd>
	                <span class="coment">소멸</span>
	                <span class="pt">-3,000</span>
	              </dd>
	            </dl>
	            <!-- //소멸내역 리스트 -->
	            <!-- btn -->
	            <div class="btns_wrap">
								<span class="btn viewmore"><a>더보기</a></span>
							</div>
	            <!-- //btn -->
	          </div>
	          <!-- //소멸내역 -->
	          <!-- 사용내역 -->
	          <div class="pt-list ui-tab-content" style="display:none">
	            <ul class="tab-term ui-tab-btns">
	              <li><a href="#none" class="current">1개월</a></li> <!-- 선택시 .current -->
	              <li><a href="#none">3개월</a></li>
	              <li><a href="#none">6개월</a></li>
	              <li><a href="#none" class="accordion_btn">기간조회</a></li>
	            </ul>
	            <!-- 기간 조회 -->
	            <div class="accordion_wrap">
	              <div class="period">
	                <div class="accordion_con">
	                  <div class="period_inquiry">
	                    <div class="period_ymd">
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">2014</option>
	                            <option value="">2015</option>
	                          </select>
	                          <em>년</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                          </select>
	                          <em>월</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="5">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                            <option value="">13</option>
	                            <option value="">14</option>
	                            <option value="">15</option>
	                            <option value="">16</option>
	                            <option value="">17</option>
	                            <option value="">18</option>
	                            <option value="">19</option>
	                            <option value="">20</option>
	                            <option value="">21</option>
	                            <option value="">22</option>
	                            <option value="">23</option>
	                            <option value="">24</option>
	                            <option value="">25</option>
	                            <option value="">26</option>
	                            <option value="">27</option>
	                            <option value="">28</option>
	                            <option value="">29</option>
	                            <option value="">30</option>
	                            <option value="">31</option>
	                          </select>
	                          <em>일</em>
	                        </span>
	                      </p>
	                    </div>
	                    <div class="period_ymd">
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">2014</option>
	                            <option value="">2015</option>
	                          </select>
	                          <em>년</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="4">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                          </select>
	                          <em>월</em>
	                        </span>
	                      </p>
	                      <p>
	                        <span>
	                          <select name="" tabindex="5">
	                            <option value="">1</option>
	                            <option value="">2</option>
	                            <option value="">3</option>
	                            <option value="">4</option>
	                            <option value="">5</option>
	                            <option value="">6</option>
	                            <option value="">7</option>
	                            <option value="">8</option>
	                            <option value="">9</option>
	                            <option value="">10</option>
	                            <option value="">11</option>
	                            <option value="">12</option>
	                            <option value="">13</option>
	                            <option value="">14</option>
	                            <option value="">15</option>
	                            <option value="">16</option>
	                            <option value="">17</option>
	                            <option value="">18</option>
	                            <option value="">19</option>
	                            <option value="">20</option>
	                            <option value="">21</option>
	                            <option value="">22</option>
	                            <option value="">23</option>
	                            <option value="">24</option>
	                            <option value="">25</option>
	                            <option value="">26</option>
	                            <option value="">27</option>
	                            <option value="">28</option>
	                            <option value="">29</option>
	                            <option value="">30</option>
	                            <option value="">31</option>
	                          </select>
	                          <em>일</em>
	                        </span>
	                      </p>
	                    </div>
	                    <p class="inquiry"><span class="btn size2 bgcolor1"><a>조회</a></span></p>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <!-- //기간 조회 -->
	            <!-- 조회일자 -->
	            <div class="term-result">
	              <span>2015.05.01 - 2015.05.30</span>
	            </div>
	            <!-- //조회일자 -->
	            <!-- 사용내역 리스트 -->
	            <dl>
	              <dt>
	                <span class="day">2015.04.30</span>
	                <span class="name"><a href="#">마르조 베스트 + 카디건 풀 패키지 5종 마르조 베스트 + 카디건 풀 패키지 5종</a></span>
	              </dt>
	              <dd>
	                <span class="coment">상품구매 차감</span>
	                <span class="pt">-3,000</span>
	              </dd>
	            </dl>
	            <dl>
	              <dt>
	                <span class="day">2015.04.30</span>
	                <span class="name"><a href="#">마르조 베스트 + 카디건 풀 패키지 5종</a></span>
	              </dt>
	              <dd>
	                <span class="coment">상품구매 차감</span>
	                <span class="pt">-3,000</span>
	              </dd>
	            </dl>
	            <dl>
	              <dt>
	                <span class="day">2015.04.04</span>
	                <span class="name"><a href="#">상품명</a></span>
	              </dt>
	              <dd>
	                <span class="coment">상품구매 차감</span>
	                <span class="pt">-3,000</span>
	              </dd>
	            </dl>
	            <!-- //사용내역 리스트 -->
	            <!-- btn -->
	            <div class="btns_wrap">
								<span class="btn viewmore"><a>더보기</a></span>
							</div>
	            <!-- //btn -->
	          </div>
	          <!-- //사용내역 -->
	        </div>
	        <!-- //20180713 적립금 수정 e -->

				</section>
			</main>
			<!--main E-->
			<!--footer S-->
			<%@ include file="/contents/2015_t/views/includefile/footer.jsp"%>
			<!--footer E-->
		</div><!-- end wrap_inner -->
	</div><!-- end wrap -->

	<%@ include file="/contents/2015_t/views/includefile/page_top.jsp"%>
</div><!-- end container -->
<%@ include file="/contents/2015_t/views/includefile/scriptlink.jsp"%>
</body>
</html>
