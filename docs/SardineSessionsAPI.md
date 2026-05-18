# SardineSessionsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSardineSession**](SardineSessionsAPI.md#createsardinesession) | **POST** /api/sardine_sessions | Create Sardine Session


# **createSardineSession**
```swift
    open class func createSardineSession(postSardineSessionBankModel: PostSardineSessionBankModel, completion: @escaping (_ data: SardineSessionBankModel?, _ error: Error?) -> Void)
```

Create Sardine Session

Create a Sardine session.  Required scope: **sardine_sessions:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postSardineSessionBankModel = PostSardineSession(customerGuid: "customerGuid_example") // PostSardineSessionBankModel | 

// Create Sardine Session
SardineSessionsAPI.createSardineSession(postSardineSessionBankModel: postSardineSessionBankModel) { (response, error) in
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
 **postSardineSessionBankModel** | [**PostSardineSessionBankModel**](PostSardineSessionBankModel.md) |  | 

### Return type

[**SardineSessionBankModel**](SardineSessionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

