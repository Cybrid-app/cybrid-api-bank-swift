# IdentityVerificationsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIdentityVerification**](IdentityVerificationsAPI.md#createidentityverification) | **POST** /api/identity_verifications | Create Identity Verification
[**getIdentityVerification**](IdentityVerificationsAPI.md#getidentityverification) | **GET** /api/identity_verifications/{identity_verification_guid} | Get Identity Verification
[**listIdentityVerifications**](IdentityVerificationsAPI.md#listidentityverifications) | **GET** /api/identity_verifications | List Identity Verifications


# **createIdentityVerification**
```swift
    open class func createIdentityVerification(postIdentityVerificationBankModel: PostIdentityVerificationBankModel, completion: @escaping (_ data: IdentityVerificationBankModel?, _ error: Error?) -> Void)
```

Create Identity Verification

Create an Identity Verification.  Required scope: **customers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postIdentityVerificationBankModel = PostIdentityVerification(type: "type_example", method: "method_example", countryCode: "countryCode_example", customerGuid: "customerGuid_example", expectedBehaviours: ["expectedBehaviours_example"]) // PostIdentityVerificationBankModel | 

// Create Identity Verification
IdentityVerificationsAPI.createIdentityVerification(postIdentityVerificationBankModel: postIdentityVerificationBankModel) { (response, error) in
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
 **postIdentityVerificationBankModel** | [**PostIdentityVerificationBankModel**](PostIdentityVerificationBankModel.md) |  | 

### Return type

[**IdentityVerificationBankModel**](IdentityVerificationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentityVerification**
```swift
    open class func getIdentityVerification(identityVerificationGuid: String, completion: @escaping (_ data: IdentityVerificationWithDetailsBankModel?, _ error: Error?) -> Void)
```

Get Identity Verification

Retrieves an identity verification.  Required scope: **customers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let identityVerificationGuid = "identityVerificationGuid_example" // String | Identifier for the identity verification.

// Get Identity Verification
IdentityVerificationsAPI.getIdentityVerification(identityVerificationGuid: identityVerificationGuid) { (response, error) in
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
 **identityVerificationGuid** | **String** | Identifier for the identity verification. | 

### Return type

[**IdentityVerificationWithDetailsBankModel**](IdentityVerificationWithDetailsBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentityVerifications**
```swift
    open class func listIdentityVerifications(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: IdentityVerificationListBankModel?, _ error: Error?) -> Void)
```

List Identity Verifications

Retrieves a list of identity verifications.  Required scope: **customers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated guids to list identity verifications for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list identity verifications for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list identity verifications for. (optional)

// List Identity Verifications
IdentityVerificationsAPI.listIdentityVerifications(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
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
 **guid** | **String** | Comma separated guids to list identity verifications for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list identity verifications for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list identity verifications for. | [optional] 

### Return type

[**IdentityVerificationListBankModel**](IdentityVerificationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

