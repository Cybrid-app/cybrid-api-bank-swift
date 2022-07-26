# AssetsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listAssets**](AssetsAPI.md#listassets) | **GET** /api/assets | Get assets list


# **listAssets**
```swift
    open class func listAssets(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: AssetListBankModel?, _ error: Error?) -> Void)
```

Get assets list

Retrieves a listing of assets.  Required scope: **prices:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)

// Get assets list
AssetsAPI.listAssets(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** | The page index to retrieve. | [optional] 
 **perPage** | **Int** | The number of entities per page to return. | [optional] 

### Return type

[**AssetListBankModel**](AssetListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

