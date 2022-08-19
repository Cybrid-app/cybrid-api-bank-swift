//
// RewardsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class RewardsAPI {

    /**
     Create Reward
     
     - parameter postRewardBankModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createRewards(postRewardBankModel: PostRewardBankModel, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<RewardBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return createRewardsWithRequestBuilder(postRewardBankModel: postRewardBankModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Reward
     - POST /api/rewards
     - Creates a reward.  Required scope: **rewards:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postRewardBankModel: (body)  
     - returns: RequestBuilder<RewardBankModel> 
     */
    open class func createRewardsWithRequestBuilder(postRewardBankModel: PostRewardBankModel) -> RequestBuilder<RewardBankModel> {
        let localVariablePath = "/api/rewards"
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postRewardBankModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RewardBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Reward
     
     - parameter rewardGuid: (path) Identifier for the reward. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getReward(rewardGuid: String, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<RewardBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getRewardWithRequestBuilder(rewardGuid: rewardGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Reward
     - GET /api/rewards/{reward_guid}
     - Retrieves a reward.  Required scope: **rewards:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter rewardGuid: (path) Identifier for the reward. 
     - returns: RequestBuilder<RewardBankModel> 
     */
    open class func getRewardWithRequestBuilder(rewardGuid: String) -> RequestBuilder<RewardBankModel> {
        var localVariablePath = "/api/rewards/{reward_guid}"
        let rewardGuidPreEscape = "\(APIHelper.mapValueToPathItem(rewardGuid))"
        let rewardGuidPostEscape = rewardGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{reward_guid}", with: rewardGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiBankSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RewardBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get rewards list
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated reward_guids to list rewards for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list rewards for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list rewards for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listRewards(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiBankSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<RewardListBankModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listRewardsWithRequestBuilder(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get rewards list
     - GET /api/rewards
     - Retrieves a listing of rewards.  Required scope: **rewards:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated reward_guids to list rewards for. (optional)
     - parameter bankGuid: (query) Comma separated bank_guids to list rewards for. (optional)
     - parameter customerGuid: (query) Comma separated customer_guids to list rewards for. (optional)
     - returns: RequestBuilder<RewardListBankModel> 
     */
    open class func listRewardsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil) -> RequestBuilder<RewardListBankModel> {
        let localVariablePath = "/api/rewards"
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

        let localVariableRequestBuilder: RequestBuilder<RewardListBankModel>.Type = CybridApiBankSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
