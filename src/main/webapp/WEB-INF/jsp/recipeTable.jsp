<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="pageTitle" value="Recipe Table View" />

<%@ include file ="common/header.jspf" %>
		<h1>Recipes</h1>
		<table>
			<tr class="image.row">
				<td class="place">_</td>

				<c:forEach var="recipe" items="${recipes}">
					<td><c:url var="recipeDetailsUrl" value="/recipeDetails" >
					<c:param name="recipeId" value="${recipe.recipeId }"/>
					</c:url>
					<c:url value="/img/recipe${recipe.recipeId}.jpg" 
					var="picture" /><a href="${recipeDetailsUrl }"><img class="image_style" src="${picture}"></a>
					</td>
				</c:forEach>


			</tr>
			<tr class="grayrow">
				<td>
					<h3>Name</h3>
				</td>
				<c:forEach var="recipe" items="${recipes}">
					<td><c:out value="${recipe.name}" /></td>
				</c:forEach>
			</tr>
			<tr>
				<td>
					<h3>Type</h3>
				</td>
				<c:forEach var="recipe" items="${recipes}">
					<td><c:out value="${recipe.recipeType}" /></td>
				</c:forEach>
			</tr>
			<tr class="grayrow">
				<td>
					<h3>Cook Time</h3>
				</td>
<c:forEach items="${recipes}">
					<td><c:out value="${recipe.cookTimeInMinutes} minutes"  /></td>
				</c:forEach>
			</tr>
			<tr>
			<td>
				<h3>Ingredients</h3>
			</td>
			 <c:forEach items="${recipes}">
					<td><c:set var="numIng" value="${recipe.ingredients.size()}" />
						<c:out value="${numIng} ingredients" /></td>
				</c:forEach>
			</tr>
			<tr class="grayrow">
			<td>
				<h3>Rating</h3>
				
			</td>
				<c:forEach var="recipe" items="${recipes}">
					<td><fmt:formatNumber value="${recipe.averageRating}"
							maxFractionDigits="0" var="star" /> <c:url
							value="/img/${star}-star.png" var="averageRating" /> <img
						class="image_rating" src="${averageRating}"></td>
				</c:forEach>
			</tr>
			
		</table>

<%@ include file ="common/footer.jspf" %>