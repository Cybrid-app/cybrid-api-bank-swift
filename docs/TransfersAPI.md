# TransfersAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransfer**](TransfersAPI.md#createtransfer) | **POST** /api/transfers | Create Transfer
[**getTransfer**](TransfersAPI.md#gettransfer) | **GET** /api/transfers/{transfer_guid} | Get Transfer
[**listTransfers**](TransfersAPI.md#listtransfers) | **GET** /api/transfers | Get transfers list
[**updateTransfer**](TransfersAPI.md#updatetransfer) | **PATCH** /api/transfers/{transfer_guid} | Patch Transfer


# **createTransfer**
```swift
    open class func createTransfer(postTransferBankModel: PostTransferBankModel, completion: @escaping (_ data: TransferBankModel?, _ error: Error?) -> Void)
```

Create Transfer

Creates a transfer.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the transfer details in our private store | | reviewing | The Platform is reviewing the transfer for compliance | | pending | The Platform is executing the transfer | | completed | The Platform has successfully completed the transfer | | failed | The Platform was not able to successfully complete the transfer |  ## Failure codes  | Code | Description | |------|-------------| | amount_too_low | The transfer was rejected due to the amount being too low | | cancelled | The transfer was manually cancelled | | compliance_rejection | The transfer was rejected for compliance reasons | | internal_error | An internal error occurred while processing the transfer, please try again | | invalid_address | The destination address is invalid for transfer | | invalid_balance | There was insufficient balance for all required currencies to complete the transfer | | limit_exceeded | The customer is over the limits that have been set for them for this activity | | network_fee_too_low | The transfer was rejected due to the network fee being too low | | non_sufficient_funds | The customer does not have enough funds to complete the transfer | | party_name_invalid | The transfer's associated external bank account has an invalid party name | | payment_rail_invalid | The payment rail specified for the transfer is not supported by the external bank account | | plaid_access_not_granted | See the description from Plaid [here](https://plaid.com/docs/errors/item/#access_not_granted) | | plaid_institution_not_responding | See the description from Plaid [here](https://plaid.com/docs/errors/institution/#institution_not_responding) | | plaid_internal_server_error | See the description from Plaid [here](https://plaid.com/docs/errors/api/#internal_server_error-or-plaid-internal-error) | | plaid_item_not_found | See the description from Plaid [here](https://plaid.com/docs/errors/item/#item_not_found) | | plaid_item_not_supported | See the description from Plaid [here](https://plaid.com/docs/errors/item/#item_not_supported) | | plaid_multiple_accounts | Multiple accounts were selected through Plaid Link. | | plaid_no_accounts | See the description from Plaid [here](https://plaid.com/docs/errors/item/#no_accounts) | | plaid_none_balances_error | The transfer was rejected due to an error with the balances retrieved by Plaid | | plaid_unknown_error | See the description from Plaid [here](https://plaid.com/docs/errors/api/#unknown_error) | | refresh_required | The transfer's associated external_bank_account needs to be reconnected via Plaid | | invalid_destination | Issues with the destination details (invalid, closed, blocked) | | customer_action_required | Authorization declined or customer action required | | external_vendor_error | Unexpected error occurred with an external vendor or partner service during transfer processing  | | reversed | The transfer was reversed |  ## Failure codes that will result in a state change for the associated external bank account  | Code | Description | |------|-------------| | refresh_required | The transfer was rejected due to the external bank account needing to be refreshed. The external bank account will be put in the state `refresh_required` | | plaid_access_not_granted | The transfer was rejected due to the external bank account needing to be reconnected via Plaid. The external bank account will be put in the state `deleted` | | plaid_item_not_found | The transfer was rejected due to the external bank account needing to be reconnected via Plaid. The external bank account will be put in the state `deleted` | | plaid_item_not_supported | The transfer was rejected because the account is not supported. A different account should be connected via Plaid. The external bank account will be put in the state `deleted` | | plaid_multiple_accounts | The transfer was rejected because multiple accounts were selected through Plaid Link. Only one account must be selected. The external bank account will be put in the state `deleted` | | plaid_no_accounts | The transfer was rejected because no compatible accounts could be found. The external bank account will be put in the state `deleted` |    Required scope: **transfers:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postTransferBankModel = PostTransfer(quoteGuid: "quoteGuid_example", transferType: "transferType_example", externalBankAccountGuid: "externalBankAccountGuid_example", fiatAccountGuid: "fiatAccountGuid_example", sendAsDepositBankAccountGuid: "sendAsDepositBankAccountGuid_example", paymentRail: "paymentRail_example", beneficiaryMemo: "beneficiaryMemo_example", sourceParticipants: [PostTransferParticipant(type: "type_example", amount: 123, guid: "guid_example")], destinationParticipants: [nil], bankFiatAccountGuid: "bankFiatAccountGuid_example", customerFiatAccountGuid: "customerFiatAccountGuid_example", sourceAccountGuid: "sourceAccountGuid_example", destinationAccountGuid: "destinationAccountGuid_example", externalWalletGuid: "externalWalletGuid_example", customerGuid: "customerGuid_example", networkFeeAccountGuid: "networkFeeAccountGuid_example", expectedBehaviours: ["expectedBehaviours_example"], labels: ["labels_example"]) // PostTransferBankModel | 

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
    open class func listTransfers(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, transferType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil, side: String? = nil, label: String? = nil, txnHash: String? = nil, createdAtGte: String? = nil, createdAtLt: String? = nil, updatedAtGte: String? = nil, updatedAtLt: String? = nil, completion: @escaping (_ data: TransferListBankModel?, _ error: Error?) -> Void)
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
let side = "side_example" // String | Comma separated sides to list transfers for. (optional)
let label = "label_example" // String | Comma separated labels to list transfers for. (optional)
let txnHash = "txnHash_example" // String | Comma separated transaction hashes to list transfers for. (optional)
let createdAtGte = "createdAtGte_example" // String | Created at start date-time inclusive lower bound, ISO8601 (optional)
let createdAtLt = "createdAtLt_example" // String | Created at end date-time exclusive upper bound, ISO8601. (optional)
let updatedAtGte = "updatedAtGte_example" // String | Created at start date-time inclusive lower bound, ISO8601 (optional)
let updatedAtLt = "updatedAtLt_example" // String | Created at end date-time exclusive upper bound, ISO8601. (optional)

// Get transfers list
TransfersAPI.listTransfers(page: page, perPage: perPage, guid: guid, transferType: transferType, bankGuid: bankGuid, customerGuid: customerGuid, accountGuid: accountGuid, state: state, side: side, label: label, txnHash: txnHash, createdAtGte: createdAtGte, createdAtLt: createdAtLt, updatedAtGte: updatedAtGte, updatedAtLt: updatedAtLt) { (response, error) in
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
 **side** | **String** | Comma separated sides to list transfers for. | [optional] 
 **label** | **String** | Comma separated labels to list transfers for. | [optional] 
 **txnHash** | **String** | Comma separated transaction hashes to list transfers for. | [optional] 
 **createdAtGte** | **String** | Created at start date-time inclusive lower bound, ISO8601 | [optional] 
 **createdAtLt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] 
 **updatedAtGte** | **String** | Created at start date-time inclusive lower bound, ISO8601 | [optional] 
 **updatedAtLt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] 

### Return type

[**TransferListBankModel**](TransferListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTransfer**
```swift
    open class func updateTransfer(transferGuid: String, patchTransferBankModel: PatchTransferBankModel, completion: @escaping (_ data: TransferBankModel?, _ error: Error?) -> Void)
```

Patch Transfer

Update a transfer.  Required scope: **transfers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let transferGuid = "transferGuid_example" // String | Identifier for the transfer.
let patchTransferBankModel = PatchTransfer(sourceParticipants: [PatchTransferParticipant(type: "type_example", amount: 123, guid: "guid_example")], destinationParticipants: [nil]) // PatchTransferBankModel | 

// Patch Transfer
TransfersAPI.updateTransfer(transferGuid: transferGuid, patchTransferBankModel: patchTransferBankModel) { (response, error) in
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
 **patchTransferBankModel** | [**PatchTransferBankModel**](PatchTransferBankModel.md) |  | 

### Return type

[**TransferBankModel**](TransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

