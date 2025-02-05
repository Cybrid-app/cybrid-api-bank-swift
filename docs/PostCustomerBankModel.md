# PostCustomerBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of customer. | 
**address** | [**PostCustomerAddressBankModel**](PostCustomerAddressBankModel.md) |  | [optional] 
**phoneNumber** | **String** | The customer&#39;s phone number. | [optional] 
**emailAddress** | **String** | The customer&#39;s email address. | [optional] 
**identificationNumbers** | [PostIdentificationNumberBankModel] | The customer&#39;s identification numbers. | [optional] 
**name** | [**PostCustomerNameBankModel**](PostCustomerNameBankModel.md) |  | [optional] 
**dateOfBirth** | **Date** | The customer&#39;s date of birth. Optional when type is individual. | [optional] 
**aliases** | [PostCustomerAliasesInnerBankModel] | The aliases of the customer. Optional when type is business. | [optional] 
**website** | **String** | The customer&#39;s website. Optional when type is business. | [optional] 
**labels** | **[String]** | The labels associated with the customer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


