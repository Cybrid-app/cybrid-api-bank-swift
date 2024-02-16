# InvoiceBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the payment instruction. | [optional] 
**customerGuid** | **String** | The customer identifier. | [optional] 
**accountGuid** | **String** | The account payment will ultimately be received into. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**invoiceType** | **String** | The type of invoice; one of lightning. | [optional] 
**asset** | **String** | The asset code the customer will receive the funds in. | [optional] 
**receiveAmount** | **Int** | The amount to be received in base units of the asset, i.e., the amount the customer will receive after fees. ONLY one of receive_amount or deliver_amount is required. | [optional] 
**deliverAmount** | **Int** | The amount to be delivered in base units of the asset, i.e., the amount the customer will receive before fees. ONLY one of receive_amount or deliver_amount is required. | [optional] 
**fee** | **Int** | The fee associated with this invoice in base units of the asset. | [optional] 
**state** | **String** | The state of the invoice; one of storing, unpaid, cancelling, cancelled, settling, or paid. | [optional] 
**labels** | **[String]** | The labels associated with the invoice. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


