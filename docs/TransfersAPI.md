# TransfersAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransfer**](TransfersAPI.md#createtransfer) | **POST** /api/transfers | Create Transfer
[**getTransfer**](TransfersAPI.md#gettransfer) | **GET** /api/transfers/{transfer_guid} | Get Transfer
[**listTransfers**](TransfersAPI.md#listtransfers) | **GET** /api/transfers | Get transfers list


# **createTransfer**
```swift
    open class func createTransfer(postTransferBankModel: PostTransferBankModel, completion: @escaping (_ data: TransferBankModel?, _ error: Error?) -> Void)
```

Create Transfer

Creates a transfer.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the trade details in our private store | | pending | The Platform is executing the transfer | | completed | The Platform has successfully completed the transfer | | failed | The Platform was not able to successfully complete the transfer |  ## Failure codes  | Code | Description | |------|-------------| | non_sufficient_funds | The customer does not have enough funds to complete the transfer | | refresh_required | The transfer's associated external_bank_account needs to be reconnected via Plaid | | party_name_invalid | The transfer's associated external bank account has an invalid party name | | limit_exceeded | The customer is over the limits that have been set for them for this activity | | compliance_rejection | The transfer was rejected for compliance reasons |    Required scope: **transfers:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postTransferBankModel = PostTransfer(quoteGuid: "quoteGuid_example", transferType: "transferType_example", sourceAccountGuid: "sourceAccountGuid_example", destinationAccountGuid: "destinationAccountGuid_example", externalWalletGuid: "externalWalletGuid_example", externalBankAccountGuid: "externalBankAccountGuid_example", labels: ["labels_example"]) // PostTransferBankModel | 

// Create Transfer
TransfersAPI.createTransfer(postTransferBankModel: postTransferBankModel) { (response, error) in
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
 **postTransferBankModel** | [**PostTransferBankModel**](PostTransferBankModel.md) |  | 

### Return type

[**TransferBankModel**](TransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransfer**
```swift
    open class func getTransfer(transferGuid: String, completion: @escaping (_ data: TransferBankModel?, _ error: Error?) -> Void)
```

Get Transfer

Retrieves a transfer.  Required scope: **transfers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let transferGuid = "transferGuid_example" // String | Identifier for the transfer.

// Get Transfer
TransfersAPI.getTransfer(transferGuid: transferGuid) { (response, error) in
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
 **transferGuid** | **String** | Identifier for the transfer. | 

### Return type

[**TransferBankModel**](TransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTransfers**
```swift
    open class func listTransfers(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, transferType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil, label: String? = nil, createdAtGte: String? = nil, createdAtLt: String? = nil, completion: @escaping (_ data: TransferListBankModel?, _ error: Error?) -> Void)
```

Get transfers list

Retrieves a listing of transfers.  Required scope: **transfers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated transfer_guids to list transfers for. (optional)
let transferType = "transferType_example" // String | Comma separated transfer_types to list accounts for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list transfers for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list transfers for. (optional)
let accountGuid = "accountGuid_example" // String | Comma separated account_guids to list transfers for. (optional)
let state = "state_example" // String | Comma separated states to list transfers for. (optional)
let label = "label_example" // String | Comma separated labels to list transfers for. (optional)
let createdAtGte = "createdAtGte_example" // String | Created at start date inclusive lower bound, ISO8601 (optional)
let createdAtLt = "createdAtLt_example" // String | Created at end date exclusive upper bound, ISO8601. (optional)

// Get transfers list
TransfersAPI.listTransfers(page: page, perPage: perPage, guid: guid, transferType: transferType, bankGuid: bankGuid, customerGuid: customerGuid, accountGuid: accountGuid, state: state, label: label, createdAtGte: createdAtGte, createdAtLt: createdAtLt) { (response, error) in
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
 **guid** | **String** | Comma separated transfer_guids to list transfers for. | [optional] 
 **transferType** | **String** | Comma separated transfer_types to list accounts for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list transfers for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list transfers for. | [optional] 
 **accountGuid** | **String** | Comma separated account_guids to list transfers for. | [optional] 
 **state** | **String** | Comma separated states to list transfers for. | [optional] 
 **label** | **String** | Comma separated labels to list transfers for. | [optional] 
 **createdAtGte** | **String** | Created at start date inclusive lower bound, ISO8601 | [optional] 
 **createdAtLt** | **String** | Created at end date exclusive upper bound, ISO8601. | [optional] 

### Return type

[**TransferListBankModel**](TransferListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

