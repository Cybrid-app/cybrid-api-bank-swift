# QuoteBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the quote. | [optional] 
**productType** | **String** | The type of product the quote is for. | [optional] 
**bankGuid** | **String** | The unique identifier for the bank. | [optional] 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**symbol** | **String** | Symbol the quote was requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. Populated for trade quotes. | [optional] 
**side** | **String** | The direction of the quote: either &#39;buy&#39; or &#39;sell&#39; for trade quotes. | [optional] 
**receiveAmount** | **Int** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell for trade quotes. | [optional] 
**deliverAmount** | **Int** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell for trade quotes. | [optional] 
**fee** | **Int** | The fee associated with the trade. Denominated in \&quot;counter_asset\&quot; base units for trade quotes. | [optional] 
**issuedAt** | **Date** | ISO8601 datetime the quote was created at. | [optional] 
**expiresAt** | **Date** | ISO8601 datetime the quote is expiring at. Populated for trading quotes. | [optional] 
**asset** | **String** | The asset code the quote was requested for. Populated for book transfer and funding quotes. | [optional] 
**networkFee** | **Int** | The network fee in base units of network_fee_asset. Only present on &#x60;crypto_transfer&#x60; quotes. | [optional] 
**networkFeeAsset** | **String** | The asset code of the network fee. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


