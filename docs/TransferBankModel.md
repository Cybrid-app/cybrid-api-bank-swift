# TransferBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the trade. | [optional] 
**transferType** | **String** | The type of transfer. | [optional] 
**customerGuid** | **String** | The associated customer&#39;s identifier. | [optional] 
**quoteGuid** | **String** | The associated quote&#39;s identifier. | [optional] 
**asset** | **String** | The asset the transfer is related to, e.g., USD. | [optional] 
**side** | **String** | The direction of the quote: &#39;deposit&#39; or &#39;withdrawal&#39;. | [optional] 
**state** | **String** | The trade&#39;s state | [optional] 
**amount** | **Int** | The amount being transferred. | [optional] 
**fee** | **Int** | The fee associated with the trade. | [optional] 
**networkFee** | **Int** | The network fee in base units of network_fee_asset. Only present on &#x60;crypto&#x60; transfers. | [optional] 
**networkFeeAsset** | **String** | The asset code of the network fee. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the bank was created at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


