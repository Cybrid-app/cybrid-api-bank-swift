# CounterpartyBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the counterparty. | [optional] 
**type** | **String** | The counterparty type; one of business or individual. | [optional] 
**bankGuid** | **String** | Auto-generated unique identifier for the counterparty&#39;s bank. | [optional] 
**customerGuid** | **String** | Auto-generated unique identifier for the counterparty&#39;s customer. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**state** | **String** | The counterparty state; one of storing, unverified, verified, or rejected. | [optional] 
**name** | [**CounterpartyNameBankModel**](CounterpartyNameBankModel.md) |  | [optional] 
**address** | [**CounterpartyAddressBankModel**](CounterpartyAddressBankModel.md) |  | [optional] 
**aliases** | [CounterpartyAliasesInnerBankModel] | The counterparty&#39;s aliases. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] 
**dateOfBirth** | **Date** | The counterparty&#39;s DOB. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] 
**labels** | **[String]** | The labels associated with the counterparty. | [optional] 
**complianceDecisions** | [ComplianceDecisionBankModel] | The compliance decisions associated with the counterparty. | [optional] 
**verificationChecks** | [ComplianceDecisionBankModel] | Deprecated; use compliance_decisions instead. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


