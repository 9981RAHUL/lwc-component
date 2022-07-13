({
	doAdd : function(component, event, helper) {
		var number1 = component.get('v.input1');
        var number2 = component.get('v.input2');
        alert(ParseInt(number1) + ParseInt(number2))
	},
    doSub : function(component, event, helper) {
		var number1 = component.get('v.input1');
        var number2 = component.get('v.input2');
        alert(ParseInt(number1) - ParseInt(number2))
	},
 doMul : function(component, event, helper) {
		var number1 = component.get('v.input1');
        var number2 = component.get('v.input2');
        alert(ParseInt(number1) * ParseInt(number2))
	},
doDiv : function(component, event, helper) {
		var number1 = component.get('v.input1');
        var number2 = component.get('v.input2');
        alert(ParseInt(number1) / ParseInt(number2))
	},
})