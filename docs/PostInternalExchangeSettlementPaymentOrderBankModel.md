# PostInternalExchangeSettlementPaymentOrderBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeSettlementGuid** | **String** | The identifier of the exchange settlement that this payment is associated with. | 
**exchangeSettlementObligationGuid** | **String** | The identifier of the exchange settlement obligation that this payment is associated with. | 
**sequenceNumber** | **Int** | The sequence number of the payment order | 
**paymentAmount** | **Int** | The amount expected to be received as part of this payment. | 
**expectedState** | **String** | The expected state of the underlying money transfer for the payment order (sandbox only) | [optional] 
**internalAccountGuid** | **String** | The identifier of the internal account that is expected to originate the payment. | 
**internalAccountType** | **String** | The type of the internal account that is expected to originate the payment. | 
**externalAccountGuid** | **String** | The identifier of the external account that is expected to receive the payment. | 
**externalAccountType** | **String** | The type of the external account that is expected to receive the payment. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


