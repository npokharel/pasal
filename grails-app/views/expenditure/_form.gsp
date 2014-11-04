<%@ page import="com.pasal.Expenditure" %>



<div class="fieldcontain ${hasErrors(bean: expenditureInstance, field: 'amount', 'error')} ">
	<label for="amount">
		<g:message code="expenditure.amount.label" default="Amount" />
		
	</label>
	<g:textField name="amount" value="${expenditureInstance?.amount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: expenditureInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="expenditure.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${expenditureInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: expenditureInstance, field: 'particulars', 'error')} ">
	<label for="particulars">
		<g:message code="expenditure.particulars.label" default="Particulars" />
		
	</label>
	<g:textField name="particulars" value="${expenditureInstance?.particulars}"/>
</div>

