# QuotesAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createQuote**](QuotesAPI.md#createquote) | **POST** /api/quotes | Create Quote
[**getQuote**](QuotesAPI.md#getquote) | **GET** /api/quotes/{quote_guid} | Get Quote
[**listQuotes**](QuotesAPI.md#listquotes) | **GET** /api/quotes | Get quotes list


# **createQuote**
```swift
    open class func createQuote(postQuoteBankModel: PostQuoteBankModel, completion: @escaping (_ data: QuoteBankModel?, _ error: Error?) -> Void)
```

Create Quote

Creates a quote.  Required scope: **quotes:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postQuoteBankModel = PostQuote(customerGuid: "customerGuid_example", symbol: "symbol_example", side: "side_example", receiveAmount: 123, deliverAmount: 123) // PostQuoteBankModel | 

// Create Quote
QuotesAPI.createQuote(postQuoteBankModel: postQuoteBankModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postQuoteBankModel** | [**PostQuoteBankModel**](PostQuoteBankModel.md) |  | 

### Return type

[**QuoteBankModel**](QuoteBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuote**
```swift
    open class func getQuote(quoteGuid: String, completion: @escaping (_ data: QuoteBankModel?, _ error: Error?) -> Void)
```

Get Quote

Retrieves a quote.  Required scope: **quotes:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let quoteGuid = "quoteGuid_example" // String | Identifier for the quote.

// Get Quote
QuotesAPI.getQuote(quoteGuid: quoteGuid) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quoteGuid** | **String** | Identifier for the quote. | 

### Return type

[**QuoteBankModel**](QuoteBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listQuotes**
```swift
    open class func listQuotes(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: QuoteListBankModel?, _ error: Error?) -> Void)
```

Get quotes list

Retrieves a listing of quotes for all customers of a bank.  Required scope: **quotes:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional) (default to 0)
let perPage = 987 // Int |  (optional) (default to 10)
let guid = "guid_example" // String | Comma separated quote_guids to list quotes for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list quotes for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list quotes for. (optional)

// Get quotes list
QuotesAPI.listQuotes(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** |  | [optional] [default to 0]
 **perPage** | **Int** |  | [optional] [default to 10]
 **guid** | **String** | Comma separated quote_guids to list quotes for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list quotes for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list quotes for. | [optional] 

### Return type

[**QuoteListBankModel**](QuoteListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

