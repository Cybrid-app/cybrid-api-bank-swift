# TransactionsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listTransactions**](TransactionsAPI.md#listtransactions) | **GET** /api/transactions | List Transactions


# **listTransactions**
```swift
    open class func listTransactions(accountGuid: String, bankGuid: String? = nil, customerGuid: String? = nil, cursor: String? = nil, perPage: Int? = nil, direction: DirectionBankModel_listTransactions? = nil, createdAtGte: String? = nil, createdAtLt: String? = nil, includeBalances: Bool? = nil, completion: @escaping (_ data: TransactionListBankModel?, _ error: Error?) -> Void)
```

List Transactions

Retrieves a listing of transactions (an account statement) for an account.  Required scope: **transactions:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let accountGuid = "accountGuid_example" // String | 
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids the account must belong to. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids the account must belong to. (optional)
let cursor = "cursor_example" // String |  (optional)
let perPage = 987 // Int |  (optional)
let direction = "direction_example" // String |  (optional)
let createdAtGte = "createdAtGte_example" // String | Created at start date-time inclusive lower bound, ISO8601. (optional)
let createdAtLt = "createdAtLt_example" // String | Created at end date-time exclusive upper bound, ISO8601. (optional)
let includeBalances = true // Bool | Include the running posted balance on the account as of each transaction. (optional)

// List Transactions
TransactionsAPI.listTransactions(accountGuid: accountGuid, bankGuid: bankGuid, customerGuid: customerGuid, cursor: cursor, perPage: perPage, direction: direction, createdAtGte: createdAtGte, createdAtLt: createdAtLt, includeBalances: includeBalances) { (response, error) in
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
 **accountGuid** | **String** |  | 
 **bankGuid** | **String** | Comma separated bank_guids the account must belong to. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids the account must belong to. | [optional] 
 **cursor** | **String** |  | [optional] 
 **perPage** | **Int** |  | [optional] 
 **direction** | **String** |  | [optional] 
 **createdAtGte** | **String** | Created at start date-time inclusive lower bound, ISO8601. | [optional] 
 **createdAtLt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] 
 **includeBalances** | **Bool** | Include the running posted balance on the account as of each transaction. | [optional] 

### Return type

[**TransactionListBankModel**](TransactionListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

