
<div class="col-sm-3 col-md-2 sidebar" >
    <ul class="nav nav-sidebar">

        <li class=${caller.equals('dash')?"active":""}><g:link controller="dashBoard">Overview <span class="sr-only">(current)</span></g:link></li>
        <li class=${caller.equals('report')?"active":""} ><a href="#">Reports</a></li>
        <li class=${caller.equals('analytics')?"active":""}><a href="#">Analytics</a></li>
        <li class=${caller.equals('export')?"active":""}><a href="#">Export</a></li>
    </ul>
    <ul class="nav nav-sidebar">
        <li class=${caller.equals('product')?"active":""}><g:link controller="product" action="index" >Products</g:link></li>
        <li><a href="">Bills</a></li>
        <li><a href="">Sales</a></li>
        <li><a href="">Expenditures</a></li>
        <li><a href="">Stock</a></li>
    </ul>
    %{--<ul class="nav nav-sidebar">
        <li><a href="">Nav item again</a></li>
        <li><a href="">One more nav</a></li>
        <li><a href="">Another nav item</a></li>
    </ul>--}%
</div>