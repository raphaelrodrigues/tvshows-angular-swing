<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html ng-app="MyApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">

<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false"></script>
<script src="<c:url value="/resources/js/jquery-1.9.1.js" />"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
<script src="<c:url value="/resources/js/jquery-ui.js" />"></script>

<script src="<c:url value="/resources/js/angular-resource.js" />"></script>
<script src="<c:url value="/resources/js/ngAutocomplete.js" />"></script>
<script src="<c:url value="resources/js/ng-infinite-scroll.min.js" />"></script>
<script src="<c:url value="/resources/js/directives.js" />"></script>
<script src="<c:url value="/resources/js/controllers.js" />"></script>
<script src="<c:url value="/resources/js/services.js" />"></script>
<script src="<c:url value="/resources/js/filters.js" />"></script>
<script src="<c:url value="/resources/js/app.js" />"></script>



<title>TvShows</title>

<style rel="stylesheet" type="text/css">
body {
	height: 200%;
}
</style>
</head>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-brand-centered">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<div class="navbar-brand navbar-brand-centered">TvShows</div>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-brand-centered">
			<ul class="nav navbar-nav">
				<li><a href="reddit">Reddit</a></li>
				<li><a href="/tvshows">TvShows</a></li>
				<li><a href="tables">Filters</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<div ng-controller="TestCtrl">

						<form id="form" role="form">

							<div class="form-group move-down">
								<input type="text" id="Autocomplete" class="form-control"
									ng-autocomplete="result1" details="details1" options="options1" />
							</div>

						</form>
					</div>
				</li>
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<body>
	<table class="table table-striped">
		<tr>
			<th ng-click="orderBy('firstName')"><msg key="firstName"></msg>
				<i ng-class="orderIcon('firstName')"></i></th>
			<th ng-click="orderBy('lastName')"><msg key="lastName"></msg> <i
				ng-class="orderIcon('lastName')"></i></th>
			<th><msg key="delete"></msg></th>
		</tr>
		<tr ng-repeat="person in persons|orderBy:order">
			<td>{{person.firstName}}</td>
			<td>{{person.lastName}}</td>
			<td><a ng-click="delete(person)"><i class="icon-trash"></i></a></td>
		</tr>
	</table>
	<form>
		<fieldset>
			<legend>
				<msg key="newPerson"></msg>
			</legend>
			<label> <msg key="firstName"></msg>
			</label> <input type="text" ng-model="person.firstName" /> <label> <msg
					key="lastName"></msg>
			</label> <input type="text" ng-model="person.lastName" /> <label></label>
			<button type="submit" class="btn" ng-click="save()">
				<msg key="save"></msg>
			</button>
		</fieldset>
	</form>
	${players}
	<div class="row">
		<div class="col-lg-offset-2 col-sm-4 col-md-4">
			<ul id="sourceList" dnd-between-list="source,targetList">
				<li class="alert alert-error nomargin alert-warning"
					ng-repeat="item in source">{{item.value}}</li>
			</ul>
		</div>
		<div class="col-sm-4 col-md-4">
			<ul id="targetList" dnd-between-list="model,sourceList">
				<li class="alert alert-info nomargin" ng-repeat="item in model">{{item.value}}</li>
			</ul>
		</div>
	</div>

</body>
</html>