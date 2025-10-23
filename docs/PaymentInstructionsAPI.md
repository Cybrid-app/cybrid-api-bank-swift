# PaymentInstructionsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentInstruction**](PaymentInstructionsAPI.md#createpaymentinstruction) | **POST** /api/payment_instructions | Create Payment Instruction
[**getPaymentInstruction**](PaymentInstructionsAPI.md#getpaymentinstruction) | **GET** /api/payment_instructions/{payment_instruction_guid} | Get Payment Instruction
[**listPaymentInstructions**](PaymentInstructionsAPI.md#listpaymentinstructions) | **GET** /api/payment_instructions | List Payment Instructions


# **createPaymentInstruction**
```swift
    open class func createPaymentInstruction(postPaymentInstructionBankModel: PostPaymentInstructionBankModel, completion: @escaping (_ data: PaymentInstructionBankModel?, _ error: Error?) -> Void)
```

Create Payment Instruction

Creates a payment instruction.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the payment instruction details in our private store | | created | The Platform has created the payment instruction | | expired | The PaymentInstruction is no longer valid |    Required scope: **invoices:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postPaymentInstructionBankModel = PostPaymentInstruction(invoiceGuid: "invoiceGuid_example", expectedBehaviour: "expectedBehaviour_example") // PostPaymentInstructionBankModel | 

// Create Payment Instruction
PaymentInstructionsAPI.createPaymentInstruction(postPaymentInstructionBankModel: postPaymentInstructionBankModel) { (response, error) in
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
 **postPaymentInstructionBankModel** | [**PostPaymentInstructionBankModel**](PostPaymentInstructionBankModel.md) |  | 

### Return type

[**PaymentInstructionBankModel**](PaymentInstructionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentInstruction**
```swift
    open class func getPaymentInstruction(paymentInstructionGuid: String, completion: @escaping (_ data: PaymentInstructionBankModel?, _ error: Error?) -> Void)
```

Get Payment Instruction

Retrieves a payment_instruction.  Required scope: **invoices:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let paymentInstructionGuid = "paymentInstructionGuid_example" // String | Identifier for the payment instruction.

// Get Payment Instruction
PaymentInstructionsAPI.getPaymentInstruction(paymentInstructionGuid: paymentInstructionGuid) { (response, error) in
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
 **paymentInstructionGuid** | **String** | Identifier for the payment instruction. | 

### Return type

[**PaymentInstructionBankModel**](PaymentInstructionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPaymentInstructions**
```swift
    open class func listPaymentInstructions(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, invoiceGuid: String? = nil, completion: @escaping (_ data: PaymentInstructionListBankModel?, _ error: Error?) -> Void)
```

List Payment Instructions

Retrieves a list of payment instructions. Records are sorted by creation date in descending order.  Required scope: **invoices:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated guids to list payment instructions for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list payment instructions for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list payment instructions for. (optional)
let invoiceGuid = "invoiceGuid_example" // String | Comma separated invoice_guids to list payment instructions for. (optional)

// List Payment Instructions
PaymentInstructionsAPI.listPaymentInstructions(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, invoiceGuid: invoiceGuid) { (response, error) in
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
 **guid** | **String** | Comma separated guids to list payment instructions for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list payment instructions for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list payment instructions for. | [optional] 
 **invoiceGuid** | **String** | Comma separated invoice_guids to list payment instructions for. | [optional] 

### Return type

[**PaymentInstructionListBankModel**](PaymentInstructionListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

