({
	filterMsgs : function(component, event, helper) {
        var searchText = component.get("c.getContactList");
        searchText.setParams({
            "search" : component.get("v.searchText")
        });
        console.log("Search"+component.get("v.searchText"));
        searchText.setCallback(this, function(response){
            let state = response.getState();
            console.log('State '+state);
            if(state==='SUCCESS') {
                var allList = response.getReturnValue();
                console.log("AllList"+allList);
                component.set("v.PaginationList",allList);
            }
        });
        $A.enqueueAction(searchText);
		
	},
    
})