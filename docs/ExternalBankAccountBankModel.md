# ExternalBankAccountBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the account. | [optional] 
**name** | **String** | The name of the account. | [optional] 
**asset** | **String** | The asset code. | [optional] 
**accountKind** | **String** | The type of account; one of plaid, plaid_processor_token, or raw_routing_details. | [optional] 
**environment** | **String** | The environment that the external bank account is operating in; one of sandbox or production. | [optional] 
**bankGuid** | **String** | The bank identifier. | [optional] 
**customerGuid** | **String** | The customer identifier. | [optional] 
**counterpartyGuid** | **String** | The counterparty identifier. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**plaidInstitutionId** | **String** | The Plaid institution ID for the account. | [optional] 
**plaidAccountMask** | **String** | The account number mask for the account. | [optional] 
**plaidAccountName** | **String** | The name for the account. | [optional] 
**state** | **String** | The state of the external bank account; one of storing, completed, failed, refresh_required, unverified, deleting, or deleted. | [optional] 
**failureCode** | **String** | The failure code for failed transfers. | [optional] 
**balanceUpdatedAt** | **Date** | The timestamp that the balance information was last updated at. | [optional] 
**balances** | [**ExternalBankAccountBalancesBankModel**](ExternalBankAccountBalancesBankModel.md) |  | [optional] 
**pii** | [ExternalBankAccountPiiInnerBankModel] | The account holder information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


