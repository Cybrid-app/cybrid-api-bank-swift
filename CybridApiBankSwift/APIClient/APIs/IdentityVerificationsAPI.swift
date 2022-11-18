//
// IdentityVerificationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class IdentityVerificationsAPI {

    /**
     Create Identity Verification
     
     - parameter postIdentityVerificationBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createIdentityVerification(postIdentityVerificationBankModel: PostIdentityVerificationBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<IdentityVerificationBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createIdentityVerificationWithRequestBuilder(postIdentityVerificationBankModel: postIdentityVerificationBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Identity Verification
     - POST /api/identity_verifications
     - Create an Identity Verification.  Required scope: **customers:write**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postIdentityVerificationBankModel: (body)  
     - returns: RequestBuilder<IdentityVerificationBankModel> 
     */
    open class func createIdentityVerificationWithRequestBuilder(postIdentityVerificationBankModel: PostIdentityVerificationBankModel) -> RequestBuilder<IdentityVerificationBankModel> {
        let localVariablePath = "/api/identity_verifications"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postIdentityVerificationBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IdentityVerificationBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Identity Verification
     
     - parameter identityVerificationGuid: (path) Identifier for the identity verification. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getIdentityVerification(identityVerificationGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<IdentityVerificationWithDetailsBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getIdentityVerificationWithRequestBuilder(identityVerificationGuid: identityVerificationGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Identity Verification
     - GET /api/identity_verifications/{identity_verification_guid}
     - Retrieves an identity verification.  Required scope: **customers:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter identityVerificationGuid: (path) Identifier for the identity verification. 
     - returns: RequestBuilder<IdentityVerificationWithDetailsBankModel> 
     */
    open class func getIdentityVerificationWithRequestBuilder(identityVerificationGuid: String) -> RequestBuilder<IdentityVerificationWithDetailsBankModel> {
        var localVariablePath = "/api/identity_verifications/{identity_verification_guid}"
        let identityVerificationGuidPreEscape = "\(APIHelper.mapValueToPathItem(identityVerificationGuid))"
        let identityVerificationGuidPostEscape = identityVerificationGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{identity_verification_guid}", with: identityVerificationGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IdentityVerificationWithDetailsBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Identity Verifications
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list identity verifications for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list identity verifications for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list identity verifications for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listIdentityVerifications(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<IdentityVerificationListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listIdentityVerificationsWithRequestBuilder(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List Identity Verifications
     - GET /api/identity_verifications
     - Retrieves a list of identity verifications.  Required scope: **customers:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list identity verifications for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list identity verifications for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list identity verifications for. (optional)
     - returns: RequestBuilder<IdentityVerificationListBankModel> 
     */
    open class func listIdentityVerificationsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil) -> RequestBuilder<IdentityVerificationListBankModel> {
        let localVariablePath = "/api/identity_verifications"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<IdentityVerificationListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
