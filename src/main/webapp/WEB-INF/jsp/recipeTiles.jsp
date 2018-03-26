<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="pageTitle" value="Recipe Tile View" />

<%@ include file ="common/header.jspf" %>
	<div class="row">
	<c:forEach var="recipe" items="${recipes}">
	<div class="column">
<c:url var="recipeDetailsUrl" value="/recipeDetails" >
					<c:param name="recipeId" value="${recipe.recipeId }"/>
					</c:url>
					<c:url value="/img/recipe${recipe.recipeId}.jpg" 
					var="picture" /><a href="${recipeDetailsUrl }"><img class="image_style" src="${picture}"></a>
	<div class="green">
	<h3><c:out value="${recipe.name}" /></h3>
	<div class="bottom_row">
	</div>
	<fmt:formatNumber value="${recipe.averageRating}"
							maxFractionDigits="0" var="star" /> <c:url
							value="/img/${star}-star.png" var="averageRating" /> <img
						class="image_rating" src="${averageRating}">
	<c:set var="numIng" value="${recipe.ingredients.size()}" />
						<c:out value="${numIng} ingredients" />
	
	</div>
	</div>
	</c:forEach>
	</div>
	

<%@ include file ="common/footer.jspf" %>	
