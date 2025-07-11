//
// PersonaSessionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PersonaSessionsAPI {

    /**
     Create Persona Session
     
     - parameter postPersonaSessionBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createPersonaSession(postPersonaSessionBankModel: PostPersonaSessionBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PersonaSessionBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createPersonaSessionWithRequestBuilder(postPersonaSessionBankModel: postPersonaSessionBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Persona Session
     - POST /api/persona_sessions
     - Create a Persona session.  Required scope: **persona_sessions:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postPersonaSessionBankModel: (body)  
     - returns: RequestBuilder<PersonaSessionBankModel> 
     */
    open class func createPersonaSessionWithRequestBuilder(postPersonaSessionBankModel: PostPersonaSessionBankModel) -> RequestBuilder<PersonaSessionBankModel> {
        let localVariablePath = "/api/persona_sessions"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postPersonaSessionBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PersonaSessionBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
