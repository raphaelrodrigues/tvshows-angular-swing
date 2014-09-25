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
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.4/underscore-min.js"></script>
	
	
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
				<li><a href="#"></a></li>
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


<div data-ng-controller="ClientCtrl">
    <ul class="list-inline">
        <li>
            <div class="alert alert-info">
                 <h4>Total Filtered : {{filtered.length}}</h4>

            </div>
        </li>
        <li>
            <div class="btn-group" data-ng-class="{open: open}">
                <button class="btn">Filter by Channel</button>
                <button class="btn dropdown-toggle btn-default" data-ng-click="open=!open"><span class="caret"></span>

                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
                    <li><a data-ng-click="checkAll()"><i class="icon-ok-sign"></i>  Check All</a>

                    </li>
                    <li><a data-ng-click="selectedCompany=[];"><i class="icon-remove-sign"></i>  Uncheck All</a>

                    </li>
                    <li class="divider"></li>
                    <li data-ng-repeat="company in companyList"> <a data-ng-click="setSelectedClient()">{{company.name}}<span data-ng-class="isChecked(company.id)"></span></a>

                    </li>
                </ul>
            </div>
        </li>
    </ul>
    <hr>
     <h3>Shows Table:</h3>

    <table class="table table-hover table-striped">
        <thead>
            <tr>
                <th style="width:10%">#</th>
                <th style="width:20%">Name</th>
                <th style="width:40%">Designation</th>
                <th style="width:30%">Company</th>
            </tr>
        </thead>
        <tbody>
            <tr data-ng-repeat="client in filtered = (clients | companyFilter:selectedCompany)">
                <td>{{$index + 1}}</td>
                <td><em>{{client.name}}</em>

                </td>
                <td>{{client.designation}}</td>
                <td>{{client.company.name}}</td>
            </tr>
        </tbody>
    </table>
    <!-- <pre>{{selectedCompany|json}}</pre>
<pre>{{companyList|json}}</pre>
<pre>{{clients|json}}</pre>
-->
</div>



</body>
</html>