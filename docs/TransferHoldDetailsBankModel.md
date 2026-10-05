# TransferHoldDetailsBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**applicableTypes** | **[String]** | The list of hold types that are applicable for the transfer; one of administrative or non_administrative. | [optional] 
**kind** | **String** | The kind of hold; one of settlement or dispatch. A settlement hold keeps landed deposit funds unavailable; a dispatch hold keeps withdrawal funds from leaving until it ends. Null until a hold is recorded. | [optional] 
**duration** | **Int** | The approximate time (in seconds) that the transfer will be held for. | [optional] 
**startedAt** | **Date** | ISO8601 datetime the transfer hold was started at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


