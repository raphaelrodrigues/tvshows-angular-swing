<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html ng-app="MyApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">


<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
<script src="<c:url value="/resources/js/angular-resource.js" />"></script>

<script src="<c:url value="/resources/js/controllers.js" />"></script>
<script src="<c:url value="/resources/js/services.js" />"></script>
<script src="<c:url value="/resources/js/app.js" />"></script>


<title>TvShows</title>

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
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<body>


<h3><center>${tvshow} </center></h3>
<div ng-controller="TvShowsDetailsCtrl">
	<a href="#" class="btn btn-primary" ng-click="addEps()">Spoil Me</a>
	<div class="container" id="tourpackages-carousel">

		<div class="row">
		
				<div class="col-xs-18 col-sm-6 col-md-3"  ng-repeat="episode in episodes  | filter:query | orderBy:orderProp ">
					<div class="thumbnail">
						<img src="http://placehold.it/500x300" alt="">
						<div class="caption">
							<h4>
								 {{episode.name}}
							</h4>
							<p>Episode Number = {{episode.ep}}</p>
							
								<a href="<c:url value='#'/>" class="btn btn-info btn-xs"
									role="button">Rating: {{episode.classification}}</a>
							</p>
						</div>
					</div>
				</div>
		</div>
		<!-- End row -->
</div>

</div>


</body>
</html>