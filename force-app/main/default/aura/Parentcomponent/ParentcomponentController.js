({
	methodcallFromChild : function(component, event, helper) {
        var childcmp = component.find("msg");
        
        component.set("!v.valueFromChild", childcmp.get("!v.valueForParent"));
		
	}
})