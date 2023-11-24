# CustomerBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the customer. | [optional] 
**bankGuid** | **String** | Auto-generated unique identifier for the customer&#39;s bank. | [optional] 
**type** | **String** | The customer&#39;s type. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 
**state** | **String** | The customer&#39;s state. | [optional] 
**name** | [**CustomerNameBankModel**](CustomerNameBankModel.md) |  | [optional] 
**address** | [**CustomerAddressBankModel**](CustomerAddressBankModel.md) |  | [optional] 
**dateOfBirth** | **Date** | The customer&#39;s DOB. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] 
**phoneNumber** | **String** | The customer&#39;s phone number. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] 
**emailAddress** | **String** | The customer&#39;s email address. Only available for GET operations when &#39;include_pii&#39; is set. | [optional] 
**labels** | **[String]** | The labels associated with the customer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


