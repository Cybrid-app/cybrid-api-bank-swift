# StageBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | The unique identifier for the stage. | 
**type** | **String** | The type of stage; one of payout. | 
**state** | **String** | The state of the stage; one of storing, planning, planned, executing, completed, or failed. | 
**failureCode** | **String** | The failure code for failed stages. | [optional] 
**createdAt** | **Date** | The ISO8601 datetime the stage was created at. | 
**updatedAt** | **Date** | The ISO8601 datetime the stage was last updated at. | 
**sourceAccount** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  | 
**destinationAccount** | [**AccountAssociationBankModel**](AccountAssociationBankModel.md) |  | 
**fees** | [FeeAssociationBankModel] | The fees associated with the stage. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


