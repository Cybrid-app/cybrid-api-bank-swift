//
// PaymentInstructionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PaymentInstructionsAPI {

    /**
     Create Payment Instruction
     
     - parameter postPaymentInstructionBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createPaymentInstruction(postPaymentInstructionBankModel: PostPaymentInstructionBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PaymentInstructionBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createPaymentInstructionWithRequestBuilder(postPaymentInstructionBankModel: postPaymentInstructionBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Payment Instruction
     - POST /api/payment_instructions
     - Creates a payment instruction.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the payment instruction details in our private store | | created | The Platform has created the payment instruction | | expired | The PaymentInstruction is no longer valid |    Required scope: **invoices:write**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postPaymentInstructionBankModel: (body)  
     - returns: RequestBuilder<PaymentInstructionBankModel> 
     */
    open class func createPaymentInstructionWithRequestBuilder(postPaymentInstructionBankModel: PostPaymentInstructionBankModel) -> RequestBuilder<PaymentInstructionBankModel> {
        let localVariablePath = "/api/payment_instructions"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postPaymentInstructionBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaymentInstructionBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Payment Instruction
     
     - parameter paymentInstructionGuid: (path) Identifier for the payment instruction. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getPaymentInstruction(paymentInstructionGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PaymentInstructionBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getPaymentInstructionWithRequestBuilder(paymentInstructionGuid: paymentInstructionGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Payment Instruction
     - GET /api/payment_instructions/{payment_instruction_guid}
     - Retrieves a payment_instruction.  Required scope: **invoices:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter paymentInstructionGuid: (path) Identifier for the payment instruction. 
     - returns: RequestBuilder<PaymentInstructionBankModel> 
     */
    open class func getPaymentInstructionWithRequestBuilder(paymentInstructionGuid: String) -> RequestBuilder<PaymentInstructionBankModel> {
        var localVariablePath = "/api/payment_instructions/{payment_instruction_guid}"
        let paymentInstructionGuidPreEscape = "\(APIHelper.mapValueToPathItem(paymentInstructionGuid))"
        let paymentInstructionGuidPostEscape = paymentInstructionGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{payment_instruction_guid}", with: paymentInstructionGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaymentInstructionBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List Payment Instructions
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list payment instructions for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list payment instructions for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list payment instructions for. (optional)
     - parameter invoiceGuid: (query) Comma separated invoice_guids to list payment instructions for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listPaymentInstructions(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, invoiceGuid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PaymentInstructionListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listPaymentInstructionsWithRequestBuilder(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid, invoiceGuid: invoiceGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List Payment Instructions
     - GET /api/payment_instructions
     - Retrieves a list of payment instructions.  Required scope: **invoices:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated guids to list payment instructions for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list payment instructions for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list payment instructions for. (optional)
     - parameter invoiceGuid: (query) Comma separated invoice_guids to list payment instructions for. (optional)
     - returns: RequestBuilder<PaymentInstructionListBankModel> 
     */
    open class func listPaymentInstructionsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, invoiceGuid: String? = nil) -> RequestBuilder<PaymentInstructionListBankModel> {
        let localVariablePath = "/api/payment_instructions"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "customer_guid": customerGuid?.encodeToJSON(),
            "invoice_guid": invoiceGuid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaymentInstructionListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
