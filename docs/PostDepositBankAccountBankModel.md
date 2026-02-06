# PostDepositBankAccountBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The account type. To generate deposit bank accounts with their own unique account number set this to \&quot;main\&quot;. To generate deposit bank accounts with the same account number as the parent deposit bank account set this to \&quot;sub_account\&quot;. This setting will only generate a unique identifier for the deposit bank and will not result in a unique account number being generated. \&quot;sub_account\&quot; is only  available for customer-level deposit bank accounts. | 
**accountGuid** | **String** | The fiat or reserve account guid. | 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**parentDepositBankAccountGuid** | **String** | The unique identifier for the bank-level deposit bank account. This is only required for sub-accounts. Required when type is sub_account. | [optional] 
**labels** | **[String]** | The labels associated with the bank account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


