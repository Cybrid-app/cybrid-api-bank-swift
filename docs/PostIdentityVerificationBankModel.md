# PostIdentityVerificationBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of identity verification. | 
**customerGuid** | **String** | The customer&#39;s identifier. | [optional] 
**expectedBehaviours** | **[String]** | The optional expected behaviour to simulate. | [optional] 
**method** | **String** | The identity verification method. Required when type is counterparty, type is kyc, or type is bank_account. | [optional] 
**counterpartyGuid** | **String** | The counterparty&#39;s identifier. Required when type is counterparty. | [optional] 
**countryCode** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank&#39;s configured country code. Optional when type is kyc and method is id_and_selfie, type is kyc and method is tax_id_and_selfie, or type is kyc and method is business_registration. | [optional] 
**name** | [**PostIdentityVerificationNameBankModel**](PostIdentityVerificationNameBankModel.md) |  | [optional] 
**address** | [**PostIdentityVerificationAddressBankModel**](PostIdentityVerificationAddressBankModel.md) |  | [optional] 
**dateOfBirth** | **Date** | The customer&#39;s date of birth. Required when type is kyc and method is attested. | [optional] 
**identificationNumbers** | [PostIdentificationNumberBankModel] | The customer&#39;s identification numbers. Required when type is kyc and method is attested. | [optional] 
**externalBankAccountGuid** | **String** | The external bank account&#39;s identifier. Required when type is bank_account. | [optional] 
**phoneNumber** | **String** | The customer&#39;s phone number. Optional when type is bank_account and method is attested_ownership. | [optional] 
**emailAddress** | **String** | The customer&#39;s email address. Optional when type is bank_account and method is attested_ownership. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


