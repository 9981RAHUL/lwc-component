({
	fireNow : function(component, event, helper) {
		var compEvent = 
component.getEvent("childEvent");
	
    compEvent.setParams({
    "LastName": "Naugraiya"
})
    compEvent.fire();
    }
})