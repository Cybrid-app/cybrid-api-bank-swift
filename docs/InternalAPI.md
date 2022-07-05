# InternalAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**internalClaimExchangeSettlementExpectedPayment**](InternalAPI.md#internalclaimexchangesettlementexpectedpayment) | **POST** /api/internal/exchange_settlement_expected_payments/{guid}/claim | Claim Exchange Settlement Expected Payment
[**internalClaimExchangeSettlementPaymentOrder**](InternalAPI.md#internalclaimexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders/{guid}/claim | Claim Exchange Settlement Payment Order
[**internalCreateAccount**](InternalAPI.md#internalcreateaccount) | **POST** /api/internal/accounts | Create Account
[**internalCreateCybridAccount**](InternalAPI.md#internalcreatecybridaccount) | **POST** /api/internal/cybrid_accounts | Create CybridAccount
[**internalCreateExchange**](InternalAPI.md#internalcreateexchange) | **POST** /api/internal/exchanges | Create Exchange
[**internalCreateExchangeAccount**](InternalAPI.md#internalcreateexchangeaccount) | **POST** /api/internal/exchange_accounts | Create ExchangeAccount
[**internalCreateExchangeSettlement**](InternalAPI.md#internalcreateexchangesettlement) | **POST** /api/internal/exchange_settlements | Create Exchange Settlement
[**internalCreateExchangeSettlementApproval**](InternalAPI.md#internalcreateexchangesettlementapproval) | **POST** /api/internal/exchange_settlements/{guid}/approval | Create Exchange Settlement Approval
[**internalCreateExchangeSettlementCompletion**](InternalAPI.md#internalcreateexchangesettlementcompletion) | **POST** /api/internal/exchange_settlements/{guid}/completion | Create Exchange Settlement Completion
[**internalCreateExchangeSettlementExpectedPayment**](InternalAPI.md#internalcreateexchangesettlementexpectedpayment) | **POST** /api/internal/exchange_settlement_expected_payments | Create Exchange Settlement Expected Payment
[**internalCreateExchangeSettlementPaymentOrder**](InternalAPI.md#internalcreateexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders | Create Exchange Settlement Payment Order
[**internalCreateExternalBankAccount**](InternalAPI.md#internalcreateexternalbankaccount) | **POST** /api/internal/external_bank_accounts | Create ExternalBankAccount
[**internalCreateExternalWallet**](InternalAPI.md#internalcreateexternalwallet) | **POST** /api/internal/external_wallets | Create ExternalWallet
[**internalCreateInternalBankAccount**](InternalAPI.md#internalcreateinternalbankaccount) | **POST** /api/internal/internal_bank_accounts | Create InternalBankAccount
[**internalCreateInternalWallet**](InternalAPI.md#internalcreateinternalwallet) | **POST** /api/internal/internal_wallets | Create InternalWallet
[**internalCreateSystemAccount**](InternalAPI.md#internalcreatesystemaccount) | **POST** /api/internal/system_accounts | Create SystemAccount
[**internalCreateTradingConfiguration**](InternalAPI.md#internalcreatetradingconfiguration) | **POST** /api/internal/trading_configurations | Create TradingConfiguration
[**internalGetCybridAccount**](InternalAPI.md#internalgetcybridaccount) | **GET** /api/internal/cybrid_accounts/{account_guid} | Get CybridAccount
[**internalGetExchange**](InternalAPI.md#internalgetexchange) | **GET** /api/internal/exchanges/{exchange_guid} | Get Exchange
[**internalGetExchangeAccount**](InternalAPI.md#internalgetexchangeaccount) | **GET** /api/internal/exchange_accounts/{account_guid} | Get ExchangeAccount
[**internalGetExchangeSettlement**](InternalAPI.md#internalgetexchangesettlement) | **GET** /api/internal/exchange_settlements/{guid} | Get Exchange Settlement
[**internalGetExchangeSettlementExpectedPayment**](InternalAPI.md#internalgetexchangesettlementexpectedpayment) | **GET** /api/internal/exchange_settlement_expected_payments/{guid} | Get Exchange Settlement Expected Payment
[**internalGetExchangeSettlementObligation**](InternalAPI.md#internalgetexchangesettlementobligation) | **GET** /api/internal/exchange_settlement_obligations/{guid} | Get Exchange Settlement Obligation
[**internalGetExchangeSettlementPaymentOrder**](InternalAPI.md#internalgetexchangesettlementpaymentorder) | **GET** /api/internal/exchange_settlement_payment_orders/{guid} | Get Exchange Settlement Payment Order
[**internalListExchanges**](InternalAPI.md#internallistexchanges) | **GET** /api/internal/exchanges | List Exchanges
[**internalListExternalBankAccounts**](InternalAPI.md#internallistexternalbankaccounts) | **GET** /api/internal/external_bank_accounts | List ExternalBankAccounts
[**internalListExternalWallets**](InternalAPI.md#internallistexternalwallets) | **GET** /api/internal/external_wallets | List ExternalWallets
[**internalListInternalBankAccounts**](InternalAPI.md#internallistinternalbankaccounts) | **GET** /api/internal/internal_bank_accounts | List InternalBankAccounts
[**internalListInternalWallets**](InternalAPI.md#internallistinternalwallets) | **GET** /api/internal/internal_wallets | List InternalWallets
[**internalListTransactions**](InternalAPI.md#internallisttransactions) | **GET** /api/internal/transactions | List Transactions


# **internalClaimExchangeSettlementExpectedPayment**
```swift
    open class func internalClaimExchangeSettlementExpectedPayment(guid: String, postInternalClaimExchangeSettlementExpectedPaymentBankModel: PostInternalClaimExchangeSettlementExpectedPaymentBankModel, completion: @escaping (_ data: ExchangeSettlementExpectedPaymentBankModel?, _ error: Error?) -> Void)
```

Claim Exchange Settlement Expected Payment

Claim an Exchange Settlement Expected Payments.  Required scope: **internal:exchange_settlements:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement expected payment.
let postInternalClaimExchangeSettlementExpectedPaymentBankModel = PostInternalClaimExchangeSettlementExpectedPayment(systemTransaction: PostInternalSystemTransaction(guid: "guid_example", providerId: "providerId_example", systemAccountGuid: "systemAccountGuid_example", amount: 123, assetCode: "assetCode_example", direction: "direction_example", _description: "_description_example")) // PostInternalClaimExchangeSettlementExpectedPaymentBankModel | 

// Claim Exchange Settlement Expected Payment
InternalAPI.internalClaimExchangeSettlementExpectedPayment(guid: guid, postInternalClaimExchangeSettlementExpectedPaymentBankModel: postInternalClaimExchangeSettlementExpectedPaymentBankModel) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement expected payment. | 
 **postInternalClaimExchangeSettlementExpectedPaymentBankModel** | [**PostInternalClaimExchangeSettlementExpectedPaymentBankModel**](PostInternalClaimExchangeSettlementExpectedPaymentBankModel.md) |  | 

### Return type

[**ExchangeSettlementExpectedPaymentBankModel**](ExchangeSettlementExpectedPaymentBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalClaimExchangeSettlementPaymentOrder**
```swift
    open class func internalClaimExchangeSettlementPaymentOrder(guid: String, postInternalClaimExchangeSettlementPaymentOrderBankModel: PostInternalClaimExchangeSettlementPaymentOrderBankModel, completion: @escaping (_ data: ExchangeSettlementPaymentOrderBankModel?, _ error: Error?) -> Void)
```

Claim Exchange Settlement Payment Order

Claim an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement expected payment.
let postInternalClaimExchangeSettlementPaymentOrderBankModel = PostInternalClaimExchangeSettlementPaymentOrder(systemTransaction: PostInternalSystemTransaction(guid: "guid_example", providerId: "providerId_example", systemAccountGuid: "systemAccountGuid_example", amount: 123, assetCode: "assetCode_example", direction: "direction_example", _description: "_description_example")) // PostInternalClaimExchangeSettlementPaymentOrderBankModel | 

// Claim Exchange Settlement Payment Order
InternalAPI.internalClaimExchangeSettlementPaymentOrder(guid: guid, postInternalClaimExchangeSettlementPaymentOrderBankModel: postInternalClaimExchangeSettlementPaymentOrderBankModel) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement expected payment. | 
 **postInternalClaimExchangeSettlementPaymentOrderBankModel** | [**PostInternalClaimExchangeSettlementPaymentOrderBankModel**](PostInternalClaimExchangeSettlementPaymentOrderBankModel.md) |  | 

### Return type

[**ExchangeSettlementPaymentOrderBankModel**](ExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateAccount**
```swift
    open class func internalCreateAccount(postInternalAccountBankModel: PostInternalAccountBankModel, completion: @escaping (_ data: AccountBankModel?, _ error: Error?) -> Void)
```

Create Account

Create an Account.  Required scope: **internal:accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalAccountBankModel = PostInternalAccount(type: "type_example", name: "name_example", bankGuid: "bankGuid_example", asset: "asset_example") // PostInternalAccountBankModel | 

// Create Account
InternalAPI.internalCreateAccount(postInternalAccountBankModel: postInternalAccountBankModel) { (response, error) in
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
 **postInternalAccountBankModel** | [**PostInternalAccountBankModel**](PostInternalAccountBankModel.md) |  | 

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateCybridAccount**
```swift
    open class func internalCreateCybridAccount(postInternalCybridAccountBankModel: PostInternalCybridAccountBankModel, completion: @escaping (_ data: CybridAccountBankModel?, _ error: Error?) -> Void)
```

Create CybridAccount

Create a CybridAccount.  Required scope: **internal:cybrid_accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalCybridAccountBankModel = PostInternalCybridAccount(type: "type_example", asset: "asset_example", name: "name_example", environment: "environment_example") // PostInternalCybridAccountBankModel | 

// Create CybridAccount
InternalAPI.internalCreateCybridAccount(postInternalCybridAccountBankModel: postInternalCybridAccountBankModel) { (response, error) in
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
 **postInternalCybridAccountBankModel** | [**PostInternalCybridAccountBankModel**](PostInternalCybridAccountBankModel.md) |  | 

### Return type

[**CybridAccountBankModel**](CybridAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchange**
```swift
    open class func internalCreateExchange(postInternalExchangeBankModel: PostInternalExchangeBankModel, completion: @escaping (_ data: ExchangeBankModel?, _ error: Error?) -> Void)
```

Create Exchange

Create an Exchanges.  Required scope: **internal:exchanges:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExchangeBankModel = PostInternalExchange(name: "name_example", provider: "provider_example", environment: "environment_example") // PostInternalExchangeBankModel | 

// Create Exchange
InternalAPI.internalCreateExchange(postInternalExchangeBankModel: postInternalExchangeBankModel) { (response, error) in
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
 **postInternalExchangeBankModel** | [**PostInternalExchangeBankModel**](PostInternalExchangeBankModel.md) |  | 

### Return type

[**ExchangeBankModel**](ExchangeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeAccount**
```swift
    open class func internalCreateExchangeAccount(postInternalExchangeAccountBankModel: PostInternalExchangeAccountBankModel, completion: @escaping (_ data: ExchangeAccountBankModel?, _ error: Error?) -> Void)
```

Create ExchangeAccount

Create an ExchangeAccount.  Required scope: **internal:exchange_accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExchangeAccountBankModel = PostInternalExchangeAccount(type: "type_example", exchangeGuid: "exchangeGuid_example", asset: "asset_example") // PostInternalExchangeAccountBankModel | 

// Create ExchangeAccount
InternalAPI.internalCreateExchangeAccount(postInternalExchangeAccountBankModel: postInternalExchangeAccountBankModel) { (response, error) in
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
 **postInternalExchangeAccountBankModel** | [**PostInternalExchangeAccountBankModel**](PostInternalExchangeAccountBankModel.md) |  | 

### Return type

[**ExchangeAccountBankModel**](ExchangeAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeSettlement**
```swift
    open class func internalCreateExchangeSettlement(postInternalExchangeSettlementBankModel: PostInternalExchangeSettlementBankModel, completion: @escaping (_ data: ExchangeSettlementBankModel?, _ error: Error?) -> Void)
```

Create Exchange Settlement

Create an Exchange Settlements.  Required scope: **internal:exchange_settlements:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExchangeSettlementBankModel = PostInternalExchangeSettlement(exchangeGuid: "exchangeGuid_example", name: "name_example", tradeGuids: ["tradeGuids_example"]) // PostInternalExchangeSettlementBankModel | 

// Create Exchange Settlement
InternalAPI.internalCreateExchangeSettlement(postInternalExchangeSettlementBankModel: postInternalExchangeSettlementBankModel) { (response, error) in
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
 **postInternalExchangeSettlementBankModel** | [**PostInternalExchangeSettlementBankModel**](PostInternalExchangeSettlementBankModel.md) |  | 

### Return type

[**ExchangeSettlementBankModel**](ExchangeSettlementBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeSettlementApproval**
```swift
    open class func internalCreateExchangeSettlementApproval(guid: String, completion: @escaping (_ data: InternalCreateExchangeSettlementApproval202ResponseBankModel?, _ error: Error?) -> Void)
```

Create Exchange Settlement Approval

Queue an Exchange Settlement Approval.  Required scope: **internal:exchange_settlements:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement.

// Create Exchange Settlement Approval
InternalAPI.internalCreateExchangeSettlementApproval(guid: guid) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement. | 

### Return type

[**InternalCreateExchangeSettlementApproval202ResponseBankModel**](InternalCreateExchangeSettlementApproval202ResponseBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeSettlementCompletion**
```swift
    open class func internalCreateExchangeSettlementCompletion(guid: String, completion: @escaping (_ data: InternalCreateExchangeSettlementApproval202ResponseBankModel?, _ error: Error?) -> Void)
```

Create Exchange Settlement Completion

Queue an Exchange Settlement Completion.  Required scope: **internal:exchange_settlements:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement.

// Create Exchange Settlement Completion
InternalAPI.internalCreateExchangeSettlementCompletion(guid: guid) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement. | 

### Return type

[**InternalCreateExchangeSettlementApproval202ResponseBankModel**](InternalCreateExchangeSettlementApproval202ResponseBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeSettlementExpectedPayment**
```swift
    open class func internalCreateExchangeSettlementExpectedPayment(postInternalExchangeSettlementExpectedPaymentBankModel: PostInternalExchangeSettlementExpectedPaymentBankModel, completion: @escaping (_ data: ExchangeSettlementExpectedPaymentBankModel?, _ error: Error?) -> Void)
```

Create Exchange Settlement Expected Payment

Create an Exchange Settlement Expected Payments.  Required scope: **internal:exchange_settlements:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExchangeSettlementExpectedPaymentBankModel = PostInternalExchangeSettlementExpectedPayment(exchangeSettlementGuid: "exchangeSettlementGuid_example", exchangeSettlementObligationGuid: "exchangeSettlementObligationGuid_example", sequenceNumber: 123, paymentAmount: 123, internalAccountGuid: "internalAccountGuid_example", internalAccountType: "internalAccountType_example") // PostInternalExchangeSettlementExpectedPaymentBankModel | 

// Create Exchange Settlement Expected Payment
InternalAPI.internalCreateExchangeSettlementExpectedPayment(postInternalExchangeSettlementExpectedPaymentBankModel: postInternalExchangeSettlementExpectedPaymentBankModel) { (response, error) in
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
 **postInternalExchangeSettlementExpectedPaymentBankModel** | [**PostInternalExchangeSettlementExpectedPaymentBankModel**](PostInternalExchangeSettlementExpectedPaymentBankModel.md) |  | 

### Return type

[**ExchangeSettlementExpectedPaymentBankModel**](ExchangeSettlementExpectedPaymentBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeSettlementPaymentOrder**
```swift
    open class func internalCreateExchangeSettlementPaymentOrder(postInternalExchangeSettlementPaymentOrderBankModel: PostInternalExchangeSettlementPaymentOrderBankModel, completion: @escaping (_ data: ExchangeSettlementPaymentOrderBankModel?, _ error: Error?) -> Void)
```

Create Exchange Settlement Payment Order

Create an Exchange Settlement Payment Orders.  Required scope: **internal:exchange_settlements:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExchangeSettlementPaymentOrderBankModel = PostInternalExchangeSettlementPaymentOrder(exchangeSettlementGuid: "exchangeSettlementGuid_example", exchangeSettlementObligationGuid: "exchangeSettlementObligationGuid_example", sequenceNumber: 123, paymentAmount: 123, internalAccountGuid: "internalAccountGuid_example", internalAccountType: "internalAccountType_example", externalAccountGuid: "externalAccountGuid_example", externalAccountType: "externalAccountType_example") // PostInternalExchangeSettlementPaymentOrderBankModel | 

// Create Exchange Settlement Payment Order
InternalAPI.internalCreateExchangeSettlementPaymentOrder(postInternalExchangeSettlementPaymentOrderBankModel: postInternalExchangeSettlementPaymentOrderBankModel) { (response, error) in
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
 **postInternalExchangeSettlementPaymentOrderBankModel** | [**PostInternalExchangeSettlementPaymentOrderBankModel**](PostInternalExchangeSettlementPaymentOrderBankModel.md) |  | 

### Return type

[**ExchangeSettlementPaymentOrderBankModel**](ExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExternalBankAccount**
```swift
    open class func internalCreateExternalBankAccount(postInternalExternalBankAccountBankModel: PostInternalExternalBankAccountBankModel, completion: @escaping (_ data: InternalExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Create ExternalBankAccount

Create an ExternalBankAccount.  Required scope: **internal:accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExternalBankAccountBankModel = PostInternalExternalBankAccount(name: "name_example", accountKind: "accountKind_example", providerId: "providerId_example", exchangeGuid: "exchangeGuid_example", bankGuid: "bankGuid_example", asset: "asset_example") // PostInternalExternalBankAccountBankModel | 

// Create ExternalBankAccount
InternalAPI.internalCreateExternalBankAccount(postInternalExternalBankAccountBankModel: postInternalExternalBankAccountBankModel) { (response, error) in
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
 **postInternalExternalBankAccountBankModel** | [**PostInternalExternalBankAccountBankModel**](PostInternalExternalBankAccountBankModel.md) |  | 

### Return type

[**InternalExternalBankAccountBankModel**](InternalExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExternalWallet**
```swift
    open class func internalCreateExternalWallet(postInternalExternalWalletBankModel: PostInternalExternalWalletBankModel, completion: @escaping (_ data: InternalExternalWalletBankModel?, _ error: Error?) -> Void)
```

Create ExternalWallet

Create an ExternalWallet.  Required scope: **internal:accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExternalWalletBankModel = PostInternalExternalWallet(name: "name_example", accountKind: "accountKind_example", providerId: "providerId_example", exchangeGuid: "exchangeGuid_example", asset: "asset_example") // PostInternalExternalWalletBankModel | 

// Create ExternalWallet
InternalAPI.internalCreateExternalWallet(postInternalExternalWalletBankModel: postInternalExternalWalletBankModel) { (response, error) in
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
 **postInternalExternalWalletBankModel** | [**PostInternalExternalWalletBankModel**](PostInternalExternalWalletBankModel.md) |  | 

### Return type

[**InternalExternalWalletBankModel**](InternalExternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateInternalBankAccount**
```swift
    open class func internalCreateInternalBankAccount(postInternalInternalBankAccountBankModel: PostInternalInternalBankAccountBankModel, completion: @escaping (_ data: InternalInternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Create InternalBankAccount

Create an InternalBankAccount.  Required scope: **internal:accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalInternalBankAccountBankModel = PostInternalInternalBankAccount(name: "name_example", accountKind: "accountKind_example", providerId: "providerId_example", systemAccountGuid: "systemAccountGuid_example") // PostInternalInternalBankAccountBankModel | 

// Create InternalBankAccount
InternalAPI.internalCreateInternalBankAccount(postInternalInternalBankAccountBankModel: postInternalInternalBankAccountBankModel) { (response, error) in
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
 **postInternalInternalBankAccountBankModel** | [**PostInternalInternalBankAccountBankModel**](PostInternalInternalBankAccountBankModel.md) |  | 

### Return type

[**InternalInternalBankAccountBankModel**](InternalInternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateInternalWallet**
```swift
    open class func internalCreateInternalWallet(postInternalInternalWalletBankModel: PostInternalInternalWalletBankModel, completion: @escaping (_ data: InternalInternalWalletBankModel?, _ error: Error?) -> Void)
```

Create InternalWallet

Create an InternalWallet.  Required scope: **internal:accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalInternalWalletBankModel = PostInternalInternalWallet(name: "name_example", accountKind: "accountKind_example", providerId: "providerId_example", systemAccountGuid: "systemAccountGuid_example") // PostInternalInternalWalletBankModel | 

// Create InternalWallet
InternalAPI.internalCreateInternalWallet(postInternalInternalWalletBankModel: postInternalInternalWalletBankModel) { (response, error) in
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
 **postInternalInternalWalletBankModel** | [**PostInternalInternalWalletBankModel**](PostInternalInternalWalletBankModel.md) |  | 

### Return type

[**InternalInternalWalletBankModel**](InternalInternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateSystemAccount**
```swift
    open class func internalCreateSystemAccount(postInternalSystemAccountBankModel: PostInternalSystemAccountBankModel, completion: @escaping (_ data: SystemAccountBankModel?, _ error: Error?) -> Void)
```

Create SystemAccount

Create a SystemAccount.  Required scope: **internal:system_accounts:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalSystemAccountBankModel = PostInternalSystemAccount(type: "type_example", asset: "asset_example", name: "name_example", environment: "environment_example") // PostInternalSystemAccountBankModel | 

// Create SystemAccount
InternalAPI.internalCreateSystemAccount(postInternalSystemAccountBankModel: postInternalSystemAccountBankModel) { (response, error) in
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
 **postInternalSystemAccountBankModel** | [**PostInternalSystemAccountBankModel**](PostInternalSystemAccountBankModel.md) |  | 

### Return type

[**SystemAccountBankModel**](SystemAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateTradingConfiguration**
```swift
    open class func internalCreateTradingConfiguration(postTradingConfigurationBankModel: PostTradingConfigurationBankModel, completion: @escaping (_ data: TradingConfigurationBankModel?, _ error: Error?) -> Void)
```

Create TradingConfiguration

Creates a trading configuration.  Required scope: **internal:banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postTradingConfigurationBankModel = PostTradingConfiguration(asset: "asset_example", fees: [PostFee(type: "type_example", spreadFee: 123, fixedFee: 123)]) // PostTradingConfigurationBankModel | 

// Create TradingConfiguration
InternalAPI.internalCreateTradingConfiguration(postTradingConfigurationBankModel: postTradingConfigurationBankModel) { (response, error) in
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
 **postTradingConfigurationBankModel** | [**PostTradingConfigurationBankModel**](PostTradingConfigurationBankModel.md) |  | 

### Return type

[**TradingConfigurationBankModel**](TradingConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetCybridAccount**
```swift
    open class func internalGetCybridAccount(accountGuid: String, completion: @escaping (_ data: CybridAccountBankModel?, _ error: Error?) -> Void)
```

Get CybridAccount

Get an CybridAccount.  Required scope: **internal:cybrid_accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let accountGuid = "accountGuid_example" // String | Identifier for the Cybrid account.

// Get CybridAccount
InternalAPI.internalGetCybridAccount(accountGuid: accountGuid) { (response, error) in
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
 **accountGuid** | **String** | Identifier for the Cybrid account. | 

### Return type

[**CybridAccountBankModel**](CybridAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchange**
```swift
    open class func internalGetExchange(exchangeGuid: String, completion: @escaping (_ data: ExchangeBankModel?, _ error: Error?) -> Void)
```

Get Exchange

Get an Exchange.  Required scope: **internal:exchanges:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let exchangeGuid = "exchangeGuid_example" // String | Identifier for the exchange.

// Get Exchange
InternalAPI.internalGetExchange(exchangeGuid: exchangeGuid) { (response, error) in
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
 **exchangeGuid** | **String** | Identifier for the exchange. | 

### Return type

[**ExchangeBankModel**](ExchangeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeAccount**
```swift
    open class func internalGetExchangeAccount(accountGuid: String, completion: @escaping (_ data: ExchangeAccountBankModel?, _ error: Error?) -> Void)
```

Get ExchangeAccount

Get an ExchangeAccount.  Required scope: **internal:exchange_accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let accountGuid = "accountGuid_example" // String | Identifier for the bank.

// Get ExchangeAccount
InternalAPI.internalGetExchangeAccount(accountGuid: accountGuid) { (response, error) in
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
 **accountGuid** | **String** | Identifier for the bank. | 

### Return type

[**ExchangeAccountBankModel**](ExchangeAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeSettlement**
```swift
    open class func internalGetExchangeSettlement(guid: String, completion: @escaping (_ data: ExchangeSettlementBankModel?, _ error: Error?) -> Void)
```

Get Exchange Settlement

Get an Exchange Settlement.  Required scope: **internal:exchange_settlements:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement.

// Get Exchange Settlement
InternalAPI.internalGetExchangeSettlement(guid: guid) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement. | 

### Return type

[**ExchangeSettlementBankModel**](ExchangeSettlementBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeSettlementExpectedPayment**
```swift
    open class func internalGetExchangeSettlementExpectedPayment(guid: String, completion: @escaping (_ data: ExchangeSettlementExpectedPaymentBankModel?, _ error: Error?) -> Void)
```

Get Exchange Settlement Expected Payment

Get an Exchange Settlement Expected Payment.  Required scope: **internal:exchange_settlements:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement expected payment.

// Get Exchange Settlement Expected Payment
InternalAPI.internalGetExchangeSettlementExpectedPayment(guid: guid) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement expected payment. | 

### Return type

[**ExchangeSettlementExpectedPaymentBankModel**](ExchangeSettlementExpectedPaymentBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeSettlementObligation**
```swift
    open class func internalGetExchangeSettlementObligation(guid: String, completion: @escaping (_ data: ExchangeSettlementObligationBankModel?, _ error: Error?) -> Void)
```

Get Exchange Settlement Obligation

Get an Exchange Settlement Obligation.  Required scope: **internal:exchange_settlements:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement obligation.

// Get Exchange Settlement Obligation
InternalAPI.internalGetExchangeSettlementObligation(guid: guid) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement obligation. | 

### Return type

[**ExchangeSettlementObligationBankModel**](ExchangeSettlementObligationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeSettlementPaymentOrder**
```swift
    open class func internalGetExchangeSettlementPaymentOrder(guid: String, completion: @escaping (_ data: ExchangeSettlementPaymentOrderBankModel?, _ error: Error?) -> Void)
```

Get Exchange Settlement Payment Order

Get an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement payment order.

// Get Exchange Settlement Payment Order
InternalAPI.internalGetExchangeSettlementPaymentOrder(guid: guid) { (response, error) in
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
 **guid** | **String** | Identifier for the exchange settlement payment order. | 

### Return type

[**ExchangeSettlementPaymentOrderBankModel**](ExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalListExchanges**
```swift
    open class func internalListExchanges(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ExchangeListBankModel?, _ error: Error?) -> Void)
```

List Exchanges

Retrieves a listing of exchanges.  Required scope: **internal:exchanges:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)

// List Exchanges
InternalAPI.internalListExchanges(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 

### Return type

[**ExchangeListBankModel**](ExchangeListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalListExternalBankAccounts**
```swift
    open class func internalListExternalBankAccounts(page: Int? = nil, perPage: Int? = nil, asset: String? = nil, bankGuid: String? = nil, exchangeGuid: String? = nil, completion: @escaping (_ data: InternalExternalBankAccountListBankModel?, _ error: Error?) -> Void)
```

List ExternalBankAccounts

Retrieves a listing of external bank accounts.  Required scope: **internal:accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)
let asset = "asset_example" // String | Comma separated assets to list bank accounts for. (optional)
let bankGuid = "bankGuid_example" // String | Comma separated bank_guids to list bank accounts for. (optional)
let exchangeGuid = "exchangeGuid_example" // String | Comma separated exchange_guids to list bank accounts for. (optional)

// List ExternalBankAccounts
InternalAPI.internalListExternalBankAccounts(page: page, perPage: perPage, asset: asset, bankGuid: bankGuid, exchangeGuid: exchangeGuid) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 
 **asset** | **String** | Comma separated assets to list bank accounts for. | [optional] 
 **bankGuid** | **String** | Comma separated bank_guids to list bank accounts for. | [optional] 
 **exchangeGuid** | **String** | Comma separated exchange_guids to list bank accounts for. | [optional] 

### Return type

[**InternalExternalBankAccountListBankModel**](InternalExternalBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalListExternalWallets**
```swift
    open class func internalListExternalWallets(page: Int? = nil, perPage: Int? = nil, asset: String? = nil, exchangeGuid: String? = nil, completion: @escaping (_ data: InternalExternalWalletListBankModel?, _ error: Error?) -> Void)
```

List ExternalWallets

Retrieves a listing of external wallets.  Required scope: **internal:accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)
let asset = "asset_example" // String | Comma separated assets to list wallets for. (optional)
let exchangeGuid = "exchangeGuid_example" // String | Comma separated exchange_guids to list wallets for. (optional)

// List ExternalWallets
InternalAPI.internalListExternalWallets(page: page, perPage: perPage, asset: asset, exchangeGuid: exchangeGuid) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 
 **asset** | **String** | Comma separated assets to list wallets for. | [optional] 
 **exchangeGuid** | **String** | Comma separated exchange_guids to list wallets for. | [optional] 

### Return type

[**InternalExternalWalletListBankModel**](InternalExternalWalletListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalListInternalBankAccounts**
```swift
    open class func internalListInternalBankAccounts(page: Int? = nil, perPage: Int? = nil, asset: String? = nil, accountKind: String? = nil, completion: @escaping (_ data: InternalInternalBankAccountListBankModel?, _ error: Error?) -> Void)
```

List InternalBankAccounts

Retrieves a listing of internal bank accounts.  Required scope: **internal:accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)
let asset = "asset_example" // String | Comma separated assets to list bank accounts for. (optional)
let accountKind = "accountKind_example" // String | Comma separated account kinds to list bank accounts for. (optional)

// List InternalBankAccounts
InternalAPI.internalListInternalBankAccounts(page: page, perPage: perPage, asset: asset, accountKind: accountKind) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 
 **asset** | **String** | Comma separated assets to list bank accounts for. | [optional] 
 **accountKind** | **String** | Comma separated account kinds to list bank accounts for. | [optional] 

### Return type

[**InternalInternalBankAccountListBankModel**](InternalInternalBankAccountListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalListInternalWallets**
```swift
    open class func internalListInternalWallets(page: Int? = nil, perPage: Int? = nil, asset: String? = nil, completion: @escaping (_ data: InternalInternalWalletListBankModel?, _ error: Error?) -> Void)
```

List InternalWallets

Retrieves a listing of internal wallets.  Required scope: **internal:accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)
let asset = "asset_example" // String | Comma separated assets to list wallets for. (optional)

// List InternalWallets
InternalAPI.internalListInternalWallets(page: page, perPage: perPage, asset: asset) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 
 **asset** | **String** | Comma separated assets to list wallets for. | [optional] 

### Return type

[**InternalInternalWalletListBankModel**](InternalInternalWalletListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalListTransactions**
```swift
    open class func internalListTransactions(environment: EnvironmentBankModel_internalListTransactions, accountGuid: String, accountType: AccountTypeBankModel_internalListTransactions, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: [InternalTransactionBankModel]?, _ error: Error?) -> Void)
```

List Transactions

Retrieves a listing of transactions.  Required scope: **internal:transfers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let environment = "environment_example" // String | 
let accountGuid = "accountGuid_example" // String | 
let accountType = "accountType_example" // String | 
let page = 987 // Int |  (optional)
let perPage = 987 // Int |  (optional)

// List Transactions
InternalAPI.internalListTransactions(environment: environment, accountGuid: accountGuid, accountType: accountType, page: page, perPage: perPage) { (response, error) in
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
 **environment** | **String** |  | 
 **accountGuid** | **String** |  | 
 **accountType** | **String** |  | 
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** |  | [optional] 

### Return type

[**[InternalTransactionBankModel]**](InternalTransactionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

