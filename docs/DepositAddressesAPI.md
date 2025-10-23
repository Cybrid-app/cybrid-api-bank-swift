# DepositAddressesAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDepositAddress**](DepositAddressesAPI.md#createdepositaddress) | **POST** /api/deposit_addresses | Create Deposit Address
[**getDepositAddress**](DepositAddressesAPI.md#getdepositaddress) | **GET** /api/deposit_addresses/{deposit_address_guid} | Get Deposit Address
[**listDepositAddresses**](DepositAddressesAPI.md#listdepositaddresses) | **GET** /api/deposit_addresses | List Deposit Addresses


# **createDepositAddress**
```swift
    open class func createDepositAddress(postDepositAddressBankModel: PostDepositAddressBankModel, completion: @escaping (_ data: DepositAddressBankModel?, _ error: Error?) -> Void)
```

Create Deposit Address

Creates a deposit address.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the deposit address details in our private store | | created | The Platform has created the deposit address |    Required scope: **deposit_addresses:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postDepositAddressBankModel = PostDepositAddress(accountGuid: "accountGuid_example", labels: ["labels_example"]) // PostDepositAddressBankModel | 

// Create Deposit Address
DepositAddressesAPI.createDepositAddress(postDepositAddressBankModel: postDepositAddressBankModel) { (response, error) in
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
 **postDepositAddressBankModel** | [**PostDepositAddressBankModel**](PostDepositAddressBankModel.md) |  | 

### Return type

[**DepositAddressBankModel**](DepositAddressBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDepositAddress**
```swift
    open class func getDepositAddress(depositAddressGuid: String, completion: @escaping (_ data: DepositAddressBankModel?, _ error: Error?) -> Void)
```

Get Deposit Address

Retrieves a deposit address.  Required scope: **deposit_addresses:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let depositAddressGuid = "depositAddressGuid_example" // String | Identifier for the deposit address.

// Get Deposit Address
DepositAddressesAPI.getDepositAddress(depositAddressGuid: depositAddressGuid) { (response, error) in
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
 **depositAddressGuid** | **String** | Identifier for the deposit address. | 

### Return type

[**DepositAddressBankModel**](DepositAddressBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDepositAddresses**
```swift
    open class func listDepositAddresses(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, label: String? = nil, completion: @escaping (_ data: DepositAddressListBankModel?, _ error: Error?) -> Void)
```

List Deposit Addresses

Retrieves a list of deposit addresses. Records are sorted by creation date in descending order.  Required scope: **deposit_addresses:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated guids to list deposit addresses for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list deposit addresses for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list deposit addresses for. (optional)
let label = "label_example" // String | Comma separated labels to list deposit addresses for. (optional)

// List Deposit Addresses
DepositAddressesAPI.listDepositAddresses(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, label: label) { (response, error) in
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
 **guid** | **String** | Comma separated guids to list deposit addresses for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list deposit addresses for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list deposit addresses for. | [optional] 
 **label** | **String** | Comma separated labels to list deposit addresses for. | [optional] 

### Return type

[**DepositAddressListBankModel**](DepositAddressListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

