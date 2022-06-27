# PricesAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listPrices**](PricesAPI.md#listprices) | **GET** /api/prices | Get Price


# **listPrices**
```swift
    open class func listPrices(symbol: String? = nil, completion: @escaping (_ data: [SymbolPriceBankModel]?, _ error: Error?) -> Void)
```

Get Price

Retrieves a listing of symbol prices.  ## Symbols  Symbol are pairs and are in the format asset-counter_asset, e.g., 'BTC-USD' for the Bitcoin/ USD pair. See the Symbols API for a complete list of cryptocurrencies supported.    Required scope: **prices:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let symbol = "symbol_example" // String | Comma separated symbols to list prices for. (optional)

// Get Price
PricesAPI.listPrices(symbol: symbol) { (response, error) in
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
 **symbol** | **String** | Comma separated symbols to list prices for. | [optional] 

### Return type

[**[SymbolPriceBankModel]**](SymbolPriceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

