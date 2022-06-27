# PostVerificationKeyBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The verification key&#39;s type. | 
**algorithm** | **String** | The verification key&#39;s algorithm. | 
**publicKey** | **String** | DER encoded public key in Base64 format. | 
**nonce** | **String** | Value signed in the **signature** field. | 
**signature** | **String** | Signature on **nonce** using PKCS1v15 padding and the SHA512 hashing algorithm in Base64 format. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


