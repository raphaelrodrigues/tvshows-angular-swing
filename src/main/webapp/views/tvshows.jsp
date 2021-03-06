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

	<div ng-controller="TvShowsCtrl">

		Search: <input ng-model="query"> Sort by: <select
			ng-model="orderProp">
			<option value="name">Alphabetical</option>
			<option value="classification">Classification</option>
		</select>


		<div ng-controller='DefaultCtrl'>
			AutoComplete: <input auto-complete ui-items="names" ng-model="selected">
			selected = {{selected}}
		</div>



		<div class="container" id="tourpackages-carousel">

			<div class="row">
				<div infinite-scroll='loadMore()' infinite-scroll-distance='1'>
					<div class="col-xs-18 col-sm-6 col-md-3"
						ng-repeat="tvshow in tvshows  | filter:query | orderBy:orderProp ">
						<div class="thumbnail">
							<img src="http://placehold.it/500x300" alt="">
							<div class="caption">
								<h4>
									<a href="<c:url value='{{tvshow.friendlyURL}}'/>">
										{{tvshow.name}} </a>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Facere, soluta, eligendi doloribus sunt minus amet sit debitis
									repellat. Consectetur, culpa itaque odio similique suscipit</p>
								<p>

									<a href="<c:url value='{{tvshow.friendlyURL}}'/>"
										class="btn btn-info btn-xs" role="button">Rating:
										{{tvshow.classification}}</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End row -->

		</div>
		<!-- End container -->
	</div>



</body>
</html>