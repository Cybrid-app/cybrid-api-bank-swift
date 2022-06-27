# QuoteBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the quote. | [optional] 
**customerGuid** | **String** | The unique identifier for the customer. | [optional] 
**symbol** | **String** | Symbol the quote is being requested for. Format is \&quot;asset-counter_asset\&quot; in uppercase. | [optional] 
**side** | **String** | The direction of the quote: either &#39;buy&#39; or &#39;sell&#39;. | [optional] 
**receiveAmount** | **Int** | The amount to be received in base units of the currency: currency is \&quot;asset\&quot; for buy and \&quot;counter_asset\&quot; for sell. | [optional] 
**deliverAmount** | **Int** | The amount to be delivered in base units of the currency: currency is \&quot;counter_asset\&quot; for buy and \&quot;asset\&quot; for sell. | [optional] 
**fee** | **Int** | The fee associated with the trade. Denominated in \&quot;counter_asset\&quot; base units | [optional] 
**issuedAt** | **Date** | ISO8601 datetime the quote was created at. | [optional] 
**expiresAt** | **Date** | ISO8601 datetime the quote is expiring at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


