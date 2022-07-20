# VerificationKeysAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVerificationKey**](VerificationKeysAPI.md#createverificationkey) | **POST** /api/bank_verification_keys | Create VerificationKey
[**getVerificationKey**](VerificationKeysAPI.md#getverificationkey) | **GET** /api/bank_verification_keys/{verification_key_guid} | Get VerificationKey
[**listVerificationKeys**](VerificationKeysAPI.md#listverificationkeys) | **GET** /api/bank_verification_keys | Get Verification Keys list


# **createVerificationKey**
```swift
    open class func createVerificationKey(postVerificationKeyBankModel: PostVerificationKeyBankModel, completion: @escaping (_ data: VerificationKeyBankModel?, _ error: Error?) -> Void)
```

Create VerificationKey

Creates a verification key.   Example code (python) for generating a Verification Key  ```python import base64  from cryptography.hazmat.primitives import hashes from cryptography.hazmat.primitives import serialization from cryptography.hazmat.primitives.asymmetric import padding from cryptography.hazmat.primitives.asymmetric import rsa  nonce = \"wen moon\" private_key = rsa.generate_private_key(public_exponent=65537, key_size=2048) signature = base64.b64encode(private_key.sign(     data=nonce.encode('ascii'), padding=padding.PKCS1v15(), algorithm=hashes.SHA512())).decode('ascii') public_key = base64.b64encode(private_key.public_key().public_bytes(     encoding=serialization.Encoding.DER, format=serialization.PublicFormat.SubjectPublicKeyInfo)).decode('ascii')  ### DISCLAIMER:- Since NO ENCRYPTION is used in the key storage/formatting. Please DO NOT use this code in production environment. private_pem = private_key.private_bytes(encoding=serialization.Encoding.PEM, format=serialization.PrivateFormat.TraditionalOpenSSL,        encryption_algorithm=serialization.NoEncryption())  ## Store the private_key in a file verification_key.pem with open (\"verification_key.pem\", 'wb') as pem_out:    pem_out.write(private_pem)    pem_out.close()  print(\"Public Key: \", public_key) print(\"Signature: \", signature)  ````  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the verification in our private key store | | pending | The Platform is verifying the verification key's signature | | verified | The Platform has verified the verification key's signature and the key can be used | | failed | The Platform was not able to verify the verification key's signature and the key cannot be used |    Required scope: **banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postVerificationKeyBankModel = PostVerificationKey(type: "type_example", algorithm: "algorithm_example", publicKey: "publicKey_example", nonce: "nonce_example", signature: "signature_example") // PostVerificationKeyBankModel | 

// Create VerificationKey
VerificationKeysAPI.createVerificationKey(postVerificationKeyBankModel: postVerificationKeyBankModel) { (response, error) in
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
 **postVerificationKeyBankModel** | [**PostVerificationKeyBankModel**](PostVerificationKeyBankModel.md) |  | 

### Return type

[**VerificationKeyBankModel**](VerificationKeyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVerificationKey**
```swift
    open class func getVerificationKey(verificationKeyGuid: String, completion: @escaping (_ data: VerificationKeyBankModel?, _ error: Error?) -> Void)
```

Get VerificationKey

Retrieves a verification key.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let verificationKeyGuid = "verificationKeyGuid_example" // String | Identifier for the verification key.

// Get VerificationKey
VerificationKeysAPI.getVerificationKey(verificationKeyGuid: verificationKeyGuid) { (response, error) in
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
 **verificationKeyGuid** | **String** | Identifier for the verification key. | 

### Return type

[**VerificationKeyBankModel**](VerificationKeyBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVerificationKeys**
```swift
    open class func listVerificationKeys(page: String? = nil, perPage: String? = nil, completion: @escaping (_ data: VerificationKeyListBankModel?, _ error: Error?) -> Void)
```

Get Verification Keys list

Retrieves a listing of verification keys of a bank.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = "page_example" // String |  (optional)
let perPage = "perPage_example" // String |  (optional)

// Get Verification Keys list
VerificationKeysAPI.listVerificationKeys(page: page, perPage: perPage) { (response, error) in
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
 **page** | **String** |  | [optional] 
 **perPage** | **String** |  | [optional] 

### Return type

[**VerificationKeyListBankModel**](VerificationKeyListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

