# PlanBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the entity. | 
**type** | **String** | The type of product the plan is for; one of remittance. | 
**bankGuid** | **String** | The unique identifier for the bank. | [optional] 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | 
**expiresAt** | **Date** | ISO8601 datetime the plan will expire at. | 
**state** | **String** | The state of the plan; one of storing, planning, completed, or failed. | 
**failureCode** | **String** | The failure code for failed plans. | [optional] 
**sourceAccount** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  | 
**destinationAccount** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  | 
**stages** | [StageBankModel] | The stages of the plan. | 
**fees** | [FeeAssociationBankModel] | The fees associated with the plan. | 
**travelRuleInfo** | [**PlanTravelRuleInfoBankModel**](PlanTravelRuleInfoBankModel.md) |  | 
**purposeOfTransaction** | **String** | The purpose of transaction for the plan. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


