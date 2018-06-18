<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<header class="header">
			<h1><a href="../main/home.jsp"><span>ShoppingnT</span></a></h1>
			<a class="nav_aside"><span>메뉴</span></a>
			<a class="search"><span>검색</span></a>			
		</header>
		
		<div class="searchZone"><!-- 2016-06-17 위치 변경 및 최근검색어 영역 추가 -->
			<fieldset>
				<legend>검색어 입력</legend>
				<form>
					<p>
						<span>
							<input type="text" placeholder="요즘 유행하는 핫 아이템이 궁금하다면?!" name="" id="" />
							<a class="bt"><em></em></a>
						</span>
					</p>
				</form>
			</fieldset>
			<div class="search_list"> 
				<dl>
					<dt>최근검색어</dt>
					<dd><a href="">침대</a></dd>
					<dd><a href="">간이침대</a></dd>
					<dd><a href="">이층침대</a></dd>
					<dd><a href="">매트리스</a></dd>
					<dd><a href="">쇼파형침대</a></dd>
					<dd><a href="">침대 커버</a></dd>
					<!-- 최근 검색어 없을 경우 -->
					<!-- <dd><p>최근 검색어 내역이 없습니다.</p></dd> -->
					<!-- 최근 검색어 없을 경우 //-->
					<dd>
						<span class="btn size2 bgcolor8"><a>닫기</a></span>
					</dd>
				</dl>
			</div>
		</div>