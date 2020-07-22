Global class covid19 {
    @AuraEnabled
    public static ResponseJSONWrapper getAllData() {
        HTTP h = new HTTP ();
        HTTPRequest req = new HTTPRequest();
        req.setEndpoint('https://corona.lmao.ninja/v2/all');
        req.setMethod('GET');
        
        HTTPResponse res= h.send(req);
        Map <String,Object> result = new Map <String, Object>();
        result = (Map <String,Object>)JSON.deserializeUntyped(res.getBody());
        Decimal death = (Decimal)result.get('deaths');
        Decimal active = (Decimal)result.get('active');
        Decimal affectedCountries = (Decimal)result.get('affectedCountries');
        Decimal recovered = (Decimal)result.get('recovered');
        ResponseJSONWrapper wrapper = new ResponseJSONWrapper();
        wrapper.deathcount = death;
        wrapper.activecount = active;
        wrapper.affectedCountries = affectedCountries;
        wrapper.recovered = recovered;
        return wrapper;
        //String response;
        //response = JSON.serialize(wrapper);
        //return response;
        //return result;
        
    }
    @AuraEnabled
    public static ResponseJSONWrapper getDataByCountry(string countryName) {
        HTTP h = new HTTP ();
        HTTPRequest req = new HTTPRequest();
        req.setEndpoint('https://corona.lmao.ninja/v2/countries/'+countryName);
        req.setMethod('GET');
        HTTPResponse res= h.send(req);
        Map <String,Object> result = new Map <String, Object>();
        result = (Map <String,Object>)JSON.deserializeUntyped(res.getBody());
        Decimal death = (Decimal)result.get('deaths');
        Decimal active = (Decimal)result.get('active');
        Decimal affectedCountries = (Decimal)result.get('affectedCountries');
        Decimal recovered = (Decimal)result.get('recovered');
        ResponseJSONWrapper wrapper = new ResponseJSONWrapper();
        wrapper.deathcount = death;
        wrapper.activecount = active;
        wrapper.affectedCountries = affectedCountries;
        wrapper.recovered = recovered;
        return wrapper;
        
    }
    
    public class ResponseJSONWrapper {
        @AuraEnabled public Decimal deathcount;
        @AuraEnabled public Decimal activecount;
        @AuraEnabled public Decimal affectedCountries;
        @AuraEnabled public Decimal recovered;
    }

}