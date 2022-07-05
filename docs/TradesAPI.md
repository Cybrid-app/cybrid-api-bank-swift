# TradesAPI

All URIs are relative to *http://api-bank.cybrid.local*

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

Creates a trade.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the trade details in our private store | | initiating | The Platform has begun to perform the trade | | pending | The Platform is executing the trade | | settling | The Platform is settling the trade | | completed | The Platform has successfully completed the trade | | failed | The Platform was not able to successfully complete the trade |    Required scope: **trades:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postTradeBankModel = PostTrade(quoteGuid: "quoteGuid_example", expectedError: "expectedError_example") // PostTradeBankModel | 

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
    open class func listTrades(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, completion: @escaping (_ data: TradeListBankModel?, _ error: Error?) -> Void)
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

// Get trades list
TradesAPI.listTrades(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, accountGuid: accountGuid) { (response, error) in
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

### Return type

[**TradeListBankModel**](TradeListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

