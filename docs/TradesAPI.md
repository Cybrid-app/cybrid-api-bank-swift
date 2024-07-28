# TradesAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrade**](TradesAPI.md#createtrade) | **POST** /api/trades | Create Trade
[**getTrade**](TradesAPI.md#gettrade) | **GET** /api/trades/{trade_guid} | Get Trade
[**listTrades**](TradesAPI.md#listtrades) | **GET** /api/trades | Get trades list


# **createTrade**
```swift
    open class func createTrade(postTradeBankModel: PostTradeBankModel, completion: @escaping (_ data: TradeBankModel?, _ error: Error?) -> Void)
```

Create Trade

Creates a trade.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the trade details in our private store | | pending | The Platform is executing the trade | | cancelled | The Platform has cancelled the trade | | settling | The Platform is settling the trade | | completed | The Platform has successfully completed the trade | | failed | The Platform was not able to successfully complete the trade |  ## Failure codes  | Code | Description | |------|-------------| | non_sufficient_funds | The delivery account does not have enough funds to complete the trade | | unsupported | The trading pair is not supported for this customer | | limit_exceeded | The customer is over the limits that have been set for them for this activity | | expired_quote | The quote expired before it could be executed | | market_volatility | The quote could not be executed due to market volatility |    Required scope: **trades:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postTradeBankModel = PostTrade(tradeType: "tradeType_example", quoteGuid: "quoteGuid_example", expectedError: "expectedError_example", labels: ["labels_example"]) // PostTradeBankModel | 

// Create Trade
TradesAPI.createTrade(postTradeBankModel: postTradeBankModel) { (response, error) in
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
 **postTradeBankModel** | [**PostTradeBankModel**](PostTradeBankModel.md) |  | 

### Return type

[**TradeBankModel**](TradeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrade**
```swift
    open class func getTrade(tradeGuid: String, completion: @escaping (_ data: TradeBankModel?, _ error: Error?) -> Void)
```

Get Trade

Retrieves a trade.  Required scope: **trades:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let tradeGuid = "tradeGuid_example" // String | Identifier for the trade.

// Get Trade
TradesAPI.getTrade(tradeGuid: tradeGuid) { (response, error) in
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
 **tradeGuid** | **String** | Identifier for the trade. | 

### Return type

[**TradeBankModel**](TradeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTrades**
```swift
    open class func listTrades(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil, side: String? = nil, label: String? = nil, createdAtGte: String? = nil, createdAtLt: String? = nil, updatedAtGte: String? = nil, updatedAtLt: String? = nil, completion: @escaping (_ data: TradeListBankModel?, _ error: Error?) -> Void)
```

Get trades list

Retrieves a listing of trades.  Required scope: **trades:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated trade_guids to list trades for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list trades for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list trades for. (optional)
let accountGuid = "accountGuid_example" // String | Comma separated account_guids to list trades for. (optional)
let state = "state_example" // String | Comma separated states to list trades for. (optional)
let side = "side_example" // String | Comma separated sides to list trades for. (optional)
let label = "label_example" // String | Comma separated labels to list trades for. (optional)
let createdAtGte = "createdAtGte_example" // String | Created at start date inclusive lower bound, ISO8601. (optional)
let createdAtLt = "createdAtLt_example" // String | Created at end date exclusive upper bound, ISO8601. (optional)
let updatedAtGte = "updatedAtGte_example" // String | Updated at start date inclusive lower bound, ISO8601. (optional)
let updatedAtLt = "updatedAtLt_example" // String | Updated at end date exclusive upper bound, ISO8601. (optional)

// Get trades list
TradesAPI.listTrades(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, accountGuid: accountGuid, state: state, side: side, label: label, createdAtGte: createdAtGte, createdAtLt: createdAtLt, updatedAtGte: updatedAtGte, updatedAtLt: updatedAtLt) { (response, error) in
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
 **guid** | **String** | Comma separated trade_guids to list trades for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list trades for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list trades for. | [optional] 
 **accountGuid** | **String** | Comma separated account_guids to list trades for. | [optional] 
 **state** | **String** | Comma separated states to list trades for. | [optional] 
 **side** | **String** | Comma separated sides to list trades for. | [optional] 
 **label** | **String** | Comma separated labels to list trades for. | [optional] 
 **createdAtGte** | **String** | Created at start date inclusive lower bound, ISO8601. | [optional] 
 **createdAtLt** | **String** | Created at end date exclusive upper bound, ISO8601. | [optional] 
 **updatedAtGte** | **String** | Updated at start date inclusive lower bound, ISO8601. | [optional] 
 **updatedAtLt** | **String** | Updated at end date exclusive upper bound, ISO8601. | [optional] 

### Return type

[**TradeListBankModel**](TradeListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

