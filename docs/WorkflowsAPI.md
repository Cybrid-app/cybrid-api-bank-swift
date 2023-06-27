# WorkflowsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorkflow**](WorkflowsAPI.md#createworkflow) | **POST** /api/workflows | Create Workflow
[**getWorkflow**](WorkflowsAPI.md#getworkflow) | **GET** /api/workflows/{workflow_guid} | Get Workflow
[**listWorkflows**](WorkflowsAPI.md#listworkflows) | **GET** /api/workflows | Get workflows list


# **createWorkflow**
```swift
    open class func createWorkflow(postWorkflowBankModel: PostWorkflowBankModel, completion: @escaping (_ data: WorkflowBankModel?, _ error: Error?) -> Void)
```

Create Workflow

Creates a workflow.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the workflow details in our private store | | completed | The Platform has created the workflow | | failed | The workflow was not completed successfully |  ## Plaid  | Param | Description | |-------|-------------| | redirect_uri | All URIs must be registered with Cybrid. For local testing use `http://localhost:4200/bank-account-connect` |    Required scope: **workflows:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postWorkflowBankModel = PostWorkflow(type: "type_example", kind: "kind_example", customerGuid: "customerGuid_example", externalBankAccountGuid: "externalBankAccountGuid_example", language: "language_example", linkCustomizationName: "linkCustomizationName_example", redirectUri: "redirectUri_example", androidPackageName: "androidPackageName_example") // PostWorkflowBankModel | 

// Create Workflow
WorkflowsAPI.createWorkflow(postWorkflowBankModel: postWorkflowBankModel) { (response, error) in
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
 **postWorkflowBankModel** | [**PostWorkflowBankModel**](PostWorkflowBankModel.md) |  | 

### Return type

[**WorkflowBankModel**](WorkflowBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkflow**
```swift
    open class func getWorkflow(workflowGuid: String, completion: @escaping (_ data: WorkflowWithDetailsBankModel?, _ error: Error?) -> Void)
```

Get Workflow

Retrieves a workflow.  Required scope: **workflows:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let workflowGuid = "workflowGuid_example" // String | Identifier for the workflow.

// Get Workflow
WorkflowsAPI.getWorkflow(workflowGuid: workflowGuid) { (response, error) in
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
 **workflowGuid** | **String** | Identifier for the workflow. | 

### Return type

[**WorkflowWithDetailsBankModel**](WorkflowWithDetailsBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkflows**
```swift
    open class func listWorkflows(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: WorkflowsListBankModel?, _ error: Error?) -> Void)
```

Get workflows list

Retrieves a listing of workflows.  Required scope: **workflows:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated workflow_guids to list workflows for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list workflows for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list workflows for. (optional)

// Get workflows list
WorkflowsAPI.listWorkflows(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
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
 **guid** | **String** | Comma separated workflow_guids to list workflows for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list workflows for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list workflows for. | [optional] 

### Return type

[**WorkflowsListBankModel**](WorkflowsListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

