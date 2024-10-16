# BanksAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBank**](BanksAPI.md#createbank) | **POST** /api/banks | Create Bank
[**getBank**](BanksAPI.md#getbank) | **GET** /api/banks/{bank_guid} | Get Bank
[**listBanks**](BanksAPI.md#listbanks) | **GET** /api/banks | Get banks list
[**updateBank**](BanksAPI.md#updatebank) | **PATCH** /api/banks/{bank_guid} | Patch Bank


# **createBank**
```swift
    open class func createBank(postBankBankModel: PostBankBankModel, completion: @escaping (_ data: BankBankModel?, _ error: Error?) -> Void)
```

Create Bank

Creates a bank.  ## Bank Type  Bank's can be created in either `sandbox` or `production` mode. Sandbox Banks will not transact in real fiat dollars or cryptocurrencies.  Via the API, only `sandbox` banks can be created. In order to enable a `production` bank please contact [Support](mailto:support@cybrid.app).    Required scope: **banks:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postBankBankModel = PostBank(type: "type_example", name: "name_example", supportedTradingSymbols: ["supportedTradingSymbols_example"], supportedFiatAccountAssets: ["supportedFiatAccountAssets_example"], supportedCountryCodes: ["supportedCountryCodes_example"], features: ["features_example"]) // PostBankBankModel | 

// Create Bank
BanksAPI.createBank(postBankBankModel: postBankBankModel) { (response, error) in
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
 **postBankBankModel** | [**PostBankBankModel**](PostBankBankModel.md) |  | 

### Return type

[**BankBankModel**](BankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBank**
```swift
    open class func getBank(bankGuid: String, completion: @escaping (_ data: BankBankModel?, _ error: Error?) -> Void)
```

Get Bank

Retrieves a bank.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let bankGuid = "bankGuid_example" // String | Identifier for the bank.

// Get Bank
BanksAPI.getBank(bankGuid: bankGuid) { (response, error) in
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
 **bankGuid** | **String** | Identifier for the bank. | 

### Return type

[**BankBankModel**](BankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBanks**
```swift
    open class func listBanks(page: Int? = nil, perPage: Int? = nil, type: String? = nil, guid: String? = nil, completion: @escaping (_ data: BankListBankModel?, _ error: Error?) -> Void)
```

Get banks list

Retrieves a listing of bank.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let type = "type_example" // String | Comma separated types to list banks for. (optional)
let guid = "guid_example" // String | Comma separated bank_guids to list banks for. (optional)

// Get banks list
BanksAPI.listBanks(page: page, perPage: perPage, type: type, guid: guid) { (response, error) in
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
 **type** | **String** | Comma separated types to list banks for. | [optional] 
 **guid** | **String** | Comma separated bank_guids to list banks for. | [optional] 

### Return type

[**BankListBankModel**](BankListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBank**
```swift
    open class func updateBank(bankGuid: String, patchBankBankModel: PatchBankBankModel, completion: @escaping (_ data: BankBankModel?, _ error: Error?) -> Void)
```

Patch Bank

Update a bank.  Required scope: **banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let bankGuid = "bankGuid_example" // String | Identifier for the bank.
let patchBankBankModel = PatchBank(name: "name_example", supportedTradingSymbols: ["supportedTradingSymbols_example"]) // PatchBankBankModel | 

// Patch Bank
BanksAPI.updateBank(bankGuid: bankGuid, patchBankBankModel: patchBankBankModel) { (response, error) in
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
 **bankGuid** | **String** | Identifier for the bank. | 
 **patchBankBankModel** | [**PatchBankBankModel**](PatchBankBankModel.md) |  | 

### Return type

[**BankBankModel**](BankBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

