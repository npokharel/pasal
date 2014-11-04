<div class="check-balance">
    <p><strong>Welcome!!! <sec:username/></strong></p>
    <p class="bg-txt">Total Balance - Rs.1000.00<br />Useable Balance - Rs.900.00</p>
</div>
<div class="services">
    <h3 class="service-head">Services</h3>
    <ul class="service-list">
        <li><g:remoteLink controller="bill" action="create" update="body_main">Create New Bill</g:remoteLink></li>
        <li><a href="#">Create new Expenditure</a></li>
        <li><a href="#">Add Stock</a></li>
        <li><g:remoteLink controller="product" action="create" update="body_main" >Add New Product </g:remoteLink></li>
    </ul>
</div>