# PlatformFileBankModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | The unique identifier for the file. | [optional] 
**organizationGuid** | **String** | The organization identifier. | [optional] 
**bankGuid** | **String** | The bank identifier. | [optional] 
**customerGuid** | **String** | The customer identifier. | [optional] 
**type** | **String** | The file type; one of drivers_license_front, drivers_license_back, passport, passport_card, visa, identification_card, residence_card, selfie, selfie_video, selfie_left, selfie_right, utility_bill, proof_of_address, bank_statement, property_tax, tax_document, ein_letter, incorporation_certificate, persona_inquiry_report, or persona_inquiry_export. | [optional] 
**contentType** | **String** | The media type; one of image/jpeg, image/png, application/pdf, application/json, or video/mp4. | [optional] 
**filename** | **String** | The name of the file. | [optional] 
**completedAt** | **Date** | The ISO8601 datetime the file was completed at. | [optional] 
**failedAt** | **Date** | The ISO8601 datetime the file failed at. | [optional] 
**state** | **String** | The state of the file. One of storing, completed, or failed. | [optional] 
**failureCode** | **String** | The failure code for failed files. | [optional] 
**uploadUrl** | **String** | The URL to upload the file to. | [optional] 
**uploadExpiresAt** | **Date** | The ISO8601 datetime the upload URL expires at. | [optional] 
**downloadUrl** | **String** | The URL to download the file from. | [optional] 
**downloadExpiresAt** | **Date** | The ISO8601 datetime the download URL expires at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


