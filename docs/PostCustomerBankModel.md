# PostCustomerBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of customer. | 
**name** | [**PostCustomerNameBankModel**](PostCustomerNameBankModel.md) |  | [optional] 
**address** | [**PostCustomerAddressBankModel**](PostCustomerAddressBankModel.md) |  | [optional] 
**dateOfBirth** | **Date** | The customer&#39;s date of birth. Optional when type is individual. | [optional] 
**phoneNumber** | **String** | The customer&#39;s phone number. Optional when type is individual. | [optional] 
**emailAddress** | **String** | The customer&#39;s email address. Optional when type is individual. | [optional] 
**identificationNumbers** | [PostIdentificationNumberBankModel] | The customer&#39;s identification numbers. Optional when type is individual. | [optional] 
**labels** | **[String]** | The labels associated with the customer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


