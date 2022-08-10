# RewardsAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRewards**](RewardsAPI.md#createrewards) | **POST** /api/rewards | Create Reward


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

