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

Create an ExternalWallet.  ## Wallet creation  External Wallets can be created for a Bank or a Customer.  To create a wallet for your Bank, omit the `customer_guid` parameter in the request body. To create a wallet for your Customers, include the `customer_guid` parameter in the request body.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the external wallet details in our private store | | pending | The Platform is waiting for the external wallet to be created | | reviewing | The Platform is reviewing the external wallet for compliance | | completed | The Platform has created the external wallet | | failed | The Platform was not able to successfully create the external wallet | | deleting | The Platform is deleting the external wallet | | deleted | The Platform has deleted the external wallet |  ## Failure Codes  | Code | Description | |-------|-------------| | invalid_address | The provided wallet address is invalid | | prohibited_address | The provided wallet address failed screening |    External wallets can be added to the bank by leaving the customer_guid blank. External wallets added to the bank can be used by any customer of the bank.  External wallets can also be added to a specific customer by providing the customer_guid. External wallets added to a customer can only be used by that customer.  Required scope: **external_wallets:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postExternalWalletBankModel = PostExternalWallet(name: "name_example", customerGuid: "customerGuid_example", counterpartyGuid: "counterpartyGuid_example", asset: "asset_example", address: "address_example", tag: "tag_example", expectedBehaviours: ["expectedBehaviours_example"]) // PostExternalWalletBankModel | 

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
    open class func listExternalWallets(page: Int? = nil, perPage: Int? = nil, owner: String? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, counterpartyGuid: String? = nil, asset: String? = nil, state: String? = nil, completion: @escaping (_ data: ExternalWalletListBankModel?, _ error: Error?) -> Void)
```

Get external wallets list

Retrieves a listing of external wallets. Records are sorted by creation date in descending order.  Required scope: **external_wallets:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let owner = "owner_example" // String | The owner of the entity. (optional)
let guid = "guid_example" // String | Comma separated external_wallet_guids to list external_wallets for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list external_wallets for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list external_wallets for. (optional)
let counterpartyGuid = "counterpartyGuid_example" // String | Comma separated counterparty_guids to list external_wallets for. (optional)
let asset = "asset_example" // String | Comma separated assets to list external_wallets for. (optional)
let state = "state_example" // String | Comma separated states to list external_wallets for. (optional)

// Get external wallets list
ExternalWalletsAPI.listExternalWallets(page: page, perPage: perPage, owner: owner, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, counterpartyGuid: counterpartyGuid, asset: asset, state: state) { (response, error) in
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
 **owner** | **String** | The owner of the entity. | [optional] 
 **guid** | **String** | Comma separated external_wallet_guids to list external_wallets for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list external_wallets for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list external_wallets for. | [optional] 
 **counterpartyGuid** | **String** | Comma separated counterparty_guids to list external_wallets for. | [optional] 
 **asset** | **String** | Comma separated assets to list external_wallets for. | [optional] 
 **state** | **String** | Comma separated states to list external_wallets for. | [optional] 

### Return type

[**ExternalWalletListBankModel**](ExternalWalletListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

