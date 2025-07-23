# DepositAddressBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the identity verification. | [optional] 
**bankGuid** | **String** | The address&#39; bank identifier. | [optional] 
**customerGuid** | **String** | The address&#39; customer identifier. | [optional] 
**accountGuid** | **String** | The address&#39; account identifier. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] 
**state** | **String** | The state of the address; one of storing, created, or failed. | [optional] 
**address** | **String** | The blockchain address. | [optional] 
**format** | **String** | The blockchain address format; one of standard or legacy. | [optional] 
**tag** | **String** | The blockchain address tag. | [optional] 
**labels** | **[String]** | The labels associated with the address. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


