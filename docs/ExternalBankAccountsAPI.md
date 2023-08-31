# ExternalBankAccountsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExternalBankAccount**](ExternalBankAccountsAPI.md#createexternalbankaccount) | **POST** /api/external_bank_accounts | Create ExternalBankAccount
[**deleteExternalBankAccount**](ExternalBankAccountsAPI.md#deleteexternalbankaccount) | **DELETE** /api/external_bank_accounts/{external_bank_account_guid} | Delete External Bank Account
[**getExternalBankAccount**](ExternalBankAccountsAPI.md#getexternalbankaccount) | **GET** /api/external_bank_accounts/{external_bank_account_guid} | Get External Bank Account
[**listExternalBankAccounts**](ExternalBankAccountsAPI.md#listexternalbankaccounts) | **GET** /api/external_bank_accounts | Get external bank accounts list
[**patchExternalBankAccount**](ExternalBankAccountsAPI.md#patchexternalbankaccount) | **PATCH** /api/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount


# **createExternalBankAccount**
```swift
    open class func createExternalBankAccount(postExternalBankAccountBankModel: PostExternalBankAccountBankModel, completion: @escaping (_ data: ExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Create ExternalBankAccount

Create an ExternalBankAccount.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the external bank account details in our private store | | completed | The Platform has created the external bank account | | unverified | The external bank account is created, but it has not yet been verified | | failed | The Platform was not able to successfully create the external bank account | | refresh_required | The Platform has created the external bank account, but needs to be refreshed | | deleting | The Platform is deleting the external bank account | | deleted | The Platform has deleted the external bank account |    Required scope: **external_bank_accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postExternalBankAccountBankModel = PostExternalBankAccount(name: "name_example", accountKind: "accountKind_example", customerGuid: "customerGuid_example", asset: "asset_example", plaidPublicToken: "plaidPublicToken_example", plaidAccountId: "plaidAccountId_example", plaidProcessorToken: "plaidProcessorToken_example", plaidInstitutionId: "plaidInstitutionId_example", plaidAccountMask: "plaidAccountMask_example", plaidAccountName: "plaidAccountName_example") // PostExternalBankAccountBankModel | 

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

# **deleteExternalBankAccount**
```swift
    open class func deleteExternalBankAccount(externalBankAccountGuid: String, completion: @escaping (_ data: ExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Delete External Bank Account

Deletes an external bank account.  Required scope: **external_bank_accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let externalBankAccountGuid = "externalBankAccountGuid_example" // String | Identifier for the external bank account.

// Delete External Bank Account
ExternalBankAccountsAPI.deleteExternalBankAccount(externalBankAccountGuid: externalBankAccountGuid) { (response, error) in
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
    open class func listExternalBankAccounts(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, state: String? = nil, completion: @escaping (_ data: ExternalBankAccountListBankModel?, _ error: Error?) -> Void)
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
let state = "state_example" // String | Comma separated states to list external_bank_accounts for. (optional)

// Get external bank accounts list
ExternalBankAccountsAPI.listExternalBankAccounts(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, state: state) { (response, error) in
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
 **state** | **String** | Comma separated states to list external_bank_accounts for. | [optional] 

### Return type

[**ExternalBankAccountListBankModel**](ExternalBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchExternalBankAccount**
```swift
    open class func patchExternalBankAccount(externalBankAccountGuid: String, patchExternalBankAccountBankModel: PatchExternalBankAccountBankModel, completion: @escaping (_ data: ExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Patch ExternalBankAccount

Patch an external bank account.  Required scope: **external_bank_accounts:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let externalBankAccountGuid = "externalBankAccountGuid_example" // String | Identifier for the external bank account.
let patchExternalBankAccountBankModel = PatchExternalBankAccount(state: "state_example") // PatchExternalBankAccountBankModel | 

// Patch ExternalBankAccount
ExternalBankAccountsAPI.patchExternalBankAccount(externalBankAccountGuid: externalBankAccountGuid, patchExternalBankAccountBankModel: patchExternalBankAccountBankModel) { (response, error) in
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
 **patchExternalBankAccountBankModel** | [**PatchExternalBankAccountBankModel**](PatchExternalBankAccountBankModel.md) |  | 

### Return type

[**ExternalBankAccountBankModel**](ExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

