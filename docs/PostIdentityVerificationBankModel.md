# PostIdentityVerificationBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of identity verification. | 
**customerGuid** | **String** | The customer&#39;s identifier. Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie. | [optional] 
**expectedBehaviours** | **[String]** | The optional expected behaviour to simulate. | [optional] 
**method** | **String** | The identity verification method. Required when type is counterparty, type is kyc, or type is bank_account. | [optional] 
**counterpartyGuid** | **String** | The counterparty&#39;s identifier. Required when type is counterparty. | [optional] 
**countryCode** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank&#39;s configured country code. Optional when type is kyc and method is id_and_selfie, type is kyc and method is tax_id_and_selfie, or type is kyc and method is business_registration. | [optional] 
**name** | [**PostIdentityVerificationNameBankModel**](PostIdentityVerificationNameBankModel.md) |  | [optional] 
**address** | [**PostIdentityVerificationAddressBankModel**](PostIdentityVerificationAddressBankModel.md) |  | [optional] 
**dateOfBirth** | **Date** | The customer&#39;s date of birth. Required when type is kyc and method is attested or type is kyc and method is attested_id_and_selfie. | [optional] 
**identificationNumbers** | [PostIdentificationNumberBankModel] | The customer&#39;s identification numbers. Required when type is kyc and method is attested, type is kyc and method is attested_business_registration, or type is kyc and method is attested_id_and_selfie. | [optional] 
**aliases** | [PostIdentityVerificationAliasesInnerBankModel] | The aliases of the customer. Optional when type is kyc and method is attested_business_registration. | [optional] 
**phoneNumber** | **String** | The customer&#39;s phone number. Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie. Optional when type is bank_account and method is attested_ownership. | [optional] 
**emailAddress** | **String** | The customer&#39;s email address. Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie. Optional when type is bank_account and method is attested_ownership. | [optional] 
**website** | **String** | The customer&#39;s website. Required when type is kyc and method is attested_business_registration. | [optional] 
**natureOfBusiness** | **String** | The customer&#39;s nature of business. Required when type is kyc and method is attested_business_registration. | [optional] 
**directorCustomerGuids** | **[String]** | The customer guids of the directors of the business Required when type is kyc and method is attested_business_registration. | [optional] 
**ultimateBeneficialOwners** | [PostUltimateBeneficialOwnerBankModel] | The ultimate beneficial owners of the business with 10% or more ownership Required when type is kyc and method is attested_business_registration. | [optional] 
**supportingFileGuids** | **[String]** | File guids supporting the verification Required when type is kyc and method is attested_business_registration or type is kyc and method is attested_id_and_selfie. | [optional] 
**occupation** | **String** | The customer&#39;s occupation. Required when type is kyc and method is attested_id_and_selfie. | [optional] 
**externalBankAccountGuid** | **String** | The external bank account&#39;s identifier. Required when type is bank_account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


