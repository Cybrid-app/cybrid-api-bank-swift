//
// InvoicesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InvoicesAPI {

    /**
     Cancel Invoice
     
     - parameter invoiceGuid: (path) Identifier for the invoice. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func cancelInvoice(invoiceGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<InvoiceBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return cancelInvoiceWithRequestBuilder(invoiceGuid: invoiceGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Cancel Invoice
     - DELETE /api/invoices/{invoice_guid}
     - Cancels an invoice.  Required scope: **invoices:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter invoiceGuid: (path) Identifier for the invoice. 
     - returns: RequestBuilder<InvoiceBankModel> 
     */
    open class func cancelInvoiceWithRequestBuilder(invoiceGuid: String) -> RequestBuilder<InvoiceBankModel> {
        var localVariablePath = "/api/invoices/{invoice_guid}"
        let invoiceGuidPreEscape = "\(APIHelper.mapValueToPathItem(invoiceGuid))"
        let invoiceGuidPostEscape = invoiceGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invoice_guid}", with: invoiceGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvoiceBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Invoice
     
     - parameter postInvoiceBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createInvoice(postInvoiceBankModel: PostInvoiceBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<InvoiceBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createInvoiceWithRequestBuilder(postInvoiceBankModel: postInvoiceBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Invoice
     - POST /api/invoices
     - Creates a invoice.  ## State  | State | Description | |-------|-------------| | storing    | The Platform is storing the invoice details in our private store | | unpaid     | The invoice is unpaid. Payment instructions can be generated for an invoice in this state | | cancelling | The invocie is in the process of being cancelled | | cancelled  | The invoice has been cancelled |  | settling   | The invoice has been paid and the funds associated with this invoice are in the process of being settled | | paid       | The invoice has been paid and the funds associated with this invoice have been settled |     Required scope: **invoices:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postInvoiceBankModel: (body)  
     - returns: RequestBuilder<InvoiceBankModel> 
     */
    open class func createInvoiceWithRequestBuilder(postInvoiceBankModel: PostInvoiceBankModel) -> RequestBuilder<InvoiceBankModel> {
        let localVariablePath = "/api/invoices"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postInvoiceBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvoiceBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Invoice
     
     - parameter invoiceGuid: (path) Identifier for the payment instruction. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getInvoice(invoiceGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<InvoiceBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getInvoiceWithRequestBuilder(invoiceGuid: invoiceGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Invoice
     - GET /api/invoices/{invoice_guid}
     - Retrieves a invoice.  Required scope: **invoices:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter invoiceGuid: (path) Identifier for the payment instruction. 
     - returns: RequestBuilder<InvoiceBankModel> 
     */
    open class func getInvoiceWithRequestBuilder(invoiceGuid: String) -> RequestBuilder<InvoiceBankModel> {
        var localVariablePath = "/api/invoices/{invoice_guid}"
        let invoiceGuidPreEscape = "\(APIHelper.mapValueToPathItem(invoiceGuid))"
        let invoiceGuidPostEscape = invoiceGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invoice_guid}", with: invoiceGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvoiceBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter environment
     */
    public enum EnvironmentBankModel_listInvoices: String, CaseIterable {
        case sandbox = "sandbox"
        case production = "production"
    }

    /**
     List Invoices
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list invoices for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list invoices for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list invoices for. (optional)
     - parameter accountGuid: (query) Comma separated account_guids to list invoices for. (optional)
     - parameter state: (query) Comma separated states to list invoices for. (optional)
     - parameter environment: (query)  (optional)
     - parameter label: (query) Comma separated labels to list invoices for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listInvoices(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil, environment: EnvironmentBankModel_listInvoices? = nil, label: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<InvoiceListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listInvoicesWithRequestBuilder(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, accountGuid: accountGuid, state: state, environment: environment, label: label).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List Invoices
     - GET /api/invoices
     - Retrieves a list of invoices.  Required scope: **invoices:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list invoices for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list invoices for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list invoices for. (optional)
     - parameter accountGuid: (query) Comma separated account_guids to list invoices for. (optional)
     - parameter state: (query) Comma separated states to list invoices for. (optional)
     - parameter environment: (query)  (optional)
     - parameter label: (query) Comma separated labels to list invoices for. (optional)
     - returns: RequestBuilder<InvoiceListBankModel> 
     */
    open class func listInvoicesWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, state: String? = nil, environment: EnvironmentBankModel_listInvoices? = nil, label: String? = nil) -> RequestBuilder<InvoiceListBankModel> {
        let localVariablePath = "/api/invoices"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
            "account_guid": accountGuid?.encodeToJSON(),
            "state": state?.encodeToJSON(),
            "environment": environment?.encodeToJSON(),
            "label": label?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvoiceListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
