# PostIdentityVerificationBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of identity verification. | 
**customerGuid** | **String** | The customer&#39;s identifier. Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] 
**expectedBehaviours** | **[String]** | The optional expected behaviour to simulate. | [optional] 
**method** | **String** | The identity verification method. Required when type is counterparty, type is kyc, or type is bank_account. | [optional] 
**counterpartyGuid** | **String** | The counterparty&#39;s identifier. Required when type is counterparty. | [optional] 
**countryCode** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank&#39;s configured country code. Optional when type is kyc and method is id_and_selfie, type is kyc and method is tax_id_and_selfie, or type is kyc and method is business_registration. | [optional] 
**requireTaxId** | **Bool** | Whether the collection of the tax id is required during identity verification. This will default to SSN in USA and SIN in Canada. It&#39;s not used elsewhere. Optional when type is kyc and method is id_and_selfie. | [optional] [default to false]
**name** | [**PostIdentityVerificationNameBankModel**](PostIdentityVerificationNameBankModel.md) |  | [optional] 
**address** | [**PostIdentityVerificationAddressBankModel**](PostIdentityVerificationAddressBankModel.md) |  | [optional] 
**dateOfBirth** | **Date** | The customer&#39;s date of birth. Required when type is kyc and method is attested, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] 
**identificationNumbers** | [PostIdentificationNumberBankModel] | The customer&#39;s identification numbers. Required when type is kyc and method is attested, type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] 
**aliases** | [PostIdentityVerificationAliasesInnerBankModel] | The aliases of the customer. Optional when type is kyc and method is attested_business_registration or type is kyc and method is watchlists. | [optional] 
**phoneNumber** | **String** | The customer&#39;s phone number. Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. Optional when type is bank_account and method is attested_ownership. | [optional] 
**emailAddress** | **String** | The customer&#39;s email address. Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. Optional when type is bank_account and method is attested_ownership. | [optional] 
**website** | **String** | The customer&#39;s website. Required when type is kyc and method is attested_business_registration. | [optional] 
**natureOfBusiness** | **String** | The customer&#39;s nature of business. Required when type is kyc and method is attested_business_registration. | [optional] 
**directorCustomerGuids** | **[String]** | The customer guids of the directors of the business Required when type is kyc and method is attested_business_registration. | [optional] 
**ultimateBeneficialOwners** | [PostUltimateBeneficialOwnerBankModel] | The ultimate beneficial owners of the business with 10% or more ownership Required when type is kyc and method is attested_business_registration. | [optional] 
**supportingFileGuids** | **[String]** | File guids supporting the verification Required when type is kyc and method is attested_business_registration, type is kyc and method is attested_id_and_selfie, or type is kyc and method is attested_business_associate. | [optional] 
**registeredAddress** | [**PostIdentityVerificationRegisteredAddressBankModel**](PostIdentityVerificationRegisteredAddressBankModel.md) |  | [optional] 
**businessIndustry** | **String** | The industry the business operates in. Required for attested business registration V3. e.g. &#39;Crypto / Digital Assets / Blockchain&#39;, &#39;Education&#39;, &#39;Gaming&#39;, &#39;Healthcare / Hospitality&#39;, &#39;Lending / Investments&#39;, &#39;Retail / E-Commerce&#39;, etc. Optional when type is kyc and method is attested_business_registration. | [optional] 
**businessFundsSource** | **String** | The source of business funds. Required for attested business registration V3. e.g. &#39;Funds from individual customers&#39;, &#39;Funds from business customers&#39;, &#39;Funds from both individual and business customers&#39;, etc. Optional when type is kyc and method is attested_business_registration. | [optional] 
**businessFundsDestination** | **String** | The destination of business funds. Required for attested business registration V3. e.g. &#39;To your business account (bank or wallet)&#39;, &#39;To vendors or suppliers&#39;, &#39;To employees or contractors&#39;, &#39;To sellers or merchants&#39;, &#39;Bulk payments or payouts&#39;, etc. Optional when type is kyc and method is attested_business_registration. | [optional] 
**occupation** | **String** | The customer&#39;s occupation. Required when type is kyc and method is attested_business_associate. Optional when type is kyc and method is attested_id_and_selfie. | [optional] 
**biometricsVerified** | **Bool** | Whether biometrics have been verified Required when type is kyc and method is attested_business_associate. | [optional] 
**externalBankAccountGuid** | **String** | The external bank account&#39;s identifier. Required when type is bank_account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


