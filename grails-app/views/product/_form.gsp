<%@ page import="com.pasal.Product" %>
<script type="text/javascript">
    function blinkPop(){
        //alert ('okay dude');
        $("#body_main").text("okay Dude !!")
    }
</script>
<g:form action="save" >
    <fieldset class="form">
        <div class="fieldcontain ${hasErrors(field: 'name', 'error')} ">
            <label for="name">
                <g:message code="product.name.label" default="Name" />

            </label>
            <g:textField name="name" />
        </div>

        <div class="fieldcontain ${hasErrors(field: 'price', 'error')} ">
            <label for="price">
                <g:message code="product.price.label" default="Price" />

            </label>
            <g:textField name="price" />
        </div>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save" onclick="blinkPop()" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </fieldset>
</g:form>
