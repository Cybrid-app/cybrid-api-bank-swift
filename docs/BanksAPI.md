# BanksAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBank**](BanksAPI.md#createbank) | **POST** /api/banks | Create Bank
[**getBank**](BanksAPI.md#getbank) | **GET** /api/banks/{bank_guid} | Get Bank
[**listBanks**](BanksAPI.md#listbanks) | **GET** /api/banks | Get banks list


# **createBank**
```swift
    open class func createBank(postBankBankModel: PostBankBankModel, completion: @escaping (_ data: BankBankModel?, _ error: Error?) -> Void)
```

Create Bank

Creates a bank.  ## Bank Type  Bank's can be created in either `sandbox` or `production` mode. Sandbox Banks will not transact in real fiat dollars or cryptocurrencies.  Via the API, only `sandbox` banks can be created. In order to enable a `production` bank please contact [Support](mailto:support@cybrid.app).  ## Backstopped Funding Source  A Backstopped Funding Source is an agreement between the Organization and Cybrid on transaction settlement. A Backstopped Funding Source is an escrow bank account that the Organization tops up on a regular basis and is drawn down by the Cybrid Platform when trades are executed by the Bank for its customers.  This feature must specifically be enabled in the Bank's `features` array by including the `backstopped_funding_source` flag. At present, backstopped funding sources is the supported method for funding trades on the platform.  Please contact [Support](mailto:support@cybrid.app) to inquire about enabling this option for your Organization.  ## Attestation Identity Records  Attestation Identity Records is a method the Cybrid Platform uses to verify the identity of a Bank's customers. Please see the documentation under the create Identity Record API for more technical detail.  This feature must specifically be enabled in the Bank's `features` array by including the `attestation_identity_records` flag. At present, attestation identity records is the supported method for verifying a customer's identity on the platform.  Please contact [Support](mailto:support@cybrid.app) to inquire about enabling this option for your Organization.    Required scope: **banks:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postBankBankModel = PostBank(name: "name_example", type: "type_example", supportedFiatAssets: ["supportedFiatAssets_example"], features: ["features_example"]) // PostBankBankModel | 

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
    open class func listBanks(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, completion: @escaping (_ data: BankListBankModel?, _ error: Error?) -> Void)
```

Get banks list

Retrieves a listing of bank.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated bank_guids to list banks for. (optional)

// Get banks list
BanksAPI.listBanks(page: page, perPage: perPage, guid: guid) { (response, error) in
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
 **guid** | **String** | Comma separated bank_guids to list banks for. | [optional] 

### Return type

[**BankListBankModel**](BankListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

