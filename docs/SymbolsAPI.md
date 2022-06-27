# SymbolsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listSymbols**](SymbolsAPI.md#listsymbols) | **GET** /api/symbols | Get Symbols list


# **listSymbols**
```swift
    open class func listSymbols(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get Symbols list

Retrieves a listing of symbols.  Required scope: **prices:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift


// Get Symbols list
SymbolsAPI.listSymbols() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

