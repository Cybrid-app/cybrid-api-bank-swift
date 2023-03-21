# PostIdentityVerificationBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of identity verification. | 
**method** | **String** | The identity verification method. | 
**customerGuid** | **String** | The customer&#39;s identifier. | [optional] 
**countryCode** | **String** | The ISO 3166 country 2-Alpha country the customer is being verified in; required when method is set to &#39;id_and_selfie&#39;. If not present, will default to the Bank&#39;s configured country code. | [optional] 
**name** | [**PostIdentityVerificationNameBankModel**](PostIdentityVerificationNameBankModel.md) |  | [optional] 
**address** | [**PostIdentityVerificationAddressBankModel**](PostIdentityVerificationAddressBankModel.md) |  | [optional] 
**dateOfBirth** | **Date** | The customer&#39;s date of birth; required when method is set to &#39;attested&#39;. | [optional] 
**identificationNumbers** | [PostIdentificationNumberBankModel] | The customer&#39;s identification numbers; required when method is set to &#39;attested&#39;. | [optional] 
**expectedBehaviours** | **[String]** | The optional expected behaviour to simulate. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


