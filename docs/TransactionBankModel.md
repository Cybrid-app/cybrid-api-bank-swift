# TransactionBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountGuid** | **String** | The unique identifier for the platform account. | 
**amount** | **Int** | The transaction amount in base units. | 
**asset** | **String** | The asset code, e.g., USD. | 
**bankGuid** | **String** | The unique identifier for the bank. | 
**customerGuid** | **String** | The unique identifier for the customer. Absent for bank-owned accounts. | [optional] 
**direction** | **String** | The direction of the transaction; one of credit or debit. | 
**category** | **String** | The type of ledger line item, e.g., principal or fee. | [optional] 
**resource** | [**TransactionResourceBankModel**](TransactionResourceBankModel.md) |  | [optional] 
**posted** | **Bool** | Whether the transaction has posted. | 
**balance** | [**BalanceBankModel**](BalanceBankModel.md) |  | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


