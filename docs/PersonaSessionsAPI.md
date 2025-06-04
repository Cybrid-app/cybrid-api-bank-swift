# PersonaSessionsAPI

All URIs are relative to *https://bank.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPersonaSession**](PersonaSessionsAPI.md#createpersonasession) | **POST** /api/persona_sessions | Create Persona Session


# **createPersonaSession**
```swift
    open class func createPersonaSession(postPersonaSessionBankModel: PostPersonaSessionBankModel, completion: @escaping (_ data: PersonaSessionBankModel?, _ error: Error?) -> Void)
```

Create Persona Session

Create a Persona session.  Required scope: **persona_sessions:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postPersonaSessionBankModel = PostPersonaSession(personaInquiryId: "personaInquiryId_example", customerGuid: "customerGuid_example", identityVerificationGuid: "identityVerificationGuid_example") // PostPersonaSessionBankModel | 

// Create Persona Session
PersonaSessionsAPI.createPersonaSession(postPersonaSessionBankModel: postPersonaSessionBankModel) { (response, error) in
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
 **postPersonaSessionBankModel** | [**PostPersonaSessionBankModel**](PostPersonaSessionBankModel.md) |  | 

### Return type

[**PersonaSessionBankModel**](PersonaSessionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

