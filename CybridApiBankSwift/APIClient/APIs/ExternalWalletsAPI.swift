//
// ExternalWalletsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ExternalWalletsAPI {

    /**
     Create ExternalWallet
     
     - parameter postExternalWalletBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createExternalWallet(postExternalWalletBankModel: PostExternalWalletBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalWalletBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createExternalWalletWithRequestBuilder(postExternalWalletBankModel: postExternalWalletBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create ExternalWallet
     - POST /api/external_wallets
     - Create an ExternalWallet.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the external wallet details in our private store | | pending | The Platform is waiting for the external wallet to be created | | completed | The Platform has created the external wallet | | failed | The Platform was not able to successfully create the external wallet | | deleting | The Platform is deleting the external wallet | | deleted | The Platform has deleted the external wallet |    External wallets can be added to the bank by leaving the customer_guid blank. External wallets added to the bank can be used by any customer of the bank.  External wallets can also be added to a specific customer by providing the customer_guid. External wallets added to a customer can only be used by that customer.  Required scope: **external_wallets:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postExternalWalletBankModel: (body)  
     - returns: RequestBuilder<ExternalWalletBankModel> 
     */
    open class func createExternalWalletWithRequestBuilder(postExternalWalletBankModel: PostExternalWalletBankModel) -> RequestBuilder<ExternalWalletBankModel> {
        let localVariablePath = "/api/external_wallets"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postExternalWalletBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalWalletBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete External Wallet
     
     - parameter externalWalletGuid: (path) Identifier for the external wallet. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func deleteExternalWallet(externalWalletGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalWalletBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return deleteExternalWalletWithRequestBuilder(externalWalletGuid: externalWalletGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Delete External Wallet
     - DELETE /api/external_wallets/{external_wallet_guid}
     - Deletes an external wallet.  Required scope: **external_wallets:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter externalWalletGuid: (path) Identifier for the external wallet. 
     - returns: RequestBuilder<ExternalWalletBankModel> 
     */
    open class func deleteExternalWalletWithRequestBuilder(externalWalletGuid: String) -> RequestBuilder<ExternalWalletBankModel> {
        var localVariablePath = "/api/external_wallets/{external_wallet_guid}"
        let externalWalletGuidPreEscape = "\(APIHelper.mapValueToPathItem(externalWalletGuid))"
        let externalWalletGuidPostEscape = externalWalletGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{external_wallet_guid}", with: externalWalletGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalWalletBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get External Wallet
     
     - parameter externalWalletGuid: (path) Identifier for the external_wallet. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getExternalWallet(externalWalletGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalWalletBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getExternalWalletWithRequestBuilder(externalWalletGuid: externalWalletGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get External Wallet
     - GET /api/external_wallets/{external_wallet_guid}
     - Retrieves an external_wallet.  Required scope: **external_wallets:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter externalWalletGuid: (path) Identifier for the external_wallet. 
     - returns: RequestBuilder<ExternalWalletBankModel> 
     */
    open class func getExternalWalletWithRequestBuilder(externalWalletGuid: String) -> RequestBuilder<ExternalWalletBankModel> {
        var localVariablePath = "/api/external_wallets/{external_wallet_guid}"
        let externalWalletGuidPreEscape = "\(APIHelper.mapValueToPathItem(externalWalletGuid))"
        let externalWalletGuidPostEscape = externalWalletGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{external_wallet_guid}", with: externalWalletGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalWalletBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get external wallets list
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated external_wallet_guids to list external_wallets for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list external_wallets for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list external_wallets for. (optional)
     - parameter state: (query) Comma separated states to list external_wallets for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listExternalWallets(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, state: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalWalletListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listExternalWalletsWithRequestBuilder(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, state: state).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get external wallets list
     - GET /api/external_wallets
     - Retrieves a listing of external wallets.  Required scope: **external_wallets:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated external_wallet_guids to list external_wallets for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list external_wallets for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list external_wallets for. (optional)
     - parameter state: (query) Comma separated states to list external_wallets for. (optional)
     - returns: RequestBuilder<ExternalWalletListBankModel> 
     */
    open class func listExternalWalletsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, state: String? = nil) -> RequestBuilder<ExternalWalletListBankModel> {
        let localVariablePath = "/api/external_wallets"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
            "state": state?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalWalletListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
