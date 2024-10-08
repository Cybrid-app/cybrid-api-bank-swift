//
// BanksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BanksAPI {

    /**
     Create Bank
     
     - parameter postBankBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createBank(postBankBankModel: PostBankBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<BankBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createBankWithRequestBuilder(postBankBankModel: postBankBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Bank
     - POST /api/banks
     - Creates a bank.  ## Bank Type  Bank's can be created in either `sandbox` or `production` mode. Sandbox Banks will not transact in real fiat dollars or cryptocurrencies.  Via the API, only `sandbox` banks can be created. In order to enable a `production` bank please contact [Support](mailto:support@cybrid.app).    Required scope: **banks:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postBankBankModel: (body)  
     - returns: RequestBuilder<BankBankModel> 
     */
    open class func createBankWithRequestBuilder(postBankBankModel: PostBankBankModel) -> RequestBuilder<BankBankModel> {
        let localVariablePath = "/api/banks"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postBankBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BankBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Bank
     
     - parameter bankGuid: (path) Identifier for the bank. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getBank(bankGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<BankBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getBankWithRequestBuilder(bankGuid: bankGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Bank
     - GET /api/banks/{bank_guid}
     - Retrieves a bank.  Required scope: **banks:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter bankGuid: (path) Identifier for the bank. 
     - returns: RequestBuilder<BankBankModel> 
     */
    open class func getBankWithRequestBuilder(bankGuid: String) -> RequestBuilder<BankBankModel> {
        var localVariablePath = "/api/banks/{bank_guid}"
        let bankGuidPreEscape = "\(APIHelper.mapValueToPathItem(bankGuid))"
        let bankGuidPostEscape = bankGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bank_guid}", with: bankGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BankBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get banks list
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter type: (query) Comma separated types to list banks for. (optional)
     - parameter guid: (query) Comma separated bank_guids to list banks for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listBanks(page: Int? = nil, perPage: Int? = nil, type: String? = nil, guid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<BankListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listBanksWithRequestBuilder(page: page, perPage: perPage, type: type, guid: guid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get banks list
     - GET /api/banks
     - Retrieves a listing of bank.  Required scope: **banks:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter type: (query) Comma separated types to list banks for. (optional)
     - parameter guid: (query) Comma separated bank_guids to list banks for. (optional)
     - returns: RequestBuilder<BankListBankModel> 
     */
    open class func listBanksWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, type: String? = nil, guid: String? = nil) -> RequestBuilder<BankListBankModel> {
        let localVariablePath = "/api/banks"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "type": type?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BankListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Patch Bank
     
     - parameter bankGuid: (path) Identifier for the bank. 
     - parameter patchBankBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func updateBank(bankGuid: String, patchBankBankModel: PatchBankBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<BankBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return updateBankWithRequestBuilder(bankGuid: bankGuid, patchBankBankModel: patchBankBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Patch Bank
     - PATCH /api/banks/{bank_guid}
     - Update a bank.  Required scope: **banks:write**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter bankGuid: (path) Identifier for the bank. 
     - parameter patchBankBankModel: (body)  
     - returns: RequestBuilder<BankBankModel> 
     */
    open class func updateBankWithRequestBuilder(bankGuid: String, patchBankBankModel: PatchBankBankModel) -> RequestBuilder<BankBankModel> {
        var localVariablePath = "/api/banks/{bank_guid}"
        let bankGuidPreEscape = "\(APIHelper.mapValueToPathItem(bankGuid))"
        let bankGuidPostEscape = bankGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bank_guid}", with: bankGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchBankBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BankBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
