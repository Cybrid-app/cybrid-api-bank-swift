# PlansAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlan**](PlansAPI.md#createplan) | **POST** /api/plans | Create Plan
[**getPlan**](PlansAPI.md#getplan) | **GET** /api/plans/{plan_guid} | Get Plan


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

let postPlanBankModel = PostPlan(type: "type_example", bankGuid: "bankGuid_example", customerGuid: "customerGuid_example", sourceAccount: PostPlan_source_account(guid: "guid_example", amount: 123), destinationAccount: PostPlan_destination_account(guid: "guid_example", amount: 123), travelRuleInfo: PostPlan_travel_rule_info(ultimateOriginatingPartyGuid: "ultimateOriginatingPartyGuid_example", ultimateReceivingPartyGuid: "ultimateReceivingPartyGuid_example")) // PostPlanBankModel | 

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

