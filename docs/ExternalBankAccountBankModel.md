# ExternalBankAccountBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the account. | [optional] 
**name** | **String** | The name of the account. | [optional] 
**asset** | **String** | The asset code. | [optional] 
**accountKind** | **String** | The type of account. | [optional] 
**environment** | **String** | The environment that the external bank account is operating in. | [optional] 
**bankGuid** | **String** | The bank identifier. | [optional] 
**customerGuid** | **String** | The customer identifier. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the exchange was created at. | [optional] 
**plaidInstitutionId** | **String** | The Plaid institution ID for the account. | [optional] 
**plaidAccountMask** | **String** | The account number mask for the account. | [optional] 
**plaidAccountName** | **String** | The name for the account. | [optional] 
**state** | **String** | The state of the external bank account. | [optional] 
**failureCode** | **String** | The failure code for failed transfers. | [optional] 
**balanceUpdatedAt** | **Date** | The timestamp that the balance information was last updated at. | [optional] 
**balances** | [**ExternalBankAccountBalancesBankModel**](ExternalBankAccountBalancesBankModel.md) |  | [optional] 
**pii** | [ExternalBankAccountPiiInnerBankModel] | The account holder information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


