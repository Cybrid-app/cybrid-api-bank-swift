//
// CustomersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CustomersAPI {

    /**
     Create Customer
     
     - parameter postCustomerBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createCustomer(postCustomerBankModel: PostCustomerBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<CustomerBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createCustomerWithRequestBuilder(postCustomerBankModel: postCustomerBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Customer
     - POST /api/customers
     - Creates a customer.  ## Customer Type  Customer resources are an abstraction for real world individuals and businesses on the Cybrid Platform and are used throughout the platform to perform high level operations, e.g., create a quote, execute a trade, etc..  Customers can have additional resources attached to them, e.g., identity records, accounts, etc.  At present, Customer's can be created with type `individual`.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the customer details in our private store | | unverified | The Platform has not yet verified the customer's identity | | verified | The Platform has verified the customer's identity | | rejected | The Platform was not able to successfully verify the customer's identity |    Required scope: **customers:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postCustomerBankModel: (body)  
     - returns: RequestBuilder<CustomerBankModel> 
     */
    open class func createCustomerWithRequestBuilder(postCustomerBankModel: PostCustomerBankModel) -> RequestBuilder<CustomerBankModel> {
        let localVariablePath = "/api/customers"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postCustomerBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Customer
     
     - parameter customerGuid: (path) Identifier for the customer. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getCustomer(customerGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<CustomerBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getCustomerWithRequestBuilder(customerGuid: customerGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Customer
     - GET /api/customers/{customer_guid}
     - Retrieves a customer.  Required scope: **customers:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter customerGuid: (path) Identifier for the customer. 
     - returns: RequestBuilder<CustomerBankModel> 
     */
    open class func getCustomerWithRequestBuilder(customerGuid: String) -> RequestBuilder<CustomerBankModel> {
        var localVariablePath = "/api/customers/{customer_guid}"
        let customerGuidPreEscape = "\(APIHelper.mapValueToPathItem(customerGuid))"
        let customerGuidPostEscape = customerGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{customer_guid}", with: customerGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get customers list
     
     - parameter page: (query)  (optional)
     - parameter perPage: (query)  (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list customers for. (optional)
     - parameter guid: (query) Comma separated customer_guids to list customers for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listCustomers(page: Int? = nil, perPage: Int? = nil, bankGuid: String? = nil, guid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<CustomerListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listCustomersWithRequestBuilder(page: page, perPage: perPage, bankGuid: bankGuid, guid: guid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get customers list
     - GET /api/customers
     - Retrieves a listing of customers.  Required scope: **customers:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query)  (optional)
     - parameter perPage: (query)  (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list customers for. (optional)
     - parameter guid: (query) Comma separated customer_guids to list customers for. (optional)
     - returns: RequestBuilder<CustomerListBankModel> 
     */
    open class func listCustomersWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, bankGuid: String? = nil, guid: String? = nil) -> RequestBuilder<CustomerListBankModel> {
        let localVariablePath = "/api/customers"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "bank_guid": bankGuid?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CustomerListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
