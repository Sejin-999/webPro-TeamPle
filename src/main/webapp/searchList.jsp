<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384- b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script> -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
<title>SearchList</title>
</head>
<body style="background-color: #230312;">
	<%@ include file="../navbar.jsp"%>
	<div class="container" style="color: white;">
		<table style="width: 100%">
			<tbody>
				<tr>
					<td style="width: 35%; text-align: center; padding-right: 5%;">
						<h1 style="margin-top: 2%; margin-bottom: 5%;">GIN</h1>
					</td>
					<td style="width: 50%; vertical-align: top; text-align: center;">
						<h1 style="margin-top: 2%; margin-bottom: 5%;">Drinks</h1>
					</td>
				</tr>
				<tr>
					<td style="width: 35%; vertical-align: top; padding-right: 5%;">
						<img src="" style="width: 100%">
					</td>
					<td>
						<table style="width: 100%; text-align: center;">
							<tbody>
								<c:forEach var="drinks" items="${drinklist}" varStatus="status">
									<tr style="padding-right: 5%; padding-left: 5%;">
										<td
											style="vertical-alight: top; padding-right: 2.5%; padding-left: 2.5%;">
											<figure>
												<img src="${drinks.image}" style="width: 100%">
												<figcaption>${drinks.name}</figcaption>
											</figure>
										</td>
									</tr>
								</c:forEach>
								<c:if test="${error != null}">
									<div
										class="alert alert-danger alert-dismissible fade show mt-3">
										에러 발생: ${error}
										<button type="button" class="btn-close"
											data-bs-dismiss="alert"></button>
									</div>
								</c:if>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@ include file="../footer.jsp"%>
</body>

</html>
