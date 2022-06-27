# TradingConfigurationsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTradingConfiguration**](TradingConfigurationsAPI.md#createtradingconfiguration) | **POST** /api/trading_configurations | Create TradingConfiguration
[**getTradingConfiguration**](TradingConfigurationsAPI.md#gettradingconfiguration) | **GET** /api/trading_configurations/{trading_configuration_guid} | Get TradingConfiguration
[**listTradingConfigurations**](TradingConfigurationsAPI.md#listtradingconfigurations) | **GET** /api/trading_configurations | List trading configurations


# **createTradingConfiguration**
```swift
    open class func createTradingConfiguration(postTradingConfigurationBankModel: PostTradingConfigurationBankModel, completion: @escaping (_ data: TradingConfigurationBankModel?, _ error: Error?) -> Void)
```

Create TradingConfiguration

Creates a trading configuration.  Required scope: **banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postTradingConfigurationBankModel = PostTradingConfiguration(asset: "asset_example", fees: [PostFee(type: "type_example", spreadFee: 123, fixedFee: 123)]) // PostTradingConfigurationBankModel | 

// Create TradingConfiguration
TradingConfigurationsAPI.createTradingConfiguration(postTradingConfigurationBankModel: postTradingConfigurationBankModel) { (response, error) in
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
 **postTradingConfigurationBankModel** | [**PostTradingConfigurationBankModel**](PostTradingConfigurationBankModel.md) |  | 

### Return type

[**TradingConfigurationBankModel**](TradingConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTradingConfiguration**
```swift
    open class func getTradingConfiguration(tradingConfigurationGuid: String, completion: @escaping (_ data: TradingConfigurationBankModel?, _ error: Error?) -> Void)
```

Get TradingConfiguration

Retrieves a trading configuration.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let tradingConfigurationGuid = "tradingConfigurationGuid_example" // String | Identifier for the trading configuration.

// Get TradingConfiguration
TradingConfigurationsAPI.getTradingConfiguration(tradingConfigurationGuid: tradingConfigurationGuid) { (response, error) in
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
 **tradingConfigurationGuid** | **String** | Identifier for the trading configuration. | 

### Return type

[**TradingConfigurationBankModel**](TradingConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTradingConfigurations**
```swift
    open class func listTradingConfigurations(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: TradingConfigurationListBankModel?, _ error: Error?) -> Void)
```

List trading configurations

Retrieves a listing of trading configurations for a bank.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional) (default to 0)
let perPage = 987 // Int |  (optional) (default to 10)

// List trading configurations
TradingConfigurationsAPI.listTradingConfigurations(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 0]
 **perPage** | **Int** |  | [optional] [default to 10]

### Return type

[**TradingConfigurationListBankModel**](TradingConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

