public class AnimalsCallouts {
    public static HTTPResponse makePostCallout() {
        HTTP http = new HTTP();
        HTTPRequest req = new HTTPRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        req.setBody('{"name":"mighty moose"}');
        
        HttpResponse response = http.send(req);
        if (response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        }
        return response;
    }

}