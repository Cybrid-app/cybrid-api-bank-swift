# ComplianceDecisionBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of verification check; one of business_watchlists, business_verification, business_tax_id_verification, business_attested, person_attested, person_tax_id_attested, person_watchlists, person_verification, person_authentication, person_gov_id_verification, person_tax_id_verification, business_associate_gov_id_attested, business_associate_authentication_attested, business_associate_attested, business_associate_tax_id_attested, business_associate_watchlists_attested, external_bank_account_verification, or external_bank_account_attested. | 
**state** | **String** | The state of the verification check; one of passed, failed, expired, or invalidated. | 
**failureCodes** | **[String]** | The reason codes explaining the outcome. | [optional] 
**expiredAt** | **Date** | ISO8601 datetime the compliance decision is expired. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


