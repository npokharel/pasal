%{--
<%@ page import="com.pasal.Bill" %>

<script>
	function checker(){
		var msg= jQuery('#rate').val;
	alert(msg);
	}
	
</script>

<div id="text_field" class="fieldcontain ${hasErrors(bean: billInstance, field: 'billDate', 'error')} required">
	<label for="billDate">
		<g:message code="bill.billDate.label" default="Bill Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="billDate" precision="day"  value="${billInstance?.billDate}"  />
</div>
<br>
<div style="float:left;" class="fieldcontain ${hasErrors(bean: billInstance, field: 'cash', 'error')} required">
	<label for="cash">
		<g:message code="bill.cash.label" default="Cash" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cash" value="${fieldValue(bean: billInstance, field: 'cash')}" required="" type=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'particulars', 'error')} ">
	<label for="particulars">
		<g:message code="bill.particulars.label" default="Particulars" />
	</label>
	<g:select onchange="checker();" name="billInstance.product" from="${com.pasal.Product.list()}" />
	
</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="bill.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${billInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'rate', 'error')} required">
	<label for="rate">
		<g:message code="bill.rate.label" default="Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field id="rate" name="rate" value="${fieldValue(bean: billInstance, field: 'rate')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="bill.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: billInstance, field: 'total')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'userName', 'error')} ">
	<label for="userName">
		<g:message code="bill.userName.label" default="User Name" />
		
	</label>
	<g:textField name="userName" value="${billInstance?.userName}"/>
</div>

--}%
<div class="signup_form">
    <table>
        <tr>
            <td class="label">
                <label for="billDate"><g:message code="bill.billDate.label" default="Bill Date" />
                    <span class="required-indicator">*</span>
                </label>
            </td>
            <td class="field"><g:datePicker name="billDate" precision="day"  value="${billInstance?.billDate}"  /></td>
        </tr>

        <tr>
            <td class="label">
                <label for="cash">
                    <g:message code="bill.cash.label" default="Cash" />
                    <span class="required-indicator">*</span>
                </label>
            </td>
            <td class="field"><g:field name="cash" value="${fieldValue(bean: billInstance, field: 'cash')}" required="" type=""/></td>
        </tr>

        <tr>
            <td class="label">
                <label for="particulars">
                    <g:message code="bill.particulars.label" default="Particulars" />
                </label>
            </td>
            <td class="field"><g:select onchange="checker();" name="billInstance.product" from="${com.pasal.Product.list()}" /></td>
        </tr>

        <tr>
            <td class="label">
                <label for="quantity">
                    <g:message code="bill.quantity.label" default="Quantity" />
                    <span class="required-indicator">*</span>
                </label>
            </td>
            <td class="field">
                <g:field name="quantity" type="number" value="${billInstance.quantity}" required=""/>
            </td>
        </tr>
        <tr>
            <td class="label">
                <label for="rate">
                    <g:message code="bill.rate.label" default="Rate" />
                    <span class="required-indicator">*</span>
                </label>
            </td>
            <td class="field">
                <g:field id="rate" name="rate" value="${fieldValue(bean: billInstance, field: 'rate')}" required="" type=""/>
            </td>
        </tr>

        <tr>
            <td>
                <label for="total">
                    <g:message code="bill.total.label" default="Total" />
                    <span class="required-indicator">*</span>
                </label>
            </td>
            <td>
                <g:field name="total" value="${fieldValue(bean: billInstance, field: 'total')}" required="" type=""/>
            </td>
        </tr>

    </table>
</div>