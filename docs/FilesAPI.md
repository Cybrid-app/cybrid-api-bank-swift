# FilesAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFile**](FilesAPI.md#createfile) | **POST** /api/files | Create File
[**getFile**](FilesAPI.md#getfile) | **GET** /api/files/{file_guid} | Get File
[**listFiles**](FilesAPI.md#listfiles) | **GET** /api/files | List Files


# **createFile**
```swift
    open class func createFile(postFileBankModel: PostFileBankModel, completion: @escaping (_ data: PlatformFileBankModel?, _ error: Error?) -> Void)
```

Create File

Creates a file.  #### This feature is currently in preview mode and is not yet available for partner use.  ## Data  The attribute contains the base64 encoded file content. The value needs to be smaller than 10MB otherwise the Platform will reject the request. To upload files larger than 10MB do not provide the content and use the returned upload URL to provide the file.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the file in our private store | | completed | The Platform has completed storing the file | | failed | The Platform failed to store the file |    Required scope: **files:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postFileBankModel = PostFile(type: "type_example", customerGuid: "customerGuid_example", filename: "filename_example", contentType: "contentType_example", data: "data_example") // PostFileBankModel | 

// Create File
FilesAPI.createFile(postFileBankModel: postFileBankModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postFileBankModel** | [**PostFileBankModel**](PostFileBankModel.md) |  | 

### Return type

[**PlatformFileBankModel**](PlatformFileBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
```swift
    open class func getFile(fileGuid: String, includeDownloadUrl: String? = nil, completion: @escaping (_ data: PlatformFileBankModel?, _ error: Error?) -> Void)
```

Get File

Retrieves a file.  Required scope: **files:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let fileGuid = "fileGuid_example" // String | Identifier for the file.
let includeDownloadUrl = "includeDownloadUrl_example" // String | Include download information in response. Note, the files:pii:read scope is required if this parameter is set. (optional)

// Get File
FilesAPI.getFile(fileGuid: fileGuid, includeDownloadUrl: includeDownloadUrl) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileGuid** | **String** | Identifier for the file. | 
 **includeDownloadUrl** | **String** | Include download information in response. Note, the files:pii:read scope is required if this parameter is set. | [optional] 

### Return type

[**PlatformFileBankModel**](PlatformFileBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFiles**
```swift
    open class func listFiles(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, type: String? = nil, state: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: PlatformFileListBankModel?, _ error: Error?) -> Void)
```

List Files

Retrieves a list of files.  Required scope: **files:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated file_guids to list files for. (optional)
let type = "type_example" // String | Comma separated file types to list files for. (optional)
let state = "state_example" // String | Comma separated file states to list files for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list files for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list files for. (optional)

// List Files
FilesAPI.listFiles(page: page, perPage: perPage, guid: guid, type: type, state: state, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | The page index to retrieve. | [optional] 
 **perPage** | **Int** | The number of entities per page to return. | [optional] 
 **guid** | **String** | Comma separated file_guids to list files for. | [optional] 
 **type** | **String** | Comma separated file types to list files for. | [optional] 
 **state** | **String** | Comma separated file states to list files for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list files for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list files for. | [optional] 

### Return type

[**PlatformFileListBankModel**](PlatformFileListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

