# TransferBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the transfer. | [optional] 
**transferType** | **String** | The type of transfer; one of funding, book, crypto, instant_funding, funding_return, crypto_return, loss_recovery, inter_account, lightning, or instant_funding_return. | [optional] 
**bankGuid** | **String** | The associated bank&#39;s identifier. | [optional] 
**customerGuid** | **String** | The associated customer&#39;s identifier. | [optional] 
**quoteGuid** | **String** | The associated quote&#39;s identifier. | [optional] 
**externalBankAccountGuid** | **String** | The associated external bank account&#39;s identifier. | [optional] 
**asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] 
**side** | **String** | The direction of the quote; one of deposit or withdrawal. | [optional] 
**state** | **String** | The state of the transfer; one of storing, pending, holding, reviewing, completed, or failed. | [optional] 
**failureCode** | **String** | The failure code for failed transfers; one of non_sufficient_funds, refresh_required, party_name_invalid, payment_rail_invalid, compliance_rejection, cancelled, reversed, limit_exceeded, network_fee_too_low, amount_too_low, internal_error, invalid_address, invalid_destination, customer_action_required, external_vendor_error, or payment_request_expired. | [optional] 
**returnCode** | **String** | The return code for reversed transfers | [optional] 
**amount** | **Int** | The actual amount in base units of the asset. | [optional] 
**estimatedAmount** | **Int** | The estimated amount in base units of the asset. | [optional] 
**fee** | **Int** | The fee associated with the transfer. | [optional] 
**estimatedNetworkFee** | **Int** | The estimated network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers. | [optional] 
**networkFee** | **Int** | The actual network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] 
**networkFeeAsset** | **String** | The asset code of the network fee. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] 
**networkFeeLiabilityAmount** | **Int** | The equivalent fiat network fee in base units of network_fee_liability_amount_asset. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] 
**networkFeeLiabilityAmountAsset** | **String** | The fiat asset the network_fee_liability_amount is denominated in. Only present on &#x60;crypto&#x60; transfers that have successfully completed. | [optional] 
**txnHash** | **String** | The hash of the blockchain transaction (deprecated: use identifiers array) | [optional] 
**identifiers** | [TransferIdentifiersInnerBankModel] | Array of identifiers associated with this transfer (transaction hash, wire reference numbers) | [optional] 
**referenceTransferGuid** | **String** | The guid of the related transfer. Only present on return type transfers. | [optional] 
**sourceAccount** | [**TransferSourceAccountBankModel**](TransferSourceAccountBankModel.md) |  | [optional] 
**sourceParticipants** | [TransferParticipantBankModel] | The participants in the source account. | [optional] 
**destinationAccount** | [**TransferDestinationAccountBankModel**](TransferDestinationAccountBankModel.md) |  | [optional] 
**destinationParticipants** | [TransferParticipantBankModel] | The participants in the source account. | [optional] 
**depositAddressGuid** | **String** | The guid of the deposit address. Only present on crypto deposits. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**holdDetails** | [**TransferHoldDetailsBankModel**](TransferHoldDetailsBankModel.md) |  | [optional] 
**transferDetails** | [**AnyCodableBankModel**](.md) | The raw details on the transfer from the bank. | [optional] 
**paymentRail** | **String** | The rail the payment was done on. One of: ach, eft, wire, rtp, etransfer | [optional] 
**externalId** | **String** | The external identifier for the transfer. | [optional] 
**labels** | **[String]** | The labels associated with the transfer. | [optional] 
**entries** | [TransferEntryBankModel] | Transfer entries associated with the batch transfer | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


