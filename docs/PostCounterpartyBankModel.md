# PostCounterpartyBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The counterparty&#39;s type. | 
**customerGuid** | **String** | The owning customer&#39;s identifier. | [optional] 
**address** | [**PostCounterpartyAddressBankModel**](PostCounterpartyAddressBankModel.md) |  | 
**name** | [**PostCounterpartyNameBankModel**](PostCounterpartyNameBankModel.md) |  | [optional] 
**aliases** | [PostCounterpartyAliasesInnerBankModel] | The aliases of the counterparty. Optional when type is business. | [optional] 
**dateOfBirth** | **Date** | The counterparty&#39;s date of birth. Optional when type is individual. | [optional] 
**emailAddress** | **String** | The counterparty&#39;s email address. | [optional] 
**identificationNumbers** | [PostIdentificationNumberBankModel] | The counterparty&#39;s identification numbers. | [optional] 
**labels** | **[String]** | The labels associated with the counterparty. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


