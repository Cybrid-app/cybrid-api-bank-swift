# PostExternalBankAccountBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the account. | 
**accountKind** | **String** | The account type | 
**customerGuid** | **String** | The customer identifier. | [optional] 
**asset** | **String** | The asset code. If not set will try and default to the Bank&#39;s configured fiat asset. | [optional] 
**plaidPublicToken** | **String** | The public token for the account. Required for &#39;plaid&#39; accounts. Required when account_kind is plaid. | [optional] 
**plaidAccountId** | **String** | The account identifier in plaid. Required for &#39;plaid&#39; accounts. Required when account_kind is plaid. | [optional] 
**plaidProcessorToken** | **String** | The Plaid processor token used to access the account. Required when account_kind is plaid_processor_token. | [optional] 
**plaidInstitutionId** | **String** | Plaid&#39;s institution ID for the account&#39;s institution. Required when account_kind is plaid_processor_token. | [optional] 
**plaidAccountMask** | **String** | The account mask for the account. Required when account_kind is plaid_processor_token. | [optional] 
**plaidAccountName** | **String** | The name of the account. Required when account_kind is plaid_processor_token. | [optional] 
**counterpartyGuid** | **String** | The counterparty identifier. Optional when account_kind is raw_routing_details. | [optional] 
**counterpartyBankAccount** | [**PostExternalBankAccountCounterpartyBankAccountBankModel**](PostExternalBankAccountCounterpartyBankAccountBankModel.md) |  | [optional] 
**counterpartyName** | [**PostExternalBankAccountCounterpartyNameBankModel**](PostExternalBankAccountCounterpartyNameBankModel.md) |  | [optional] 
**counterpartyAddress** | [**PostExternalBankAccountCounterpartyAddressBankModel**](PostExternalBankAccountCounterpartyAddressBankModel.md) |  | [optional] 
**counterpartyEmailAddress** | **String** | The counterparty&#39;s email address on their checking account. Optional when account_kind is raw_routing_details and counterparty_guid is not present. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


