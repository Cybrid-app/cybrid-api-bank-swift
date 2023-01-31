//
// DepositAddressesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DepositAddressesAPI {

    /**
     Create Deposit Address
     
     - parameter postDepositAddressBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createDepositAddress(postDepositAddressBankModel: PostDepositAddressBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<DepositAddressBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createDepositAddressWithRequestBuilder(postDepositAddressBankModel: postDepositAddressBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Deposit Address
     - POST /api/deposit_addresses
     - Create an Deposit Address.  Required scope: **deposit_addresses:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postDepositAddressBankModel: (body)  
     - returns: RequestBuilder<DepositAddressBankModel> 
     */
    open class func createDepositAddressWithRequestBuilder(postDepositAddressBankModel: PostDepositAddressBankModel) -> RequestBuilder<DepositAddressBankModel> {
        let localVariablePath = "/api/deposit_addresses"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postDepositAddressBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DepositAddressBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Deposit Address
     
     - parameter depositAddressGuid: (path) Identifier for the deposit address. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getDepositAddress(depositAddressGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<DepositAddressBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getDepositAddressWithRequestBuilder(depositAddressGuid: depositAddressGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Deposit Address
     - GET /api/deposit_addresses/{deposit_address_guid}
     - Retrieves a deposit address.  Required scope: **deposit_addresses:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter depositAddressGuid: (path) Identifier for the deposit address. 
     - returns: RequestBuilder<DepositAddressBankModel> 
     */
    open class func getDepositAddressWithRequestBuilder(depositAddressGuid: String) -> RequestBuilder<DepositAddressBankModel> {
        var localVariablePath = "/api/deposit_addresses/{deposit_address_guid}"
        let depositAddressGuidPreEscape = "\(APIHelper.mapValueToPathItem(depositAddressGuid))"
        let depositAddressGuidPostEscape = depositAddressGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{deposit_address_guid}", with: depositAddressGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DepositAddressBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Deposit Addresses
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list deposit addresses for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list deposit addresses for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list deposit addresses for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listDepositAddresses(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<DepositAddressListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listDepositAddressesWithRequestBuilder(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List Deposit Addresses
     - GET /api/deposit_addresses
     - Retrieves a list of deposit addresses.  Required scope: **deposit_addresses:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list deposit addresses for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list deposit addresses for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list deposit addresses for. (optional)
     - returns: RequestBuilder<DepositAddressListBankModel> 
     */
    open class func listDepositAddressesWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil) -> RequestBuilder<DepositAddressListBankModel> {
        let localVariablePath = "/api/deposit_addresses"
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

        let localVariableRequestBuilder: RequestBuilder<DepositAddressListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}