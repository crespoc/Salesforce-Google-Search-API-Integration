public with sharing class GoogleSearchService {
    
    private static final String RAPIDAPI_HOST = 'google-search74.p.rapidapi.com';
    private static final String RAPIDAPI_KEY = '43067281b6mshfc6715e0b15df35p103a0ajsn337b5563ac7a';
    private static final String BASE_URL = 'https://google-search74.p.rapidapi.com/';
    @AuraEnabled(cacheable=true)
    public static Map<String, Object> search(String query, Integer resultLimit, Boolean includeRelatedKeywords) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        // Construct the URL with query parameters
        String url = BASE_URL + '?query=' + EncodingUtil.urlEncode(query, 'UTF-8') 
                     + '&limit=' + resultLimit 
                     + '&related_keywords=' + includeRelatedKeywords;
        
        request.setEndpoint(url);
        request.setMethod('GET');
        request.setHeader('x-rapidapi-host', RAPIDAPI_HOST);
        request.setHeader('x-rapidapi-key', RAPIDAPI_KEY);

        // Make the HTTP callout
        HttpResponse response = http.send(request);
        
        // Handle the response
        if (response.getStatusCode() == 200) {
            // Parse the JSON response
            return (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        } else {
            // Throw an exception for non-200 response
            throw new CalloutException('Failed to fetch data: ' + response.getStatusCode() + ' - ' + response.getBody());
        }
    }
}
