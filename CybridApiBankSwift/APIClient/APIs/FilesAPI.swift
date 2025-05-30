//
// FilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FilesAPI {

    /**
     Create File
     
     - parameter postFileBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createFile(postFileBankModel: PostFileBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PlatformFileBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createFileWithRequestBuilder(postFileBankModel: postFileBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create File
     - POST /api/files
     - Creates a file.  #### This feature is currently in preview mode and is not yet available for partner use.  ## Data  The attribute contains the base64 encoded file content. The value needs to be smaller than 10MB otherwise the Platform will reject the request. To upload files larger than 10MB do not provide the content and use the returned upload URL to provide the file.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the file in our private store | | completed | The Platform has completed storing the file | | failed | The Platform failed to store the file |    Required scope: **files:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postFileBankModel: (body)  
     - returns: RequestBuilder<PlatformFileBankModel> 
     */
    open class func createFileWithRequestBuilder(postFileBankModel: PostFileBankModel) -> RequestBuilder<PlatformFileBankModel> {
        let localVariablePath = "/api/files"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postFileBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PlatformFileBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get File
     
     - parameter fileGuid: (path) Identifier for the file. 
     - parameter includeDownloadUrl: (query) Include download information in response. Note, the files:pii:read scope is required if this parameter is set. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getFile(fileGuid: String, includeDownloadUrl: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PlatformFileBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getFileWithRequestBuilder(fileGuid: fileGuid, includeDownloadUrl: includeDownloadUrl).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get File
     - GET /api/files/{file_guid}
     - Retrieves a file.  Required scope: **files:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter fileGuid: (path) Identifier for the file. 
     - parameter includeDownloadUrl: (query) Include download information in response. Note, the files:pii:read scope is required if this parameter is set. (optional)
     - returns: RequestBuilder<PlatformFileBankModel> 
     */
    open class func getFileWithRequestBuilder(fileGuid: String, includeDownloadUrl: String? = nil) -> RequestBuilder<PlatformFileBankModel> {
        var localVariablePath = "/api/files/{file_guid}"
        let fileGuidPreEscape = "\(APIHelper.mapValueToPathItem(fileGuid))"
        let fileGuidPostEscape = fileGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{file_guid}", with: fileGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "include_download_url": includeDownloadUrl?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PlatformFileBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Files
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated file_guids to list files for. (optional)
     - parameter type: (query) Comma separated file types to list files for. (optional)
     - parameter state: (query) Comma separated file states to list files for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list files for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list files for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listFiles(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, type: String? = nil, state: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PlatformFileListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listFilesWithRequestBuilder(page: page, perPage: perPage, guid: guid, type: type, state: state, bankGuid: bankGuid, customerGuid: customerGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List Files
     - GET /api/files
     - Retrieves a list of files.  Required scope: **files:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated file_guids to list files for. (optional)
     - parameter type: (query) Comma separated file types to list files for. (optional)
     - parameter state: (query) Comma separated file states to list files for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list files for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list files for. (optional)
     - returns: RequestBuilder<PlatformFileListBankModel> 
     */
    open class func listFilesWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, type: String? = nil, state: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil) -> RequestBuilder<PlatformFileListBankModel> {
        let localVariablePath = "/api/files"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "type": type?.encodeToJSON(),
            "state": state?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PlatformFileListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
