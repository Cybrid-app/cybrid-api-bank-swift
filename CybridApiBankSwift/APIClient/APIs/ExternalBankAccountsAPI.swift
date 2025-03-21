//
// ExternalBankAccountsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ExternalBankAccountsAPI {

    /**
     Create ExternalBankAccount
     
     - parameter postExternalBankAccountBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createExternalBankAccount(postExternalBankAccountBankModel: PostExternalBankAccountBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalBankAccountBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createExternalBankAccountWithRequestBuilder(postExternalBankAccountBankModel: postExternalBankAccountBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create ExternalBankAccount
     - POST /api/external_bank_accounts
     - Create an ExternalBankAccount.  ## Account creation  Accounts can be created for a Bank or a Customer.  To create accounts for your Bank, omit the `customer_guid` parameter in the request body. To create accounts for your Customers, include the `customer_guid` parameter in the request body.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the external bank account details in our private store | | completed | The Platform has created the external bank account | | unverified | The external bank account is created, but it has not yet been verified | | failed | The Platform was not able to successfully create the external bank account | | refresh_required | The Platform has created the external bank account, but needs to be refreshed | | deleting | The Platform is deleting the external bank account | | deleted | The Platform has deleted the external bank account |  ## Failure codes  | Code | Description | |------|-------------| | invalid_routing_number | The provided routing number is invalid | | duplicate | An account with the same details already exists | | plaid_processor_token | An account could not be created due to an invalid Plaid processor token or an error with Plaid | | plaid_multiple_accounts | The supplied Plaid token is associated with multiple accounts. Must only be a single account. | | create_failed | The bank account and associated holder could not be created correctly | | unverified_counterparty | The counterparty account is unverified |    Required scope: **external_bank_accounts:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postExternalBankAccountBankModel: (body)  
     - returns: RequestBuilder<ExternalBankAccountBankModel> 
     */
    open class func createExternalBankAccountWithRequestBuilder(postExternalBankAccountBankModel: PostExternalBankAccountBankModel) -> RequestBuilder<ExternalBankAccountBankModel> {
        let localVariablePath = "/api/external_bank_accounts"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postExternalBankAccountBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalBankAccountBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete External Bank Account
     
     - parameter externalBankAccountGuid: (path) Identifier for the external bank account. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func deleteExternalBankAccount(externalBankAccountGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalBankAccountBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return deleteExternalBankAccountWithRequestBuilder(externalBankAccountGuid: externalBankAccountGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Delete External Bank Account
     - DELETE /api/external_bank_accounts/{external_bank_account_guid}
     - Deletes an external bank account.  Required scope: **external_bank_accounts:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter externalBankAccountGuid: (path) Identifier for the external bank account. 
     - returns: RequestBuilder<ExternalBankAccountBankModel> 
     */
    open class func deleteExternalBankAccountWithRequestBuilder(externalBankAccountGuid: String) -> RequestBuilder<ExternalBankAccountBankModel> {
        var localVariablePath = "/api/external_bank_accounts/{external_bank_account_guid}"
        let externalBankAccountGuidPreEscape = "\(APIHelper.mapValueToPathItem(externalBankAccountGuid))"
        let externalBankAccountGuidPostEscape = externalBankAccountGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{external_bank_account_guid}", with: externalBankAccountGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalBankAccountBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get External Bank Account
     
     - parameter externalBankAccountGuid: (path) Identifier for the external bank account. 
     - parameter forceBalanceRefresh: (query) Force the balance on the account to be retrieved. (optional)
     - parameter includeBalances: (query) Include balance information in the response. If &#x60;force_balance_refresh&#x60; is &#x60;true&#x60;, the most up to date balance will be returned. If &#x60;force_balance_refresh&#x60; is &#x60;false&#x60;, the cached balance will be returned. &#x60;balance_updated_at&#x60; in the response will provide the timestamp the balance was last updated. (optional)
     - parameter includePii: (query) Include the account holder&#39;s PII in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getExternalBankAccount(externalBankAccountGuid: String, forceBalanceRefresh: Bool? = nil, includeBalances: Bool? = nil, includePii: Bool? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalBankAccountBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getExternalBankAccountWithRequestBuilder(externalBankAccountGuid: externalBankAccountGuid, forceBalanceRefresh: forceBalanceRefresh, includeBalances: includeBalances, includePii: includePii).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get External Bank Account
     - GET /api/external_bank_accounts/{external_bank_account_guid}
     - Retrieves an external bank account.  ## ExternalBankAccount retrieval  When retrieving an external bank account and include_balances is set to true, the Platform will attempt to retrieve the balance from the account's financial institution.  If force_balance_refresh is set to true, the Platform will always attempt to retrieve the most up to date balance from the account's financial institution. If force_balance_refresh is set to false, the Platform will return the cached balance.  If while getting the balance the Platform determines that the account needs to be refreshed, the Platform will return a 422 status code with the message \"Bank account refresh required\" and the ExternalBankAccount will be put into the refresh_required state.  If while getting the balance the Platform determines that the account is no longer valid, the Platform will return a 422 status code with the message \"Bank account can no longer be used and is being deleted. It must be re-added\" and the ExternalBankAccount will be deleted.  When retrieving an external bank account and include_pii is set to true, the Platform will include the account holder's information in the response.    Required scope: **external_bank_accounts:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter externalBankAccountGuid: (path) Identifier for the external bank account. 
     - parameter forceBalanceRefresh: (query) Force the balance on the account to be retrieved. (optional)
     - parameter includeBalances: (query) Include balance information in the response. If &#x60;force_balance_refresh&#x60; is &#x60;true&#x60;, the most up to date balance will be returned. If &#x60;force_balance_refresh&#x60; is &#x60;false&#x60;, the cached balance will be returned. &#x60;balance_updated_at&#x60; in the response will provide the timestamp the balance was last updated. (optional)
     - parameter includePii: (query) Include the account holder&#39;s PII in the response. (optional)
     - returns: RequestBuilder<ExternalBankAccountBankModel> 
     */
    open class func getExternalBankAccountWithRequestBuilder(externalBankAccountGuid: String, forceBalanceRefresh: Bool? = nil, includeBalances: Bool? = nil, includePii: Bool? = nil) -> RequestBuilder<ExternalBankAccountBankModel> {
        var localVariablePath = "/api/external_bank_accounts/{external_bank_account_guid}"
        let externalBankAccountGuidPreEscape = "\(APIHelper.mapValueToPathItem(externalBankAccountGuid))"
        let externalBankAccountGuidPostEscape = externalBankAccountGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{external_bank_account_guid}", with: externalBankAccountGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "force_balance_refresh": forceBalanceRefresh?.encodeToJSON(),
            "include_balances": includeBalances?.encodeToJSON(),
            "include_pii": includePii?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalBankAccountBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get external bank accounts list
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated external_bank_account_guids to list external_bank_accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list external_bank_accounts for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list external_bank_accounts for. (optional)
     - parameter asset: (query) Comma separated assets to list external_bank_accounts for. (optional)
     - parameter state: (query) Comma separated states to list external_bank_accounts for. Filtering by \&quot;completed\&quot; and \&quot;unverified\&quot; states is only supported for individual customer accounts. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listExternalBankAccounts(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, asset: String? = nil, state: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalBankAccountListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listExternalBankAccountsWithRequestBuilder(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, asset: asset, state: state).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get external bank accounts list
     - GET /api/external_bank_accounts
     - Retrieves a listing of external bank accounts.  Required scope: **external_bank_accounts:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated external_bank_account_guids to list external_bank_accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list external_bank_accounts for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list external_bank_accounts for. (optional)
     - parameter asset: (query) Comma separated assets to list external_bank_accounts for. (optional)
     - parameter state: (query) Comma separated states to list external_bank_accounts for. Filtering by \&quot;completed\&quot; and \&quot;unverified\&quot; states is only supported for individual customer accounts. (optional)
     - returns: RequestBuilder<ExternalBankAccountListBankModel> 
     */
    open class func listExternalBankAccountsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, asset: String? = nil, state: String? = nil) -> RequestBuilder<ExternalBankAccountListBankModel> {
        let localVariablePath = "/api/external_bank_accounts"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
            "asset": asset?.encodeToJSON(),
            "state": state?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalBankAccountListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Patch ExternalBankAccount
     
     - parameter externalBankAccountGuid: (path) Identifier for the external bank account. 
     - parameter patchExternalBankAccountBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func patchExternalBankAccount(externalBankAccountGuid: String, patchExternalBankAccountBankModel: PatchExternalBankAccountBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ExternalBankAccountBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return patchExternalBankAccountWithRequestBuilder(externalBankAccountGuid: externalBankAccountGuid, patchExternalBankAccountBankModel: patchExternalBankAccountBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Patch ExternalBankAccount
     - PATCH /api/external_bank_accounts/{external_bank_account_guid}
     - Patch an external bank account.  Required scope: **external_bank_accounts:write**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter externalBankAccountGuid: (path) Identifier for the external bank account. 
     - parameter patchExternalBankAccountBankModel: (body)  
     - returns: RequestBuilder<ExternalBankAccountBankModel> 
     */
    open class func patchExternalBankAccountWithRequestBuilder(externalBankAccountGuid: String, patchExternalBankAccountBankModel: PatchExternalBankAccountBankModel) -> RequestBuilder<ExternalBankAccountBankModel> {
        var localVariablePath = "/api/external_bank_accounts/{external_bank_account_guid}"
        let externalBankAccountGuidPreEscape = "\(APIHelper.mapValueToPathItem(externalBankAccountGuid))"
        let externalBankAccountGuidPostEscape = externalBankAccountGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{external_bank_account_guid}", with: externalBankAccountGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchExternalBankAccountBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExternalBankAccountBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
