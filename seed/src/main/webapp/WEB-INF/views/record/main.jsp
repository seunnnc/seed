<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="mainContainer">
	<div class="leftContainer">
		<div class="todoContainer">
			<p>오늘의 씨앗을 뿌려보세요 🌱</p>
			<form action="/record/todo" method="post">
				<div>
				<input type="hidden" value="${loginUser.i_user}">
					<select name="i_category" id="category-select">
						<option value="0">카테고리 선택</option>
						<c:forEach items="${categoryList}" var="item">
							<option value="${item.i_category}">${item.category_name}</option>
						</c:forEach>
					</select>
				</div>
				<textarea name="todo_ctnt" cols="30" rows="2" maxlength="30" placeholder="오늘의 계획을 입력해보세요!" required="required">
					${item.todo_ctnt}
				</textarea>
				<button id="todoBtn">등록하기</button>
			</form>
		</div>
		<div class="todayRecordConatiner">
			<p>오늘은 어땠나요?</p>
			<form action="/record/diary" method="post">
				<input type="hidden" value="${loginUser.i_user}">
				<textarea name="content" cols="50" rows="10" maxlength="500" placeholder="오늘하루를 리뷰해 보세요!" required="required">
					${item.content}
				</textarea>
				<button id="todoBtn">등록하기</button>
			</form>
		</div>
	</div>
	<div class="rightContainer">
		<div id='calendar'></div>
	</div>
</div>