<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head></head>

<body>

	<c:forEach items="${search}" var="post">
		<div id="left" class="row col-lg-12">

			<div class="form-group col-lg-6">
				<label for="PostBy" style="margin-top: 15%; font-size: 20px">Group
					Name ${post.groupName}</label>
			</div>
			
			<div class="form-group col-lg-6">
				<label for="PostBy" style="margin-top: 15%; font-size: 20px">Group
					About ${post.about}</label>
			</div>
			<form action = "/requestGroup/${user.userId }/${post.groupId }" method="post">
			<button type="submit"> Join </button>
			</form>
			
			<form action = "/groupPage/${post.groupId }" method="get">
			<button type="submit"> see group </button>
			</form>
		</div>

	</c:forEach>
</body>
</html>