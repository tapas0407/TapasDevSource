({
	showData : function(component, event, helper) {
        var action = component.get("c.getAllData");
        action.setCallback(this,function(response) {
            var state = response.getState();
            if (state === 'SUCCESS') {
                var responseObj = response.getReturnValue();
                console.log('responseObj'+JSON.stringify(responseObj));
                component.set("v.active",responseObj.activecount);
                component.set("v.death",responseObj.deathcount);
                component.set("v.affectedCountries",responseObj.affectedCountries);
                component.set("v.recovered",responseObj.recovered);
                console.log("Death"+component.get("v.death"));
                
            }
            });
       $A.enqueueAction(action);
	},
    Onclick: function(component, event, helper) {
        var countryName = component.find("country").get("v.value");
        console.log('countryName'+countryName);
        var actionCountry = component.get("c.getDataByCountry");
        actionCountry.setParams({
            countryName:countryName
        });
        actionCountry.setCallback(this,function(response) {
            var state = response.getState();
            if (state === 'SUCCESS') {
                var responseObj = (response.getReturnValue());
                console.log('resposneCountry '+JSON.stringify(responseObj));
                component.set("v.active",responseObj.activecount);
                component.set("v.death",responseObj.deathcount);
                component.set("v.affectedCountries",responseObj.affectedCountries);
                component.set("v.recovered",responseObj.recovered);
            }
        });
        $A.enqueueAction(actionCountry); 
    },
        
})