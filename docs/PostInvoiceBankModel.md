# PostInvoiceBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset** | **String** | The asset code the customer will receive the funds in. | 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**receiveAmount** | **Int** | The amount to be received in base units of the asset, i.e., the amount the customer will receive after fees. ONLY one of receive_amount or deliver_amount is required. | [optional] 
**deliverAmount** | **Int** | The amount to be delivered in base units of the asset, i.e., the amount the customer will receive before fees. ONLY one of receive_amount or deliver_amount is required. | [optional] 
**labels** | **[String]** | The labels associated with the customer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


