# InvoicesAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelInvoice**](InvoicesAPI.md#cancelinvoice) | **DELETE** /api/invoices/{invoice_guid} | Cancel Invoice
[**createInvoice**](InvoicesAPI.md#createinvoice) | **POST** /api/invoices | Create Invoice
[**getInvoice**](InvoicesAPI.md#getinvoice) | **GET** /api/invoices/{invoice_guid} | Get Invoice
[**listInvoices**](InvoicesAPI.md#listinvoices) | **GET** /api/invoices | List Invoices


# **cancelInvoice**
```swift
    open class func cancelInvoice(invoiceGuid: String, completion: @escaping (_ data: InvoiceBankModel?, _ error: Error?) -> Void)
```

Cancel Invoice

Cancels an invoice.  Required scope: **invoices:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let invoiceGuid = "invoiceGuid_example" // String | Identifier for the invoice.

// Cancel Invoice
InvoicesAPI.cancelInvoice(invoiceGuid: invoiceGuid) { (response, error) in
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
 **invoiceGuid** | **String** | Identifier for the invoice. | 

### Return type

[**InvoiceBankModel**](InvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInvoice**
```swift
    open class func createInvoice(postInvoiceBankModel: PostInvoiceBankModel, completion: @escaping (_ data: InvoiceBankModel?, _ error: Error?) -> Void)
```

Create Invoice

Creates a invoice.  ## State  | State | Description | |-------|-------------| | storing    | The Platform is storing the invoice details in our private store | | unpaid     | The invoice is unpaid. Payment instructions can be generated for an invoice in this state | | cancelling | The invocie is in the process of being cancelled | | cancelled  | The invoice has been cancelled |  | settling   | The invoice has been paid and the funds associated with this invoice are in the process of being settled | | paid       | The invoice has been paid and the funds associated with this invoice have been settled |     Required scope: **invoices:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInvoiceBankModel = PostInvoice(asset: "asset_example", customerGuid: "customerGuid_example", receiveAmount: 123, deliverAmount: 123, labels: ["labels_example"]) // PostInvoiceBankModel | 

// Create Invoice
InvoicesAPI.createInvoice(postInvoiceBankModel: postInvoiceBankModel) { (response, error) in
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
 **postInvoiceBankModel** | [**PostInvoiceBankModel**](PostInvoiceBankModel.md) |  | 

### Return type

[**InvoiceBankModel**](InvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoice**
```swift
    open class func getInvoice(invoiceGuid: String, completion: @escaping (_ data: InvoiceBankModel?, _ error: Error?) -> Void)
```

Get Invoice

Retrieves a invoice.  Required scope: **invoices:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let invoiceGuid = "invoiceGuid_example" // String | Identifier for the payment instruction.

// Get Invoice
InvoicesAPI.getInvoice(invoiceGuid: invoiceGuid) { (response, error) in
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
 **invoiceGuid** | **String** | Identifier for the payment instruction. | 

### Return type

[**InvoiceBankModel**](InvoiceBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoices**
```swift
    open class func listInvoices(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil, environment: EnvironmentBankModel_listInvoices? = nil, label: String? = nil, completion: @escaping (_ data: InvoiceListBankModel?, _ error: Error?) -> Void)
```

List Invoices

Retrieves a list of invoices.  Required scope: **invoices:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated guids to list invoices for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list invoices for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list invoices for. (optional)
let accountGuid = "accountGuid_example" // String | Comma separated account_guids to list invoices for. (optional)
let state = "state_example" // String | Comma separated states to list invoices for. (optional)
let environment = "environment_example" // String |  (optional)
let label = "label_example" // String | Comma separated labels to list invoices for. (optional)

// List Invoices
InvoicesAPI.listInvoices(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, accountGuid: accountGuid, state: state, environment: environment, label: label) { (response, error) in
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
 **guid** | **String** | Comma separated guids to list invoices for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list invoices for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list invoices for. | [optional] 
 **accountGuid** | **String** | Comma separated account_guids to list invoices for. | [optional] 
 **state** | **String** | Comma separated states to list invoices for. | [optional] 
 **environment** | **String** |  | [optional] 
 **label** | **String** | Comma separated labels to list invoices for. | [optional] 

### Return type

[**InvoiceListBankModel**](InvoiceListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

