# ExternalWalletsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExternalWallet**](ExternalWalletsAPI.md#createexternalwallet) | **POST** /api/external_wallets | Create ExternalWallet
[**deleteExternalWallet**](ExternalWalletsAPI.md#deleteexternalwallet) | **DELETE** /api/external_wallets/{external_wallet_guid} | Delete External Wallet
[**getExternalWallet**](ExternalWalletsAPI.md#getexternalwallet) | **GET** /api/external_wallets/{external_wallet_guid} | Get External Wallet
[**listExternalWallets**](ExternalWalletsAPI.md#listexternalwallets) | **GET** /api/external_wallets | Get external wallets list


# **createExternalWallet**
```swift
    open class func createExternalWallet(postExternalWalletBankModel: PostExternalWalletBankModel, completion: @escaping (_ data: ExternalWalletBankModel?, _ error: Error?) -> Void)
```

Create ExternalWallet

Create an ExternalWallet.  Required scope: **external_wallets:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postExternalWalletBankModel = PostExternalWallet(name: "name_example", customerGuid: "customerGuid_example", asset: "asset_example", address: "address_example", tag: "tag_example") // PostExternalWalletBankModel | 

// Create ExternalWallet
ExternalWalletsAPI.createExternalWallet(postExternalWalletBankModel: postExternalWalletBankModel) { (response, error) in
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
 **postExternalWalletBankModel** | [**PostExternalWalletBankModel**](PostExternalWalletBankModel.md) |  | 

### Return type

[**ExternalWalletBankModel**](ExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteExternalWallet**
```swift
    open class func deleteExternalWallet(externalWalletGuid: String, completion: @escaping (_ data: ExternalWalletBankModel?, _ error: Error?) -> Void)
```

Delete External Wallet

Deletes an external wallet.  Required scope: **external_wallets:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let externalWalletGuid = "externalWalletGuid_example" // String | Identifier for the external wallet.

// Delete External Wallet
ExternalWalletsAPI.deleteExternalWallet(externalWalletGuid: externalWalletGuid) { (response, error) in
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
 **externalWalletGuid** | **String** | Identifier for the external wallet. | 

### Return type

[**ExternalWalletBankModel**](ExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExternalWallet**
```swift
    open class func getExternalWallet(externalWalletGuid: String, completion: @escaping (_ data: ExternalWalletBankModel?, _ error: Error?) -> Void)
```

Get External Wallet

Retrieves an external_wallet.  Required scope: **external_wallets:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let externalWalletGuid = "externalWalletGuid_example" // String | Identifier for the external_wallet.

// Get External Wallet
ExternalWalletsAPI.getExternalWallet(externalWalletGuid: externalWalletGuid) { (response, error) in
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
 **externalWalletGuid** | **String** | Identifier for the external_wallet. | 

### Return type

[**ExternalWalletBankModel**](ExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listExternalWallets**
```swift
    open class func listExternalWallets(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: ExternalWalletListBankModel?, _ error: Error?) -> Void)
```

Get external wallets list

Retrieves a listing of external wallets.  Required scope: **external_wallets:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated external_wallet_guids to list external_wallets for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list external_wallets for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list external_wallets for. (optional)

// Get external wallets list
ExternalWalletsAPI.listExternalWallets(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
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
 **guid** | **String** | Comma separated external_wallet_guids to list external_wallets for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list external_wallets for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list external_wallets for. | [optional] 

### Return type

[**ExternalWalletListBankModel**](ExternalWalletListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
