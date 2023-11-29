# DepositBankAccountBankModel

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
**state** | **String** | The state of the address. | [optional] 
**uniqueMemoId** | **String** | The unique memo identifier for the address. This is used to identify the recipient when sending funds to the account. This value MUST be included in all wire transfers to this account. | [optional] 
**counterpartyName** | **String** | The name of the account holder. | [optional] 
**counterpartyAddress** | [**DepositBankAccountCounterpartyAddressBankModel**](DepositBankAccountCounterpartyAddressBankModel.md) |  | [optional] 
**accountDetails** | [DepositBankAccountAccountDetailsInnerBankModel] | The account details for the bank account. | [optional] 
**routingDetails** | [DepositBankAccountRoutingDetailsInnerBankModel] | The account details for the bank account. | [optional] 
**labels** | **[String]** | The labels associated with the address. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

