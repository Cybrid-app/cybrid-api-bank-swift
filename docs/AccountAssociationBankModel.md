# AccountAssociationBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the transfer account. | 
**type** | **String** | The type of transfer account; one of trading or external_bank_account. | 
**bankGuid** | **String** | The account&#39;s bank identifier. | [optional] 
**customerGuid** | **String** | The account&#39;s customer identifier. | [optional] 
**counterpartyGuid** | **String** | The account&#39;s counterparty identifier. | [optional] 
**asset** | **String** | The account asset, e.g., USD. | 
**requestedAmount** | **Int** | The requested amount in base units intended to transfer from or to the account. | [optional] 
**quotedAmount** | **Int** | The quoted amount in base units to transfer from or to the account. | [optional] 
**executedAmount** | **Int** | The executed amount in base units transferred from or to the account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


