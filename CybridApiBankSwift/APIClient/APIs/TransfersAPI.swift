//
// TransfersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TransfersAPI {

    /**
     Create Transfer
     
     - parameter postTransferBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createTransfer(postTransferBankModel: PostTransferBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<TransferBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createTransferWithRequestBuilder(postTransferBankModel: postTransferBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Transfer
     - POST /api/transfers
     - Creates a transfer.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the trade details in our private store | | initiating | The Platform has begun to perform the transfer | | pending | The Platform is executing the transfer | | completed | The Platform has successfully completed the transfer | | failed | The Platform was not able to successfully complete the transfer |    Required scope: **transfers:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postTransferBankModel: (body)  
     - returns: RequestBuilder<TransferBankModel> 
     */
    open class func createTransferWithRequestBuilder(postTransferBankModel: PostTransferBankModel) -> RequestBuilder<TransferBankModel> {
        let localVariablePath = "/api/transfers"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postTransferBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransferBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Transfer
     
     - parameter transferGuid: (path) Identifier for the transfer. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getTransfer(transferGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<TransferBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getTransferWithRequestBuilder(transferGuid: transferGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Transfer
     - GET /api/transfers/{transfer_guid}
     - Retrieves a transfer.  Required scope: **transfers:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter transferGuid: (path) Identifier for the transfer. 
     - returns: RequestBuilder<TransferBankModel> 
     */
    open class func getTransferWithRequestBuilder(transferGuid: String) -> RequestBuilder<TransferBankModel> {
        var localVariablePath = "/api/transfers/{transfer_guid}"
        let transferGuidPreEscape = "\(APIHelper.mapValueToPathItem(transferGuid))"
        let transferGuidPostEscape = transferGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{transfer_guid}", with: transferGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransferBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get transfers list
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated transfer_guids to list transfers for. (optional)
     - parameter transferType: (query) Comma separated transfer_types to list accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list transfers for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list transfers for. (optional)
     - parameter accountGuid: (query) Comma separated account_guids to list transfers for. (optional)
     - parameter state: (query) Comma separated states to list transfers for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listTransfers(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, transferType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<TransferListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listTransfersWithRequestBuilder(page: page, perPage: perPage, guid: guid, transferType: transferType, bankGuid: bankGuid, customerGuid: customerGuid, accountGuid: accountGuid, state: state).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get transfers list
     - GET /api/transfers
     - Retrieves a listing of transfers.  Required scope: **transfers:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated transfer_guids to list transfers for. (optional)
     - parameter transferType: (query) Comma separated transfer_types to list accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list transfers for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list transfers for. (optional)
     - parameter accountGuid: (query) Comma separated account_guids to list transfers for. (optional)
     - parameter state: (query) Comma separated states to list transfers for. (optional)
     - returns: RequestBuilder<TransferListBankModel> 
     */
    open class func listTransfersWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, transferType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil) -> RequestBuilder<TransferListBankModel> {
        let localVariablePath = "/api/transfers"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "transfer_type": transferType?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
            "account_guid": accountGuid?.encodeToJSON(),
            "state": state?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransferListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
