# AccountsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccount**](AccountsAPI.md#createaccount) | **POST** /api/accounts | Create Account
[**getAccount**](AccountsAPI.md#getaccount) | **GET** /api/accounts/{account_guid} | Get Account
[**listAccounts**](AccountsAPI.md#listaccounts) | **GET** /api/accounts | List Accounts


# **createAccount**
```swift
    open class func createAccount(postAccountBankModel: PostAccountBankModel, completion: @escaping (_ data: AccountBankModel?, _ error: Error?) -> Void)
```

Create Account

Creates an account.  ## Account Type  An Account is tied to a specific cryptocurrency and is comprised of transactions and a current balance.  An account is required to allow a Customer to hold cryptocurrency on the Cybrid Platform.  At present, account's can be created as `trading` accounts and are required before a Customer can generate a quote and execute a trade.  ## Asset  The asset is the specific cryptocurrency that the account holds, e.g., 'BTC' for Bitcoin. See the Symbols API for a complete list of cryptocurrencies supported.     Required scope: **accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postAccountBankModel = PostAccount(type: "type_example", customerGuid: "customerGuid_example", asset: "asset_example", name: "name_example") // PostAccountBankModel | 

// Create Account
AccountsAPI.createAccount(postAccountBankModel: postAccountBankModel) { (response, error) in
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
 **postAccountBankModel** | [**PostAccountBankModel**](PostAccountBankModel.md) |  | 

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccount**
```swift
    open class func getAccount(accountGuid: String, completion: @escaping (_ data: AccountBankModel?, _ error: Error?) -> Void)
```

Get Account

Retrieves an account.  Required scope: **accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let accountGuid = "accountGuid_example" // String | Identifier for the account.

// Get Account
AccountsAPI.getAccount(accountGuid: accountGuid) { (response, error) in
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
 **accountGuid** | **String** | Identifier for the account. | 

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccounts**
```swift
    open class func listAccounts(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: AccountListBankModel?, _ error: Error?) -> Void)
```

List Accounts

Retrieves a list of accounts.  Required scope: **accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated account_guids to list accounts for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list accounts for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list accounts for. (optional)

// List Accounts
AccountsAPI.listAccounts(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
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
 **guid** | **String** | Comma separated account_guids to list accounts for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list accounts for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list accounts for. | [optional] 

### Return type

[**AccountListBankModel**](AccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

