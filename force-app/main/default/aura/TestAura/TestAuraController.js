({
	ControllerMethod : function(component, event, helper) {
		var Name = component.get("v.ValueName");
        console.log("Vale name"+Name);
     // var NewName =  component.get("");
	   component.set("v.PrntValue", Name);
    },
    handleCE  : function(component, event, helper){
        var childMesge = event.getParam("LastName");
        
      console.log("Event Handler" +childMesge );
    }
})