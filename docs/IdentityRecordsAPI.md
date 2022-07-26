# IdentityRecordsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIdentityRecord**](IdentityRecordsAPI.md#createidentityrecord) | **POST** /api/identity_records | Create Identity Record
[**getIdentityRecord**](IdentityRecordsAPI.md#getidentityrecord) | **GET** /api/identity_records/{identity_record_guid} | Get Identity Record
[**listIdentityRecords**](IdentityRecordsAPI.md#listidentityrecords) | **GET** /api/identity_records | List Identity Records


# **createIdentityRecord**
```swift
    open class func createIdentityRecord(postIdentityRecordBankModel: PostIdentityRecordBankModel, completion: @escaping (_ data: IdentityRecordBankModel?, _ error: Error?) -> Void)
```

Create Identity Record

Creates an identity record.  ## Identity Records  Identity Records verify an individual for inclusion on the platform. This know-your-customer (KYC) process is a requirement for individuals to be able to transact. At present, we offer support for Attestation Identity Records.  Once an Identity Record has been submitted, it will be reviewed by our system and transit through a lifecycle before ultimately being `verified` or `failed`. If an Identity Record is ends up `failed`, contextual information as to the reason may be provided on the resource and additional attempts can be made.  ## Attestation Identity Records  An Attestation Identity Record is a confirmation of fact that the Organization has completed their own KYC process and can vouch for its correctness.  Prior to uploading `verified` attestation identity records, an Organization must register their signing public key with their Bank through the create Verification Key API.  To create an attestation identity record, a signed JWT is required as proof that the Customer's identity has been verified by the Organization. When creating the JWT, the Organization must use the RS512 signing algorithm.  The JWT must contain the following headers:  - **alg**: The RS512 algorithm value, e.g., 'RS512'. - **kid**: Set to the guid of the verification key that has been registered for the Bank  The JWT must contain the following claims:  - **iss**: Set to http://api.cybrid.app/banks/{bank_guid} - **aud**: Set to http://api.cybrid.app - **sub**: Set to http://api.cybrid.app/customers/{customer_guid} - **iat**: Set to the time at which the JWT was issued - **exp**: Set to the time after which the JWT expires - **jti**: Set to a unique identifier for the JWT  Example code (python) for generating an Attestation Identity Record JWT token:  ```python # Assumes an RSA private key has been generated (`private_key`), a Verification Key has been created and a `verification_key_guid` is available. # # `customer_guid` should be set to the guid assigned to a Customer that has been created. # `bank_guid` should be set to the guid of your bank #  import uuid  from datetime import datetime, timezone, timedelta from jwcrypto import jwt, jwk from cryptography.hazmat.primitives import serialization from cryptography.hazmat.primitives.serialization import load_pem_private_key  algorithm = 'RS512' issued_at = datetime.now(timezone.utc) expired_at = issued_at + timedelta(days=365)  with open(\"verification_key.pem\", 'rb') as pem_in:   pem_lines = pem_in.read()  private_key = load_pem_private_key(pem_lines, None)  ### DISCLAIMER:- Since NO ENCRYPTION is used in the key storage/formatting. Please DO NOT use this code in production environment. signing_key = jwk.JWK.from_pem(     private_key.private_bytes(         encoding=serialization.Encoding.PEM,         format=serialization.PrivateFormat.PKCS8,         encryption_algorithm=serialization.NoEncryption()     ) ) signing_key.update({\"kid\": verification_key_guid})  attestation_jwt = jwt.JWT(     header={         \"alg\": algorithm,         \"kid\": verification_key_guid     },     claims={         \"iss\": f\"http://api.cybrid.app/banks/{bank_guid}\",         \"aud\": \"http://api.cybrid.app\",         \"sub\": f\"http://api.cybrid.app/customers/{customer_guid}\",         \"iat\": int(issued_at.timestamp()),         \"exp\": int(expired_at.timestamp()),         \"jti\": str(uuid.uuid4())     },     key=signing_key,     algs=[algorithm] ) attestation_jwt.make_signed_token(signing_key)  token = attestation_jwt.serialize(compact=True) print(\"Token is : \", token) ```  ## Attestation State  | State | Description | |-------|-------------| | storing | The Platform is storing the attestation in our private store | | pending | The Platform is verifying the attestation's JWT | | verified | The Platform has verified the attestation and the customer is able to transact | | failed | The Platform was not able to verify the attestation and the customer is not able to transact |    Required scope: **customers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postIdentityRecordBankModel = PostIdentityRecord(customerGuid: "customerGuid_example", type: "type_example", attestationDetails: PostIdentityRecord_attestation_details(token: "token_example")) // PostIdentityRecordBankModel | 

// Create Identity Record
IdentityRecordsAPI.createIdentityRecord(postIdentityRecordBankModel: postIdentityRecordBankModel) { (response, error) in
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
 **postIdentityRecordBankModel** | [**PostIdentityRecordBankModel**](PostIdentityRecordBankModel.md) |  | 

### Return type

[**IdentityRecordBankModel**](IdentityRecordBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentityRecord**
```swift
    open class func getIdentityRecord(identityRecordGuid: String, completion: @escaping (_ data: IdentityRecordBankModel?, _ error: Error?) -> Void)
```

Get Identity Record

Retrieves an identity record.  Required scope: **customers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let identityRecordGuid = "identityRecordGuid_example" // String | Identifier for the identity record.

// Get Identity Record
IdentityRecordsAPI.getIdentityRecord(identityRecordGuid: identityRecordGuid) { (response, error) in
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
 **identityRecordGuid** | **String** | Identifier for the identity record. | 

### Return type

[**IdentityRecordBankModel**](IdentityRecordBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentityRecords**
```swift
    open class func listIdentityRecords(customerGuid: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: IdentityRecordListBankModel?, _ error: Error?) -> Void)
```

List Identity Records

Retrieves a listing of identity records for a bank.  Required scope: **customers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let customerGuid = "customerGuid_example" // String | Comma separated customer identifier to list identity records for. (optional)
let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)

// List Identity Records
IdentityRecordsAPI.listIdentityRecords(customerGuid: customerGuid, page: page, perPage: perPage) { (response, error) in
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
 **customerGuid** | **String** | Comma separated customer identifier to list identity records for. | [optional] 
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 

### Return type

[**IdentityRecordListBankModel**](IdentityRecordListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

