# PostTransferBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quoteGuid** | **String** | The associated quote&#39;s identifier. | 
**transferType** | **String** | The type of transfer. | 
**sourceAccountGuid** | **String** | The source account&#39;s identifier. Required for book transfers. | [optional] 
**destinationAccountGuid** | **String** | The destination account&#39;s identifier. Required for book transfers. | [optional] 
**externalWalletGuid** | **String** | The customer&#39;s external wallet&#39;s identifier. | [optional] 
**externalBankAccountGuid** | **String** | The customer&#39;s &#39;plaid&#39; or &#39;plaid_processor_token&#39; external bank account&#39;s identifier. | [optional] 
**expectedError** | **String** | The optional expected error to simulate transfer failure. | [optional] 
**labels** | **[String]** | The labels associated with the transfer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


