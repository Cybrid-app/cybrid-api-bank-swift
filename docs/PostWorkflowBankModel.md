# PostWorkflowBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The workflow type. | 
**kind** | **String** | The Plaid workflow kind. Required when type is plaid. | [optional] 
**customerGuid** | **String** | The customer identifier associated with the workflow. Optional when type is plaid and kind is link_token_create. | [optional] 
**externalBankAccountGuid** | **String** | The external bank account identifier associated with the workflow. Required when type is plaid and kind is link_token_update. | [optional] 
**language** | **String** | The language to initialize Plaid link. Required when type is plaid. | [optional] 
**linkCustomizationName** | **String** | The customization name for Plaid link. Currently only supports the value \&quot;default\&quot;. Required when type is plaid. | [optional] 
**redirectUri** | **String** | The redirect URI for Plaid link. Optional when type is plaid. | [optional] 
**androidPackageName** | **String** | The Android package name for Plaid link. Optional when type is plaid. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


