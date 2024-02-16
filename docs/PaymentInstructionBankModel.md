# PaymentInstructionBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the payment instruction. | [optional] 
**customerGuid** | **String** | The customer identifier. | [optional] 
**invoiceGuid** | **String** | The invoice identifier. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**expiredAt** | **Date** | ISO8601 datetime the instructions expired at. | [optional] 
**networkAddress** | **String** | The network address to pay the invoice to. | [optional] 
**expectedPaymentAsset** | **String** | The asset the payor must pay the invoice in, e.g., BTC. | [optional] 
**expectedPaymentAmount** | **Int** | The amount to be paid in base units of expected_payment_asset. | [optional] 
**state** | **String** | The state of the payment instruction; one of storing, created, or expired. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


