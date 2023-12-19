//
// AccountsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AccountsAPI {

    /**
     Create Account
     
     - parameter postAccountBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createAccount(postAccountBankModel: PostAccountBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AccountBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createAccountWithRequestBuilder(postAccountBankModel: postAccountBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Account
     - POST /api/accounts
     - Creates an account.  ## Account Type  An Account is tied to a specific cryptocurrency or fiat and is comprised of transactions and a current balance.  An account is required to allow a Bank or Customer to hold cryptocurrency or a Customer to hold fiat on the Cybrid Platform.  At present, account's can be created as `trading` or `fiat ` accounts and are required before a Customer can generate quotes or execute a `trade` or `transfer`.  To create accounts for your Bank, omit the `customer_guid` parameter in the request body. To create accounts for your Customers, include the `customer_guid` parameter in the request body.  ## Asset  The asset is the specific cryptocurrency or fiat that the account holds, e.g., 'BTC' for Bitcoin or `USD` for US dollars. See the Symbols API for a complete list of cryptocurrencies and fiat supported.   ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the account details in our private store | | created | The Platform has created the account |    Required scope: **accounts:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postAccountBankModel: (body)  
     - returns: RequestBuilder<AccountBankModel> 
     */
    open class func createAccountWithRequestBuilder(postAccountBankModel: PostAccountBankModel) -> RequestBuilder<AccountBankModel> {
        let localVariablePath = "/api/accounts"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postAccountBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Account
     
     - parameter accountGuid: (path) Identifier for the account. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getAccount(accountGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AccountBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getAccountWithRequestBuilder(accountGuid: accountGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Account
     - GET /api/accounts/{account_guid}
     - Retrieves an account.  Required scope: **accounts:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter accountGuid: (path) Identifier for the account. 
     - returns: RequestBuilder<AccountBankModel> 
     */
    open class func getAccountWithRequestBuilder(accountGuid: String) -> RequestBuilder<AccountBankModel> {
        var localVariablePath = "/api/accounts/{account_guid}"
        let accountGuidPreEscape = "\(APIHelper.mapValueToPathItem(accountGuid))"
        let accountGuidPostEscape = accountGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_guid}", with: accountGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Accounts
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter owner: (query) The owner of the entity. (optional)
     - parameter guid: (query) Comma separated account_guids to list accounts for. (optional)
     - parameter type: (query) Comma separated account_types to list accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list accounts for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list accounts for. (optional)
     - parameter label: (query) Comma separated labels to list accounts for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listAccounts(page: Int? = nil, perPage: Int? = nil, owner: String? = nil, guid: String? = nil, type: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, label: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AccountListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listAccountsWithRequestBuilder(page: page, perPage: perPage, owner: owner, guid: guid, type: type, bankGuid: bankGuid, customerGuid: customerGuid, label: label).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List Accounts
     - GET /api/accounts
     - Retrieves a list of accounts.  Required scope: **accounts:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter owner: (query) The owner of the entity. (optional)
     - parameter guid: (query) Comma separated account_guids to list accounts for. (optional)
     - parameter type: (query) Comma separated account_types to list accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list accounts for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list accounts for. (optional)
     - parameter label: (query) Comma separated labels to list accounts for. (optional)
     - returns: RequestBuilder<AccountListBankModel> 
     */
    open class func listAccountsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, owner: String? = nil, guid: String? = nil, type: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, label: String? = nil) -> RequestBuilder<AccountListBankModel> {
        let localVariablePath = "/api/accounts"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "owner": owner?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "type": type?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
            "label": label?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
