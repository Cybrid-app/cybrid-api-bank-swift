# PostTransferBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quoteGuid** | **String** | The associated quote&#39;s identifier. | 
**transferType** | **String** | The type of transfer. | 
**customerGuid** | **String** | The customer&#39;s identifier. | [optional] 
**fiatAccountGuid** | **String** | The identifier for the fiat account to use for the transfer. Required if the customer or bank has multiple fiat accounts. Only valid for funding transfers. | [optional] 
**customerFiatAccountGuid** | **String** | The identifier for the fiat account to use for the transfer. Required if the customer has multiple fiat accounts. Only valid for instant funding and lightning transfers. | [optional] 
**bankFiatAccountGuid** | **String** | The identifier for the fiat account to use for the transfer. Required if the bank has multiple fiat accounts. Only valid for instant funding and lightning transfers. | [optional] 
**sourceAccountGuid** | **String** | The source account&#39;s identifier. Required for book transfers. | [optional] 
**sourceParticipants** | [PostTransferParticipantBankModel] | The source participants for the transfer. | [optional] 
**destinationAccountGuid** | **String** | The destination account&#39;s identifier. Required for book transfers. | [optional] 
**destinationParticipants** | [PostTransferParticipantBankModel] | The destination participants for the transfer. | [optional] 
**externalWalletGuid** | **String** | The customer&#39;s external wallet&#39;s identifier. | [optional] 
**externalBankAccountGuid** | **String** | The customer&#39;s &#39;plaid&#39; or &#39;plaid_processor_token&#39; external bank account&#39;s identifier. | [optional] 
**networkFeeAccountGuid** | **String** | The network fee account&#39;s identifier. Required for network fee transfers. Must be the identifier for the customer&#39;s or bank&#39;s fiat account. For customer&#39;s to pay the network fees, include the customer&#39;s fiat account guid. For bank&#39;s to pay the network fees, include the bank&#39;s fiat account guid. | [optional] 
**paymentRail** | **String** | The desired payment rail to initiate the transfer for. Valid values are: ach, eft, wire. Valid for funding transfers only. | [optional] 
**beneficiaryMemo** | **String** | The memo to send to the counterparty. | [optional] 
**sendAsDepositBankAccountGuid** | **String** | The deposit bank account&#39;s identifier. Optional for funding transfers. Only valid for withdrawals. The deposit bank account must be owned by the customer or bank initiating the transfer. | [optional] 
**labels** | **[String]** | The labels associated with the transfer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


