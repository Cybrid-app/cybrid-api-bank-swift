# ExecutionsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExecution**](ExecutionsAPI.md#createexecution) | **POST** /api/executions | Create Execution
[**getExecution**](ExecutionsAPI.md#getexecution) | **GET** /api/executions/{execution_guid} | Get Execution


# **createExecution**
```swift
    open class func createExecution(postExecutionBankModel: PostExecutionBankModel, completion: @escaping (_ data: ExecutionBankModel?, _ error: Error?) -> Void)
```

Create Execution

Creates an execution.  ## Create a plan execution  | State | Description | |-------|-------------| | storing | The Platform is storing the execution details in our private store | | executing | The Platform is executing the plan | | completed | The Platform has successfully completed the plan execution | | failed | The Platform was not able to successfully complete the plan execution |    Required scope: **executions:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postExecutionBankModel = PostExecution(planGuid: "planGuid_example") // PostExecutionBankModel | 

// Create Execution
ExecutionsAPI.createExecution(postExecutionBankModel: postExecutionBankModel) { (response, error) in
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
 **postExecutionBankModel** | [**PostExecutionBankModel**](PostExecutionBankModel.md) |  | 

### Return type

[**ExecutionBankModel**](ExecutionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExecution**
```swift
    open class func getExecution(executionGuid: String, completion: @escaping (_ data: ExecutionBankModel?, _ error: Error?) -> Void)
```

Get Execution

Retrieves a execution.  Required scope: **executions:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let executionGuid = "executionGuid_example" // String | Identifier for the payment instruction.

// Get Execution
ExecutionsAPI.getExecution(executionGuid: executionGuid) { (response, error) in
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
 **executionGuid** | **String** | Identifier for the payment instruction. | 

### Return type

[**ExecutionBankModel**](ExecutionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

