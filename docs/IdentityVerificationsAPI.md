# IdentityVerificationsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

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

Creates an Identity Verification.  ## Identity Verifications  Identity Verifications confirm an individual's identity with for the purpose of inclusion on the platform. This know-your-customer (KYC) process is a requirement for individuals to be able to transact. At present, we offer support for Cybrid performing the verification or working with partners to accept their KYC/AML process and have it attested to in our platform.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the identity verification details in our private store | | waiting | The Platform is waiting for the customer to start the identity verification process | | pending | The Platform is waiting for the customer to finish the identity verification process | | reviewing | The Platform is waiting for compliance to review the identity verification results | | expired | The identity verification process has expired | | completed | The identity verification process has been completed |  ## Outcome  | State | Description | |-------|-------------| | passed | The customer has passed the identity verification process | | failed | The customer has failed the identity verification process |  ## Failure Codes  | Code | Description | |-------|-------------| | id_check_failure | Failure due to an issue verifying the provided ID | | id_quality_check_failure | Failure due to an issue verifying the provided ID based on the image quality | | id_barcode_check_failure | Failure due to an issue verifying the provided ID based on the barcode | | id_mrz_check_failure | Failure due to an issue verifying the provided ID based on the machine-readable zone (MRZ) | | id_presence_check_failure | Failure due to an issue verifying the provided ID based on the presence of the ID | | id_expiration_check_failure | Failure due to an issue verifying the provided ID based on the expiration date | | id_double_side_check_failure | Failure due to an issue verifying the provided ID based on both sides not being provided | | id_type_allowed_check_failure | Failure due to an issue verifying the provided ID based on the type provided | | id_country_allowed_check_failure | Failure due to an issue verifying the provided ID based on the issuing country | | id_digital_replica_check_failure | Failure due to an issue verifying the provided ID based on it being a digital replica | | id_paper_replica_check_failure | Failure due to an issue verifying the provided ID based on it being a paper replica | | database_check_failure | Failure due to an issue verifying the provided information against authoritative data sources | | selfie_failure | Failure due to an issue verifying the provided selfie photo | | selfie_pose_check_failure | Failure due to an issue verifying the provided selfie photo based on incorrect poses | | selfie_quality_check_failure | Failure due to an issue verifying the provided selfie photo based on the image quality | | country_comparison_check_failure | Failure due the customer verification being performed out of country | | duplicate_person_check_failure | Failure due to a customer already existing for this person | | prohibited_person_check_failure | Failure due to a person being on prohibited from accessing the service | | name_check_failure | Failure due to an issue verifying the name of the person | | address_check_failure | Failure due to an issue verifying the address of the person | | account_number_check_failure | Failure due to an issue verifying the account number of the person | | dob_check_failure | Failure due to an issue verifying the date of birth of the person | | id_number_check_failure | Failure due to an issue verifying an identification number of the person | | phone_number_check_failure | Failure due to an issue verifying the phone number of the person | | email_address_check_failure | Failure due to an issue verifying the email address of the person | | document_type_check_failure | Failure due to the type of document provided not being the correct type | | document_quality_check_failure | Failure due to an issue verifying the document based on the image quality | | compliance_rejection | Failure due to compliance rejecting the identity verification | | plaid_failure | Failure due to an issue interacting with Plaid | | plaid_item_login_required | Failure due to the Plaid token for the account requiring re-login | | plaid_invalid_product | Failure due to the Plaid product not being supported (contact support) | | plaid_no_accounts | Failure due to the Plaid token having access to no accounts | | plaid_item_not_found | Failure due to Plaid not being able to find the associated account | | decision_timeout | Failure due to an issue verifying the email address of the person | | requested_failure | In sandbox, the caller requested that the process failed | | deleted_account | Failure due to the bank account having been deleted before a decision was made |    Required scope: **identity_verifications:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postIdentityVerificationBankModel = PostIdentityVerification(type: "type_example", customerGuid: "customerGuid_example", expectedBehaviours: ["expectedBehaviours_example"], method: "method_example", counterpartyGuid: "counterpartyGuid_example", countryCode: "countryCode_example", name: PostIdentityVerification_name(first: "first_example", middle: "middle_example", last: "last_example", full: "full_example"), address: PostIdentityVerification_address(street: "street_example", street2: "street2_example", city: "city_example", subdivision: "subdivision_example", postalCode: "postalCode_example", countryCode: "countryCode_example"), dateOfBirth: Date(), identificationNumbers: [PostIdentificationNumber(type: "type_example", issuingCountryCode: "issuingCountryCode_example", identificationNumber: "identificationNumber_example")], externalBankAccountGuid: "externalBankAccountGuid_example", phoneNumber: "phoneNumber_example", emailAddress: "emailAddress_example") // PostIdentityVerificationBankModel | 

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
    open class func getIdentityVerification(identityVerificationGuid: String, includePii: Bool? = nil, completion: @escaping (_ data: IdentityVerificationWithDetailsBankModel?, _ error: Error?) -> Void)
```

Get Identity Verification

Retrieves an identity verification.  Required scope: **identity_verifications:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let identityVerificationGuid = "identityVerificationGuid_example" // String | Identifier for the identity verification.
let includePii = true // Bool | Include PII in the response. (optional)

// Get Identity Verification
IdentityVerificationsAPI.getIdentityVerification(identityVerificationGuid: identityVerificationGuid, includePii: includePii) { (response, error) in
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
 **includePii** | **Bool** | Include PII in the response. | [optional] 

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
    open class func listIdentityVerifications(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, state: String? = nil, type: String? = nil, completion: @escaping (_ data: IdentityVerificationListBankModel?, _ error: Error?) -> Void)
```

List Identity Verifications

Retrieves a list of identity verifications.  Required scope: **identity_verifications:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated guids to list identity verifications for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list identity verifications for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list identity verifications for. (optional)
let state = "state_example" // String | Comma separated states to list identity verifications for. (optional)
let type = "type_example" // String | Comma separated types to list identity verifications for. (optional)

// List Identity Verifications
IdentityVerificationsAPI.listIdentityVerifications(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, state: state, type: type) { (response, error) in
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
 **state** | **String** | Comma separated states to list identity verifications for. | [optional] 
 **type** | **String** | Comma separated types to list identity verifications for. | [optional] 

### Return type

[**IdentityVerificationListBankModel**](IdentityVerificationListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

