# PostPlanDestinationAccountBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | The destination account&#39;s identifier. | 
**amount** | **Int** | The amount to be delivered in base units of the source account currency | [optional] 
**paymentRail** | **String** | The desired payment rail to use to initiate a fiat transfer to the destination account. | [optional] 
**securityQuestion** | **String** | The security question for an Interac e-Transfer withdrawal or conversion. Only accepted for an e-transfer rail destination; must be paired with security_answer. | [optional] 
**securityAnswer** | **String** | The security answer the recipient must provide to claim an Interac e-Transfer. Only accepted for an e-transfer rail destination; must be paired with security_question. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


