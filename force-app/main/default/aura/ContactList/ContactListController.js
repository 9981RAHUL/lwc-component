({
	doInit : function(component, event, helper) {
        // step1//
		var action=component.get('c.getContactList');
        //optional step2//
        action.setparam({
        
        }); 
        //step4//
    action.setcallback(this, function(response){
    var responsevalue = response.getReturnValue();
        console.log('responsevalue' , responseValue);
},'SUCCESS');
		//step3//
    $A.enqueueAction(action, false);
}
})