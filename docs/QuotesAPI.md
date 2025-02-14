# QuotesAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

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

Creates a quote.  ## Quote creation  Quotes can be created for a Bank or a Customer.  To create quotes for your Bank, omit the `customer_guid` parameter in the request body. To create quotes for your Customers, include the `customer_guid` parameter in the request body.  ## Failure codes  | Code | Description | |------|-------------| | invalid_amount | The amount on the invoice is unprocessable | | insufficient_balance | There are insufficient funds to process the quote | | invalid_invoice | The invoice cannot be processed |    Required scope: **quotes:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postQuoteBankModel = PostQuote(productType: "productType_example", bankGuid: "bankGuid_example", customerGuid: "customerGuid_example", receiveAmount: 123, deliverAmount: 123, asset: "asset_example", networkAddress: "networkAddress_example", fees: [PostFee(type: "type_example", spreadFee: 123, fixedFee: 123)], side: "side_example", symbol: "symbol_example", destinationAccounts: [PostQuoteEntry(type: "type_example", guid: "guid_example", receiveAmount: 123, deliverAmount: 123)], referenceTradeGuid: "referenceTradeGuid_example", sourceAccountGuid: "sourceAccountGuid_example", destinationAccountGuid: "destinationAccountGuid_example") // PostQuoteBankModel | 

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
    open class func listQuotes(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, productType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, side: String? = nil, completion: @escaping (_ data: QuoteListBankModel?, _ error: Error?) -> Void)
```

Get quotes list

Retrieves a listing of quotes for all customers of a bank.  Required scope: **quotes:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)
let guid = "guid_example" // String | Comma separated quote_guids to list quotes for. (optional)
let productType = "productType_example" // String | Comma separated product_types to list accounts for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list quotes for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list quotes for. (optional)
let side = "side_example" // String | Comma separated sides to list quotes for. (optional)

// Get quotes list
QuotesAPI.listQuotes(page: page, perPage: perPage, guid: guid, productType: productType, bankGuid: bankGuid, customerGuid: customerGuid, side: side) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 
 **guid** | **String** | Comma separated quote_guids to list quotes for. | [optional] 
 **productType** | **String** | Comma separated product_types to list accounts for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list quotes for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list quotes for. | [optional] 
 **side** | **String** | Comma separated sides to list quotes for. | [optional] 

### Return type

[**QuoteListBankModel**](QuoteListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

