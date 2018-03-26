<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Recipe Detail View" />

<%@ include file="common/header.jspf"%>




<div class="detail_box">
<div class="detail_container">
<div class="detail_row">
<c:url value="/img/recipe${recipe.recipeId}.jpg" 
	var="picture" /><img class="image_detail" src="${picture}">


	<ul style="list-style: none;">
		<li><h2 style="font-weight:bold">
			<c:out value="${recipe.name}" />
		</h2></li>	
		<li class="bar">
		</li>
		<li><h4>
			<c:out value="${recipe.description }" />
		</h4></li>
		<li class="bar">
		</li>
		<li><h3>
			Cook Time
		</h3></li>
		<li><h4>
			<c:out value="${recipe.cookTimeInMinutes }  in minutes" />
		</h4></li>
	</ul>

</div>
<div class="ingredients">
<h2>Ingredients</h2>
<h4 class="bar"></h4>
<c:forEach var="ingredient" items="${recipe.ingredients}">
					
				<h4><c:out value="${ingredient.quantity},  ${ingredient.name}" /></h4>					
</c:forEach>
</div>
<div>
</div>
<div class="preparation">
<h2>Preparation</h2>
<h4 class="bar"></h4>
<ol>
<c:forEach var="preparationSteps" items="${recipe.preparationSteps }" >
	<li><h3><c:out value="${preparationSteps}" /></h3></li>
</c:forEach>
</ol>
</div>
</div>
</div>
<!-- <c:forEach var="recipe" items="${recipes }" >
<c:url var="recipeDetailsUrl" value="/recipeDetails">
	<c:param name="recipeId" value="${recipe.recipeId }"
 />


 
 </c:url>
 </c:forEach> -->
<%@ include file="common/footer.jspf"%>