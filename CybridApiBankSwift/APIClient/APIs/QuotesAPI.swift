//
// QuotesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class QuotesAPI {

    /**
     Create Quote
     
     - parameter postQuoteBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createQuote(postQuoteBankModel: PostQuoteBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<QuoteBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createQuoteWithRequestBuilder(postQuoteBankModel: postQuoteBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Quote
     - POST /api/quotes
     - Creates a quote.  ## Quote creation  Quotes can be created for a Bank or a Customer.  To create quotes for your Bank, omit the `customer_guid` parameter in the request body. To create quotes for your Customers, include the `customer_guid` parameter in the request body.  ## Failure codes  | Code | Description | |------|-------------| | invalid_amount | The amount on the invoice is unprocessable | | insufficient_balance | There are insufficient funds to process the quote | | invalid_invoice | The invoice cannot be processed |    Required scope: **quotes:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postQuoteBankModel: (body)  
     - returns: RequestBuilder<QuoteBankModel> 
     */
    open class func createQuoteWithRequestBuilder(postQuoteBankModel: PostQuoteBankModel) -> RequestBuilder<QuoteBankModel> {
        let localVariablePath = "/api/quotes"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postQuoteBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<QuoteBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Quote
     
     - parameter quoteGuid: (path) Identifier for the quote. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getQuote(quoteGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<QuoteBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getQuoteWithRequestBuilder(quoteGuid: quoteGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Quote
     - GET /api/quotes/{quote_guid}
     - Retrieves a quote.  Required scope: **quotes:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter quoteGuid: (path) Identifier for the quote. 
     - returns: RequestBuilder<QuoteBankModel> 
     */
    open class func getQuoteWithRequestBuilder(quoteGuid: String) -> RequestBuilder<QuoteBankModel> {
        var localVariablePath = "/api/quotes/{quote_guid}"
        let quoteGuidPreEscape = "\(APIHelper.mapValueToPathItem(quoteGuid))"
        let quoteGuidPostEscape = quoteGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{quote_guid}", with: quoteGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<QuoteBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get quotes list
     
     - parameter page: (query)  (optional)
     - parameter perPage: (query)  (optional)
     - parameter guid: (query) Comma separated quote_guids to list quotes for. (optional)
     - parameter productType: (query) Comma separated product_types to list accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list quotes for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list quotes for. (optional)
     - parameter side: (query) Comma separated sides to list quotes for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listQuotes(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, productType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, side: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<QuoteListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listQuotesWithRequestBuilder(page: page, perPage: perPage, guid: guid, productType: productType, bankGuid: bankGuid, customerGuid: customerGuid, side: side).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get quotes list
     - GET /api/quotes
     - Retrieves a listing of quotes for all customers of a bank.  Required scope: **quotes:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query)  (optional)
     - parameter perPage: (query)  (optional)
     - parameter guid: (query) Comma separated quote_guids to list quotes for. (optional)
     - parameter productType: (query) Comma separated product_types to list accounts for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list quotes for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list quotes for. (optional)
     - parameter side: (query) Comma separated sides to list quotes for. (optional)
     - returns: RequestBuilder<QuoteListBankModel> 
     */
    open class func listQuotesWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, productType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, side: String? = nil) -> RequestBuilder<QuoteListBankModel> {
        let localVariablePath = "/api/quotes"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "product_type": productType?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
            "side": side?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<QuoteListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
