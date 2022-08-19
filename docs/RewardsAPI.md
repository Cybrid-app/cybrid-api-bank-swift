# RewardsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRewards**](RewardsAPI.md#createrewards) | **POST** /api/rewards | Create Reward
[**getReward**](RewardsAPI.md#getreward) | **GET** /api/rewards/{reward_guid} | Get Reward
[**listRewards**](RewardsAPI.md#listrewards) | **GET** /api/rewards | Get rewards list


# **createRewards**
```swift
    open class func createRewards(postRewardBankModel: PostRewardBankModel, completion: @escaping (_ data: RewardBankModel?, _ error: Error?) -> Void)
```

Create Reward

Creates a reward.  Required scope: **rewards:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postRewardBankModel = PostReward(customerGuid: "customerGuid_example", symbol: "symbol_example", receiveAmount: 123, deliverAmount: 123) // PostRewardBankModel | 

// Create Reward
RewardsAPI.createRewards(postRewardBankModel: postRewardBankModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postRewardBankModel** | [**PostRewardBankModel**](PostRewardBankModel.md) |  | 

### Return type

[**RewardBankModel**](RewardBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReward**
```swift
    open class func getReward(rewardGuid: String, completion: @escaping (_ data: RewardBankModel?, _ error: Error?) -> Void)
```

Get Reward

Retrieves a reward.  Required scope: **rewards:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let rewardGuid = "rewardGuid_example" // String | Identifier for the reward.

// Get Reward
RewardsAPI.getReward(rewardGuid: rewardGuid) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rewardGuid** | **String** | Identifier for the reward. | 

### Return type

[**RewardBankModel**](RewardBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRewards**
```swift
    open class func listRewards(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, completion: @escaping (_ data: RewardListBankModel?, _ error: Error?) -> Void)
```

Get rewards list

Retrieves a listing of rewards.  Required scope: **rewards:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated reward_guids to list rewards for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list rewards for. (optional)
let customerGuid = "customerGuid_example" // String | Comma separated customer_guids to list rewards for. (optional)

// Get rewards list
RewardsAPI.listRewards(page: page, perPage: perPage, guid: guid, bankGuid: bankGuid, customerGuid: customerGuid) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | The page index to retrieve. | [optional] 
 **perPage** | **Int** | The number of entities per page to return. | [optional] 
 **guid** | **String** | Comma separated reward_guids to list rewards for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list rewards for. | [optional] 
 **customerGuid** | **String** | Comma separated customer_guids to list rewards for. | [optional] 

### Return type

[**RewardListBankModel**](RewardListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

