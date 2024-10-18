# PostQuoteBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productType** | **String** | The type of product the quote is for. | [optional] [default to .trading]
**bankGuid** | **String** | The unique identifier for the bank. | [optional] 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**receiveAmount** | **Int** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell for trade quotes. | [optional] 
**deliverAmount** | **Int** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell for trade quotes. | [optional] 
**asset** | **String** | The asset code the quote was requested for. Required when product_type is lightning_transfer, product_type is book_transfer, product_type is funding, product_type is crypto_transfer, or product_type is inter_account. | [optional] 
**networkAddress** | **String** | The network address to pay the invoice to. Required when product_type is lightning_transfer. | [optional] 
**fees** | [PostFeeBankModel] | The custom fees associated with the quote Optional when product_type is lightning_transfer, product_type is funding, product_type is trading, product_type is crypto_transfer, or product_type is trading_exit. | [optional] 
**side** | **String** | The direction for trade quotes: either &#39;buy&#39; or &#39;sell&#39;. The direction for funding quotes: either &#39;deposit&#39; or &#39;withdrawal&#39;. The direction for crypto transfer quotes: &#39;withdrawal&#39;. Book transfers do not require a side. They are all &#39;deposit&#39;s.  Required when product_type is funding, product_type is trading, or product_type is crypto_transfer. | [optional] 
**symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. See the Symbols API for a complete list of cryptocurrencies supported.  Required when product_type is trading. | [optional] 
**destinationAccounts** | [PostQuoteEntryBankModel] | Destination accounts for batch transactions Optional when product_type is crypto_transfer. | [optional] 
**referenceTradeGuid** | **String** | The guid of the related trade. Only present on &#x60;exit&#x60; trades. Required when product_type is trading_exit. | [optional] 
**sourceAccountGuid** | **String** | The source account&#39;s identifier. Required when product_type is inter_account. | [optional] 
**destinationAccountGuid** | **String** | The destination account&#39;s identifier. Required when product_type is inter_account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


