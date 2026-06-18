# PostPlanBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of product the plan is for. | 
**bankGuid** | **String** | The unique identifier for the bank. | [optional] 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**sourceAccount** | [**PostPlanSourceAccountBankModel**](PostPlanSourceAccountBankModel.md) |  | 
**destinationAccount** | [**PostPlanDestinationAccountBankModel**](PostPlanDestinationAccountBankModel.md) |  | 
**travelRuleInfo** | [**PostPlanTravelRuleInfoBankModel**](PostPlanTravelRuleInfoBankModel.md) |  | [optional] 
**purposeOfTransaction** | **String** | The purpose of transaction for the plan. | [optional] 
**labels** | **[String]** | The labels associated with the plan. | [optional] 
**supportingDocuments** | [PostSupportingDocumentBankModel] | Supporting documents to attach to the plan. Optional when type is remittance. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


