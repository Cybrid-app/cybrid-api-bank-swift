# PostBankBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of bank. | 
**name** | **String** | The name of the bank. | 
**supportedTradingSymbols** | **[String]** | The trading symbols supported by the bank. | 
**supportedPayoutSymbols** | [PostSupportedPayoutSymbolsBankModel] | The payout symbols supported by the bank. This is not yet supported and should be nil or empty. | [optional] 
**supportedFiatAccountAssets** | **[String]** | The fiat account assets supported by the bank. | 
**supportedCountryCodes** | **[String]** | The country codes supported by the bank. | 
**features** | **[String]** | The features supported by the bank. | 
**corsAllowedOrigins** | **[String]** | The list of allowed CORS origin URIs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


