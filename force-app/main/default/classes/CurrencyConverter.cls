public class CurrencyConverter {
    public static decimal convertCurrencyToINR (decimal eur) {
        decimal inr = 0.0;
        HTTP h = new HTTP();
        HTTPRequest req = new HTTPRequest();
        req.setEndpoint('https://api.exchangeratesapi.io/latest');
        req.setMethod('GET');
        
        HTTPResponse res = h.send(req);
        Map <String, Object> jsonBody = (Map <String, Object>)JSON.deserializeUntyped(res.getBody());
        Map <String, Object> rates = (Map <String, Object>)jsonBody.get('rates');
        Decimal conversionrates = (Decimal)rates.get('INR');
        inr = eur * conversionrates;
        return inr;
    }

}