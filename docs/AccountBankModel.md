# AccountBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The account type; one of trading, fee, fiat, gas, reserve, or invoice_operations. | [optional] 
**guid** | **String** | Auto-generated unique identifier for the account. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**asset** | **String** | The asset code. | [optional] 
**name** | **String** | The name of the account. | [optional] 
**bankGuid** | **String** | The bank identifier associated with the account. | [optional] 
**customerGuid** | **String** | The customer identifier associated with the account. | [optional] 
**platformBalance** | **Int** | The amount of funds that are in the account, in base units of the asset. | [optional] 
**platformAvailable** | **Int** | The amount of funds that are in the account, in base units of the asset, that are available for use on the platform. | [optional] 
**state** | **String** | The state of the account; one of storing or created. | [optional] 
**labels** | **[String]** | The labels associated with the account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


