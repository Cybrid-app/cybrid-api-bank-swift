# ExecutionsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExecution**](ExecutionsAPI.md#createexecution) | **POST** /api/executions | Create Execution
[**getExecution**](ExecutionsAPI.md#getexecution) | **GET** /api/executions/{execution_guid} | Get Execution
[**listExecutions**](ExecutionsAPI.md#listexecutions) | **GET** /api/executions | Get executions list


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

# **listExecutions**
```swift
    open class func listExecutions(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, planGuid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, type: String? = nil, state: String? = nil, sourceAccountGuid: String? = nil, destinationAccountGuid: String? = nil, createdAtGte: String? = nil, createdAtLt: String? = nil, updatedAtGte: String? = nil, updatedAtLt: String? = nil, completion: @escaping (_ data: ExecutionListBankModel?, _ error: Error?) -> Void)
```

Get executions list

Retrieves a listing of executions. Records are sorted by creation date in descending order.  Required scope: **executions:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated execution_guids to list executions for. (optional)
let planGuid = "planGuid_example" // String | Comma separated plan_guids to list executions for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list executions for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list executions for. (optional)
let type = "type_example" // String | Comma separated types to list executions for. (optional)
let state = "state_example" // String | Comma separated states to list executions for. (optional)
let sourceAccountGuid = "sourceAccountGuid_example" // String | Comma separated source account guids to list executions for. (optional)
let destinationAccountGuid = "destinationAccountGuid_example" // String | Comma separated destination account guids to list executions for. (optional)
let createdAtGte = "createdAtGte_example" // String | Created at start date-time inclusive lower bound, ISO8601. (optional)
let createdAtLt = "createdAtLt_example" // String | Created at end date-time exclusive upper bound, ISO8601. (optional)
let updatedAtGte = "updatedAtGte_example" // String | Updated at start date-time inclusive lower bound, ISO8601. (optional)
let updatedAtLt = "updatedAtLt_example" // String | Updated at end date-time exclusive upper bound, ISO8601. (optional)

// Get executions list
ExecutionsAPI.listExecutions(page: page, perPage: perPage, guid: guid, planGuid: planGuid, bankGuid: bankGuid, customerGuid: customerGuid, type: type, state: state, sourceAccountGuid: sourceAccountGuid, destinationAccountGuid: destinationAccountGuid, createdAtGte: createdAtGte, createdAtLt: createdAtLt, updatedAtGte: updatedAtGte, updatedAtLt: updatedAtLt) { (response, error) in
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
 **guid** | **String** | Comma separated execution_guids to list executions for. | [optional] 
 **planGuid** | **String** | Comma separated plan_guids to list executions for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list executions for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list executions for. | [optional] 
 **type** | **String** | Comma separated types to list executions for. | [optional] 
 **state** | **String** | Comma separated states to list executions for. | [optional] 
 **sourceAccountGuid** | **String** | Comma separated source account guids to list executions for. | [optional] 
 **destinationAccountGuid** | **String** | Comma separated destination account guids to list executions for. | [optional] 
 **createdAtGte** | **String** | Created at start date-time inclusive lower bound, ISO8601. | [optional] 
 **createdAtLt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] 
 **updatedAtGte** | **String** | Updated at start date-time inclusive lower bound, ISO8601. | [optional] 
 **updatedAtLt** | **String** | Updated at end date-time exclusive upper bound, ISO8601. | [optional] 

### Return type

[**ExecutionListBankModel**](ExecutionListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

