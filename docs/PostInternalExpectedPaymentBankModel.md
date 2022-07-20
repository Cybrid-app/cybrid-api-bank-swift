# PostInternalExpectedPaymentBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentKind** | **String** | The kind of expected payment. | 
**nonce** | **String** | The sequence number of the expected payment | 
**paymentAmount** | **String** | The amount expected to be received as part of this payment. | 
**internalAccountGuid** | **String** | The identifier of the internal account that is expected to originate the payment. | 
**internalAccountType** | **String** | The type of the internal account that is expected to originate the payment. | 
**exchangeSettlementGuid** | **String** | The identifier of the exchange settlement that this payment is associated with. | [optional] 
**exchangeSettlementObligationGuid** | **String** | The identifier of the exchange settlement obligation that this payment is associated with. | [optional] 
**environment** | **String** | The environment the payment is expeged in. | [optional] 
**creditAccountGuid** | **String** | The identifier of the credit platform account the payment should be credited to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


