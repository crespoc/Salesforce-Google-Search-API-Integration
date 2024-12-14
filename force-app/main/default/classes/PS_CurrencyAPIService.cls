public with sharing class PS_CurrencyAPIService {
    
    public static void getExchangeRates(){
        //Callout only
        //Step1 prepare the request

        HttpRequest httpReq = new HttpRequest();
        //step1.1 set the endpoint
        httpReq.setEndpoint('https://open.er-api.com/v6/latest/USD');
        
        //Step1.2 set the headers
        httpReq.setHeader('Content-Type', 'application/json');
        httpReq.setHeader('Accept', 'application/json'); //JSON, XML, TEXT, HTML

        //step1.3 prepare the method
        httpReq.setMethod('GET'); //GET,POST,DELETE,PUT,PATCH

        // step2 send the request
        Http htt = new Http();
        HttpResponse httpRes = htt.send(httpReq);
        //Step 3 print the information
        /* 
            getStatus()
            getStatusCode()
            getHeader(header)
            getBody()
            getBodyAsBlob()
            getHeaders()
            getXmlStreamReader()
        */
        String responseBody = httpRes.getBody();
        Integer statusCode = httpRes.getStatusCode();
        String status = httpRes.getStatus();
        System.debug('The response from currency API -'+ status);
        System.debug('The response from currency API -'+ responseBody);
        System.debug('The response from currency API -'+ statusCode);

    }

}