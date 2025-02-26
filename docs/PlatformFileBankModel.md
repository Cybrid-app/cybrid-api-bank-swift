# PlatformFileBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | The unique identifier for the file. | [optional] 
**fileType** | **String** | The file type; one of drivers_license_front, drivers_license_back, passport, visa, identification_card, residence_card, selfie, selfie_video, selfie_left, selfie_right, utility_bill, bank_statement, property_tax, tax_document, ein_letter, or incorporation_certificate. | [optional] 
**contentType** | **String** | The media type; one of image/jpeg, image/png, application/pdf, or video/mp4. | [optional] 
**completedAt** | **Date** | The ISO8601 datetime the file was completed at. | [optional] 
**failedAt** | **Date** | The ISO8601 datetime the file failed at. | [optional] 
**state** | **String** | The state of the file. One of storing, completed, or failed. | [optional] 
**failureCode** | **String** | The failure code for failed files. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


