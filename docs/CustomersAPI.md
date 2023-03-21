# CustomersAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](CustomersAPI.md#createcustomer) | **POST** /api/customers | Create Customer
[**getCustomer**](CustomersAPI.md#getcustomer) | **GET** /api/customers/{customer_guid} | Get Customer
[**listCustomers**](CustomersAPI.md#listcustomers) | **GET** /api/customers | Get customers list


# **createCustomer**
```swift
    open class func createCustomer(postCustomerBankModel: PostCustomerBankModel, completion: @escaping (_ data: CustomerBankModel?, _ error: Error?) -> Void)
```

Create Customer

Creates a customer.  ## Customer Type  Customer resources are an abstraction for real world individuals and businesses on the Cybrid Platform and are used throughout the platform to perform high level operations, e.g., create a quote, execute a trade, etc..  Customers can have additional resources attached to them, e.g., identity records, accounts, etc.  At present, Customer's can be created with type `individual`.    Required scope: **customers:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postCustomerBankModel = PostCustomer(type: "type_example", name: PostCustomer_name(first: "first_example", middle: "middle_example", last: "last_example"), address: PostCustomer_address(street: "street_example", street2: "street2_example", city: "city_example", subdivision: "subdivision_example", postalCode: "postalCode_example", countryCode: "countryCode_example"), dateOfBirth: Date(), phoneNumber: "phoneNumber_example", emailAddress: "emailAddress_example", identificationNumbers: [PostIdentificationNumber(type: "type_example", issuingCountryCode: "issuingCountryCode_example", identificationNumber: "identificationNumber_example")]) // PostCustomerBankModel | 

// Create Customer
CustomersAPI.createCustomer(postCustomerBankModel: postCustomerBankModel) { (response, error) in
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
 **postCustomerBankModel** | [**PostCustomerBankModel**](PostCustomerBankModel.md) |  | 

### Return type

[**CustomerBankModel**](CustomerBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomer**
```swift
    open class func getCustomer(customerGuid: String, completion: @escaping (_ data: CustomerBankModel?, _ error: Error?) -> Void)
```

Get Customer

Retrieves a customer.  Required scope: **customers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let customerGuid = "customerGuid_example" // String | Identifier for the customer.

// Get Customer
CustomersAPI.getCustomer(customerGuid: customerGuid) { (response, error) in
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
 **customerGuid** | **String** | Identifier for the customer. | 

### Return type

[**CustomerBankModel**](CustomerBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomers**
```swift
    open class func listCustomers(page: Int? = nil, perPage: Int? = nil, bankGuid: String? = nil, guid: String? = nil, completion: @escaping (_ data: CustomerListBankModel?, _ error: Error?) -> Void)
```

Get customers list

Retrieves a listing of customers.  Required scope: **customers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list customers for. (optional)
let guid = "guid_example" // String | Comma separated customer_guids to list customers for. (optional)

// Get customers list
CustomersAPI.listCustomers(page: page, perPage: perPage, bankGuid: bankGuid, guid: guid) { (response, error) in
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
 **bankGuid** | **String** | Comma separated bank_guids to list customers for. | [optional] 
 **guid** | **String** | Comma separated customer_guids to list customers for. | [optional] 

### Return type

[**CustomerListBankModel**](CustomerListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

