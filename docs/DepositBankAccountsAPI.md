# DepositBankAccountsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDepositBankAccount**](DepositBankAccountsAPI.md#createdepositbankaccount) | **POST** /api/deposit_bank_accounts | Create Deposit Bank Account
[**getDepositBankAccount**](DepositBankAccountsAPI.md#getdepositbankaccount) | **GET** /api/deposit_bank_accounts/{deposit_bank_account_guid} | Get Deposit Bank Account
[**listDepositBankAccounts**](DepositBankAccountsAPI.md#listdepositbankaccounts) | **GET** /api/deposit_bank_accounts | List Deposit Bank Accounts


# **createDepositBankAccount**
```swift
    open class func createDepositBankAccount(postDepositBankAccountBankModel: PostDepositBankAccountBankModel, completion: @escaping (_ data: DepositBankAccountBankModel?, _ error: Error?) -> Void)
```

Create Deposit Bank Account

Creates a deposit bank account.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the deposit bank account details in our private store | | created | The Platform has created the deposit bank account |    Required scope: **deposit_bank_accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postDepositBankAccountBankModel = PostDepositBankAccount(type: "type_example", accountGuid: "accountGuid_example", customerGuid: "customerGuid_example", parentDepositBankAccountGuid: "parentDepositBankAccountGuid_example", labels: ["labels_example"]) // PostDepositBankAccountBankModel | 

// Create Deposit Bank Account
DepositBankAccountsAPI.createDepositBankAccount(postDepositBankAccountBankModel: postDepositBankAccountBankModel) { (response, error) in
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
 **postDepositBankAccountBankModel** | [**PostDepositBankAccountBankModel**](PostDepositBankAccountBankModel.md) |  | 

### Return type

[**DepositBankAccountBankModel**](DepositBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDepositBankAccount**
```swift
    open class func getDepositBankAccount(depositBankAccountGuid: String, completion: @escaping (_ data: DepositBankAccountBankModel?, _ error: Error?) -> Void)
```

Get Deposit Bank Account

Retrieves a deposit bank account.  Required scope: **deposit_bank_accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let depositBankAccountGuid = "depositBankAccountGuid_example" // String | Identifier for the deposit bank account.

// Get Deposit Bank Account
DepositBankAccountsAPI.getDepositBankAccount(depositBankAccountGuid: depositBankAccountGuid) { (response, error) in
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
 **depositBankAccountGuid** | **String** | Identifier for the deposit bank account. | 

### Return type

[**DepositBankAccountBankModel**](DepositBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDepositBankAccounts**
```swift
    open class func listDepositBankAccounts(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, label: String? = nil, uniqueMemoId: String? = nil, type: String? = nil, parentDepositBankAccountGuid: String? = nil, completion: @escaping (_ data: DepositBankAccountListBankModel?, _ error: Error?) -> Void)
```

List Deposit Bank Accounts

Retrieves a list of deposit bank accounts.  Required scope: **deposit_bank_accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated guids to list deposit bank accounts for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list deposit bank accounts for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list deposit bank accounts for. (optional)
let label = "label_example" // String | Comma separated labels to list deposit bank accounts for. (optional)
let uniqueMemoId = "uniqueMemoId_example" // String | Comma separated unique memo ids to list deposit bank accounts for. (optional)
let type = "type_example" // String | Comma separated types to list deposit bank accounts for. (optional)
let parentDepositBankAccountGuid = "parentDepositBankAccountGuid_example" // String | Comma separated guids for parent accounts to list deposit bank accounts for. (optional)

// List Deposit Bank Accounts
DepositBankAccountsAPI.listDepositBankAccounts(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, label: label, uniqueMemoId: uniqueMemoId, type: type, parentDepositBankAccountGuid: parentDepositBankAccountGuid) { (response, error) in
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
 **guid** | **String** | Comma separated guids to list deposit bank accounts for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list deposit bank accounts for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list deposit bank accounts for. | [optional] 
 **label** | **String** | Comma separated labels to list deposit bank accounts for. | [optional] 
 **uniqueMemoId** | **String** | Comma separated unique memo ids to list deposit bank accounts for. | [optional] 
 **type** | **String** | Comma separated types to list deposit bank accounts for. | [optional] 
 **parentDepositBankAccountGuid** | **String** | Comma separated guids for parent accounts to list deposit bank accounts for. | [optional] 

### Return type

[**DepositBankAccountListBankModel**](DepositBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

