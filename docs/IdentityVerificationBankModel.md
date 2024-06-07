# IdentityVerificationBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] 
**type** | **String** | The identity verification type; one of kyc, bank_account, or counterparty. | [optional] 
**method** | **String** | The identity verification method; one of business_registration, id_and_selfie, tax_id_and_selfie, attested, attested_ownership, account_ownership, plaid_identity_match, document_submission, or watchlists. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**customerGuid** | **String** | The identity verification&#39;s identifier. | [optional] 
**counterpartyGuid** | **String** | The identity verification&#39;s identifier. | [optional] 
**externalBankAccountGuid** | **String** | The identity verification&#39;s identifier. | [optional] 
**state** | **String** | The identity verification state; one of storing, waiting, pending, reviewing, expired, or completed. | [optional] 
**outcome** | **String** | The identity verification outcome; one of passed or failed. | [optional] 
**failureCodes** | **[String]** | The reason codes explaining the outcome. | [optional] 
**complianceDecisions** | [ComplianceDecisionBankModel] | The compliance decisions associated with the identity verification. | [optional] 
**verificationChecks** | [ComplianceDecisionBankModel] | Deprecated; use compliance_decisions instead. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


