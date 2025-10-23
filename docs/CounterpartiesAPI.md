# CounterpartiesAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCounterparty**](CounterpartiesAPI.md#createcounterparty) | **POST** /api/counterparties | Create Counterparty
[**getCounterparty**](CounterpartiesAPI.md#getcounterparty) | **GET** /api/counterparties/{counterparty_guid} | Get Counterparty
[**listCounterparties**](CounterpartiesAPI.md#listcounterparties) | **GET** /api/counterparties | Get counterparties list


# **createCounterparty**
```swift
    open class func createCounterparty(postCounterpartyBankModel: PostCounterpartyBankModel, completion: @escaping (_ data: CounterpartyBankModel?, _ error: Error?) -> Void)
```

Create Counterparty

Creates a counterparty.  ## Counterparty Type  Counterparty resources are an abstraction for real world individuals and businesses that are not directly on the Cybrid Platform.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the counterparty details in our private store | | unverified | The Platform has not yet verified the counterparty's identity | | verified | The Platform has verified the counterparty's identity | | rejected | The Platform was not able to successfully verify the counterparty's identity |    Required scope: **counterparties:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postCounterpartyBankModel = PostCounterparty(type: "type_example", customerGuid: "customerGuid_example", address: PostCounterparty_address(street: "street_example", street2: "street2_example", city: "city_example", subdivision: "subdivision_example", postalCode: "postalCode_example", countryCode: "countryCode_example"), name: PostCounterparty_name(full: "full_example", first: "first_example", middle: "middle_example", last: "last_example"), aliases: [PostCounterparty_aliases_inner(full: "full_example")], dateOfBirth: Date(), labels: ["labels_example"]) // PostCounterpartyBankModel | 

// Create Counterparty
CounterpartiesAPI.createCounterparty(postCounterpartyBankModel: postCounterpartyBankModel) { (response, error) in
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
 **postCounterpartyBankModel** | [**PostCounterpartyBankModel**](PostCounterpartyBankModel.md) |  | 

### Return type

[**CounterpartyBankModel**](CounterpartyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCounterparty**
```swift
    open class func getCounterparty(counterpartyGuid: String, includePii: Bool? = nil, completion: @escaping (_ data: CounterpartyBankModel?, _ error: Error?) -> Void)
```

Get Counterparty

Retrieves a counterparty.  Required scope: **counterparties:read** Optional scope: **counterparties:pii:read**.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let counterpartyGuid = "counterpartyGuid_example" // String | Identifier for the counterparty.
let includePii = true // Bool | Include PII in the response (requires **counterparties:pii:read** scope). (optional)

// Get Counterparty
CounterpartiesAPI.getCounterparty(counterpartyGuid: counterpartyGuid, includePii: includePii) { (response, error) in
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
 **counterpartyGuid** | **String** | Identifier for the counterparty. | 
 **includePii** | **Bool** | Include PII in the response (requires **counterparties:pii:read** scope). | [optional] 

### Return type

[**CounterpartyBankModel**](CounterpartyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCounterparties**
```swift
    open class func listCounterparties(page: Int? = nil, perPage: Int? = nil, type: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, guid: String? = nil, label: String? = nil, completion: @escaping (_ data: CounterpartyListBankModel?, _ error: Error?) -> Void)
```

Get counterparties list

Retrieves a listing of counterparties. Records are sorted by creation date in descending order.  Required scope: **counterparties:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)
let type = "type_example" // String | Comma separated types to list counterparties for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list counterparties for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list counterparties for. (optional)
let guid = "guid_example" // String | Comma separated counterparty_guids to list counterparties for. (optional)
let label = "label_example" // String | Comma separated labels to list counterparties for. (optional)

// Get counterparties list
CounterpartiesAPI.listCounterparties(page: page, perPage: perPage, type: type, bankGuid: bankGuid, customerGuid: customerGuid, guid: guid, label: label) { (response, error) in
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
 **type** | **String** | Comma separated types to list counterparties for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list counterparties for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list counterparties for. | [optional] 
 **guid** | **String** | Comma separated counterparty_guids to list counterparties for. | [optional] 
 **label** | **String** | Comma separated labels to list counterparties for. | [optional] 

### Return type

[**CounterpartyListBankModel**](CounterpartyListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

