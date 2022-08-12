# FeeConfigurationsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFeeConfiguration**](FeeConfigurationsAPI.md#createfeeconfiguration) | **POST** /api/fee_configurations | Create FeeConfiguration
[**getFeeConfiguration**](FeeConfigurationsAPI.md#getfeeconfiguration) | **GET** /api/fee_configurations/{fee_configuration_guid} | Get FeeConfiguration
[**listFeeConfigurations**](FeeConfigurationsAPI.md#listfeeconfigurations) | **GET** /api/fee_configurations | List fee configurations


# **createFeeConfiguration**
```swift
    open class func createFeeConfiguration(postFeeConfigurationBankModel: PostFeeConfigurationBankModel, completion: @escaping (_ data: FeeConfigurationBankModel?, _ error: Error?) -> Void)
```

Create FeeConfiguration

Creates a fee configuration.  Required scope: **banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postFeeConfigurationBankModel = PostFeeConfiguration(productType: "productType_example", asset: "asset_example", fees: [PostFee(type: "type_example", spreadFee: 123, fixedFee: 123)], productProvider: "productProvider_example") // PostFeeConfigurationBankModel | 

// Create FeeConfiguration
FeeConfigurationsAPI.createFeeConfiguration(postFeeConfigurationBankModel: postFeeConfigurationBankModel) { (response, error) in
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
 **postFeeConfigurationBankModel** | [**PostFeeConfigurationBankModel**](PostFeeConfigurationBankModel.md) |  | 

### Return type

[**FeeConfigurationBankModel**](FeeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeeConfiguration**
```swift
    open class func getFeeConfiguration(feeConfigurationGuid: String, completion: @escaping (_ data: FeeConfigurationBankModel?, _ error: Error?) -> Void)
```

Get FeeConfiguration

Retrieves a fee configuration.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let feeConfigurationGuid = "feeConfigurationGuid_example" // String | Identifier for the fee configuration.

// Get FeeConfiguration
FeeConfigurationsAPI.getFeeConfiguration(feeConfigurationGuid: feeConfigurationGuid) { (response, error) in
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
 **feeConfigurationGuid** | **String** | Identifier for the fee configuration. | 

### Return type

[**FeeConfigurationBankModel**](FeeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFeeConfigurations**
```swift
    open class func listFeeConfigurations(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: FeeConfigurationListBankModel?, _ error: Error?) -> Void)
```

List fee configurations

Retrieves a listing of fee configurations for a bank.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)

// List fee configurations
FeeConfigurationsAPI.listFeeConfigurations(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 

### Return type

[**FeeConfigurationListBankModel**](FeeConfigurationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

