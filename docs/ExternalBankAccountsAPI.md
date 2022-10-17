# ExternalBankAccountsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExternalBankAccount**](ExternalBankAccountsAPI.md#createexternalbankaccount) | **POST** /api/external_bank_accounts | Create ExternalBankAccount
[**getExternalBankAccount**](ExternalBankAccountsAPI.md#getexternalbankaccount) | **GET** /api/external_bank_accounts/{external_bank_account_guid} | Get External Bank Account
[**listExternalBankAccounts**](ExternalBankAccountsAPI.md#listexternalbankaccounts) | **GET** /api/external_bank_accounts | Get external bank accounts list


# **createExternalBankAccount**
```swift
    open class func createExternalBankAccount(postExternalBankAccountBankModel: PostExternalBankAccountBankModel, completion: @escaping (_ data: ExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Create ExternalBankAccount

Create an ExternalBankAccount.  Required scope: **external_bank_accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postExternalBankAccountBankModel = PostExternalBankAccount(name: "name_example", accountKind: "accountKind_example", customerGuid: "customerGuid_example", asset: "asset_example", plaidPublicToken: "plaidPublicToken_example", plaidAccountId: "plaidAccountId_example") // PostExternalBankAccountBankModel | 

// Create ExternalBankAccount
ExternalBankAccountsAPI.createExternalBankAccount(postExternalBankAccountBankModel: postExternalBankAccountBankModel) { (response, error) in
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
 **postExternalBankAccountBankModel** | [**PostExternalBankAccountBankModel**](PostExternalBankAccountBankModel.md) |  | 

### Return type

[**ExternalBankAccountBankModel**](ExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExternalBankAccount**
```swift
    open class func getExternalBankAccount(externalBankAccountGuid: String, completion: @escaping (_ data: ExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Get External Bank Account

Retrieves an external bank account.  Required scope: **external_bank_accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let externalBankAccountGuid = "externalBankAccountGuid_example" // String | Identifier for the external bank account.

// Get External Bank Account
ExternalBankAccountsAPI.getExternalBankAccount(externalBankAccountGuid: externalBankAccountGuid) { (response, error) in
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
 **externalBankAccountGuid** | **String** | Identifier for the external bank account. | 

### Return type

[**ExternalBankAccountBankModel**](ExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listExternalBankAccounts**
```swift
    open class func listExternalBankAccounts(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: ExternalBankAccountListBankModel?, _ error: Error?) -> Void)
```

Get external bank accounts list

Retrieves a listing of external bank accounts.  Required scope: **external_bank_accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated external_bank_account_guids to list external_bank_accounts for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list external_bank_accounts for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list external_bank_accounts for. (optional)

// Get external bank accounts list
ExternalBankAccountsAPI.listExternalBankAccounts(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
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
 **guid** | **String** | Comma separated external_bank_account_guids to list external_bank_accounts for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list external_bank_accounts for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list external_bank_accounts for. | [optional] 

### Return type

[**ExternalBankAccountListBankModel**](ExternalBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
