# PlansAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlan**](PlansAPI.md#createplan) | **POST** /api/plans | Create Plan
[**getPlan**](PlansAPI.md#getplan) | **GET** /api/plans/{plan_guid} | Get Plan
[**listPlans**](PlansAPI.md#listplans) | **GET** /api/plans | Get plans list


# **createPlan**
```swift
    open class func createPlan(postPlanBankModel: PostPlanBankModel, completion: @escaping (_ data: PlanBankModel?, _ error: Error?) -> Void)
```

Create Plan

Creates a plan.  ## Create a plan  Plans can be created for a Bank or a Customer.  To create plan for your Bank, omit the `customer_guid` parameter in the request body. To create plans for your Customers, include the `customer_guid` parameter in the request body.  | State | Description | |-------|-------------| | storing | The Platform is storing the plan details in our private store | | planning | The Platform is currently building the plan | | completed | The Platform has successfully completed the plan | | failed | The Platform was not able to successfully complete the plan |    Required scope: **plans:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postPlanBankModel = PostPlan(type: "type_example", bankGuid: "bankGuid_example", customerGuid: "customerGuid_example", sourceAccount: PostPlan_source_account(guid: "guid_example", amount: 123), destinationAccount: PostPlan_destination_account(guid: "guid_example", amount: 123), travelRuleInfo: PostPlan_travel_rule_info(ultimateOriginatingPartyGuid: "ultimateOriginatingPartyGuid_example", ultimateReceivingPartyGuid: "ultimateReceivingPartyGuid_example"), purposeOfTransaction: "purposeOfTransaction_example") // PostPlanBankModel | 

// Create Plan
PlansAPI.createPlan(postPlanBankModel: postPlanBankModel) { (response, error) in
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
 **postPlanBankModel** | [**PostPlanBankModel**](PostPlanBankModel.md) |  | 

### Return type

[**PlanBankModel**](PlanBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlan**
```swift
    open class func getPlan(planGuid: String, completion: @escaping (_ data: PlanBankModel?, _ error: Error?) -> Void)
```

Get Plan

Retrieves a plan.  Required scope: **plans:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let planGuid = "planGuid_example" // String | Identifier for the payment instruction.

// Get Plan
PlansAPI.getPlan(planGuid: planGuid) { (response, error) in
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
 **planGuid** | **String** | Identifier for the payment instruction. | 

### Return type

[**PlanBankModel**](PlanBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlans**
```swift
    open class func listPlans(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, type: String? = nil, state: String? = nil, sourceAccountGuid: String? = nil, destinationAccountGuid: String? = nil, createdAtGte: String? = nil, createdAtLt: String? = nil, updatedAtGte: String? = nil, updatedAtLt: String? = nil, completion: @escaping (_ data: PlanListBankModel?, _ error: Error?) -> Void)
```

Get plans list

Retrieves a listing of plans. Records are sorted by creation date in descending order.  Required scope: **plans:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated plan_guids to list plans for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list plans for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list plans for. (optional)
let type = "type_example" // String | Comma separated types to list plans for. (optional)
let state = "state_example" // String | Comma separated states to list plans for. (optional)
let sourceAccountGuid = "sourceAccountGuid_example" // String | Comma separated source account guids to list plans for. (optional)
let destinationAccountGuid = "destinationAccountGuid_example" // String | Comma separated destination account guids to list plans for. (optional)
let createdAtGte = "createdAtGte_example" // String | Created at start date-time inclusive lower bound, ISO8601. (optional)
let createdAtLt = "createdAtLt_example" // String | Created at end date-time exclusive upper bound, ISO8601. (optional)
let updatedAtGte = "updatedAtGte_example" // String | Updated at start date-time inclusive lower bound, ISO8601. (optional)
let updatedAtLt = "updatedAtLt_example" // String | Updated at end date-time exclusive upper bound, ISO8601. (optional)

// Get plans list
PlansAPI.listPlans(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, type: type, state: state, sourceAccountGuid: sourceAccountGuid, destinationAccountGuid: destinationAccountGuid, createdAtGte: createdAtGte, createdAtLt: createdAtLt, updatedAtGte: updatedAtGte, updatedAtLt: updatedAtLt) { (response, error) in
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
 **guid** | **String** | Comma separated plan_guids to list plans for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list plans for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list plans for. | [optional] 
 **type** | **String** | Comma separated types to list plans for. | [optional] 
 **state** | **String** | Comma separated states to list plans for. | [optional] 
 **sourceAccountGuid** | **String** | Comma separated source account guids to list plans for. | [optional] 
 **destinationAccountGuid** | **String** | Comma separated destination account guids to list plans for. | [optional] 
 **createdAtGte** | **String** | Created at start date-time inclusive lower bound, ISO8601. | [optional] 
 **createdAtLt** | **String** | Created at end date-time exclusive upper bound, ISO8601. | [optional] 
 **updatedAtGte** | **String** | Updated at start date-time inclusive lower bound, ISO8601. | [optional] 
 **updatedAtLt** | **String** | Updated at end date-time exclusive upper bound, ISO8601. | [optional] 

### Return type

[**PlanListBankModel**](PlanListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

