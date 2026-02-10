# ExecutionBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the quote. | 
**type** | **String** | The type of product the plan is for; one of remittance. | 
**planGuid** | **String** | The unique identifier for the plan. | 
**bankGuid** | **String** | The unique identifier for the bank. | [optional] 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | 
**state** | **String** | The state of the execution; one of storing, executing, completed, or failed. | 
**failureCode** | **String** | The failure code for failed executions. | [optional] 
**sourceAccount** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  | 
**destinationAccount** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  | 
**stages** | [StageBankModel] | The stages of the execution. | 
**fees** | [FeeAssociationBankModel] | The fees associated with the execution. | 
**travelRuleInfo** | [**ExecutionTravelRuleInfoBankModel**](ExecutionTravelRuleInfoBankModel.md) |  | 
**purposeOfTransaction** | **String** | The purpose of transaction for the execution. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


