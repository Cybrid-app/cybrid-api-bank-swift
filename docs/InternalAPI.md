# InternalAPI

All URIs are relative to *http://api-bank.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**internalClaimExchangeSettlementPaymentOrder**](InternalAPI.md#internalclaimexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders/{guid}/claim | Claim Exchange Settlement Payment Order
[**internalClaimExpectedPayment**](InternalAPI.md#internalclaimexpectedpayment) | **POST** /api/internal/expected_payments/{guid}/claim | Claim Expected Payment
[**internalCreateAccount**](InternalAPI.md#internalcreateaccount) | **POST** /api/internal/accounts | Create Account
[**internalCreateComplianceDecision**](InternalAPI.md#internalcreatecompliancedecision) | **POST** /api/internal/compliance_decisions | Create Compliance Decision
[**internalCreateCountryCodeConfiguration**](InternalAPI.md#internalcreatecountrycodeconfiguration) | **POST** /api/internal/country_code_configurations | Create CountryCodeConfiguration
[**internalCreateCybridAccount**](InternalAPI.md#internalcreatecybridaccount) | **POST** /api/internal/cybrid_accounts | Create CybridAccount
[**internalCreateExchange**](InternalAPI.md#internalcreateexchange) | **POST** /api/internal/exchanges | Create Exchange
[**internalCreateExchangeAccount**](InternalAPI.md#internalcreateexchangeaccount) | **POST** /api/internal/exchange_accounts | Create ExchangeAccount
[**internalCreateExchangeSettlement**](InternalAPI.md#internalcreateexchangesettlement) | **POST** /api/internal/exchange_settlements | Create Exchange Settlement
[**internalCreateExchangeSettlementApproval**](InternalAPI.md#internalcreateexchangesettlementapproval) | **POST** /api/internal/exchange_settlements/{guid}/approval | Create Exchange Settlement Approval
[**internalCreateExchangeSettlementCompletion**](InternalAPI.md#internalcreateexchangesettlementcompletion) | **POST** /api/internal/exchange_settlements/{guid}/completion | Create Exchange Settlement Completion
[**internalCreateExchangeSettlementPaymentOrder**](InternalAPI.md#internalcreateexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders | Create Exchange Settlement Payment Order
[**internalCreateExpectedPayment**](InternalAPI.md#internalcreateexpectedpayment) | **POST** /api/internal/expected_payments | Create Expected Payment
[**internalCreateExternalBankAccount**](InternalAPI.md#internalcreateexternalbankaccount) | **POST** /api/internal/external_bank_accounts | Create ExternalBankAccount
[**internalCreateExternalWallet**](InternalAPI.md#internalcreateexternalwallet) | **POST** /api/internal/external_wallets | Create ExternalWallet
[**internalCreateFeeConfiguration**](InternalAPI.md#internalcreatefeeconfiguration) | **POST** /api/internal/fee_configurations | Create FeeConfiguration
[**internalCreateFiatAssetConfiguration**](InternalAPI.md#internalcreatefiatassetconfiguration) | **POST** /api/internal/fiat_asset_configurations | Create FiatAssetConfiguration
[**internalCreateInternalBankAccount**](InternalAPI.md#internalcreateinternalbankaccount) | **POST** /api/internal/internal_bank_accounts | Create InternalBankAccount
[**internalCreateInternalWallet**](InternalAPI.md#internalcreateinternalwallet) | **POST** /api/internal/internal_wallets | Create InternalWallet
[**internalCreatePersonDetails**](InternalAPI.md#internalcreatepersondetails) | **POST** /api/internal/person_details | Create Person Details
[**internalCreateSavingsAssetConfiguration**](InternalAPI.md#internalcreatesavingsassetconfiguration) | **POST** /api/internal/savings_asset_configurations | Create SavingsAssetConfiguration
[**internalCreateTradingSymbolConfiguration**](InternalAPI.md#internalcreatetradingsymbolconfiguration) | **POST** /api/internal/trading_symbol_configurations | Create TradingSymbolConfiguration
[**internalGetCybridAccount**](InternalAPI.md#internalgetcybridaccount) | **GET** /api/internal/cybrid_accounts/{account_guid} | Get CybridAccount
[**internalGetExchange**](InternalAPI.md#internalgetexchange) | **GET** /api/internal/exchanges/{exchange_guid} | Get Exchange
[**internalGetExchangeAccount**](InternalAPI.md#internalgetexchangeaccount) | **GET** /api/internal/exchange_accounts/{account_guid} | Get ExchangeAccount
[**internalGetExchangeSettlement**](InternalAPI.md#internalgetexchangesettlement) | **GET** /api/internal/exchange_settlements/{guid} | Get Exchange Settlement
[**internalGetExchangeSettlementObligation**](InternalAPI.md#internalgetexchangesettlementobligation) | **GET** /api/internal/exchange_settlement_obligations/{guid} | Get Exchange Settlement Obligation
[**internalGetExchangeSettlementPaymentOrder**](InternalAPI.md#internalgetexchangesettlementpaymentorder) | **GET** /api/internal/exchange_settlement_payment_orders/{guid} | Get Exchange Settlement Payment Order
[**internalGetExpectedPayment**](InternalAPI.md#internalgetexpectedpayment) | **GET** /api/internal/expected_payments/{guid} | Get Expected Payment
[**internalGetExternalBankAccount**](InternalAPI.md#internalgetexternalbankaccount) | **GET** /api/internal/external_bank_accounts/{external_bank_account_guid} | Get ExternalBankAccount
[**internalGetInternalBankAccount**](InternalAPI.md#internalgetinternalbankaccount) | **GET** /api/internal/internal_bank_accounts/{internal_bank_account_guid} | Get InternalBankAccount
[**internalGetInternalWallet**](InternalAPI.md#internalgetinternalwallet) | **GET** /api/internal/internal_wallets/{internal_wallet_guid} | Get InternalWallet
[**internalListExchanges**](InternalAPI.md#internallistexchanges) | **GET** /api/internal/exchanges | List Exchanges
[**internalListExternalBankAccounts**](InternalAPI.md#internallistexternalbankaccounts) | **GET** /api/internal/external_bank_accounts | List ExternalBankAccounts
[**internalListExternalWallets**](InternalAPI.md#internallistexternalwallets) | **GET** /api/internal/external_wallets | List ExternalWallets
[**internalListInternalBankAccounts**](InternalAPI.md#internallistinternalbankaccounts) | **GET** /api/internal/internal_bank_accounts | List InternalBankAccounts
[**internalListInternalWallets**](InternalAPI.md#internallistinternalwallets) | **GET** /api/internal/internal_wallets | List InternalWallets
[**internalListTransactions**](InternalAPI.md#internallisttransactions) | **GET** /api/internal/transactions | List Transactions
[**internalPatchAccount**](InternalAPI.md#internalpatchaccount) | **PATCH** /api/internal/accounts/{account_guid} | Patch Account
[**internalPatchDepositAddress**](InternalAPI.md#internalpatchdepositaddress) | **PATCH** /api/internal/deposit_addresses/{guid} | Patch Deposit Address
[**internalPatchExternalBankAccount**](InternalAPI.md#internalpatchexternalbankaccount) | **PATCH** /api/internal/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount
[**internalPatchIdentityRecord**](InternalAPI.md#internalpatchidentityrecord) | **PATCH** /api/internal/identity_records/{identity_record_guid} | Patch Identity Record
[**internalPatchIdentityVerification**](InternalAPI.md#internalpatchidentityverification) | **PATCH** /api/internal/identity_verifications/{identity_verification_guid} | Patch Identity Verification
[**internalPatchInternalBankAccount**](InternalAPI.md#internalpatchinternalbankaccount) | **PATCH** /api/internal/internal_bank_accounts/{guid} | Patch Internal Bank Account
[**internalPatchInternalWallet**](InternalAPI.md#internalpatchinternalwallet) | **PATCH** /api/internal/internal_wallets/{guid} | Patch Internal Wallet
[**internalPatchInternalWalletGroup**](InternalAPI.md#internalpatchinternalwalletgroup) | **PATCH** /api/internal/internal_wallet_groups/{guid} | Patch Internal Wallet
[**internalPatchTransfer**](InternalAPI.md#internalpatchtransfer) | **PATCH** /api/internal/transfers/{transfer_guid} | Patch Transfer
[**internalPatchWorkflow**](InternalAPI.md#internalpatchworkflow) | **PATCH** /api/internal/workflows/{workflow_guid} | Patch Workflow


# **internalClaimExchangeSettlementPaymentOrder**
```swift
    open class func internalClaimExchangeSettlementPaymentOrder(guid: String, postInternalClaimExchangeSettlementPaymentOrderBankModel: PostInternalClaimExchangeSettlementPaymentOrderBankModel, completion: @escaping (_ data: InternalExchangeSettlementPaymentOrderBankModel?, _ error: Error?) -> Void)
```

Claim Exchange Settlement Payment Order

Claim an Exchange Settlement Payment Order.  Required scope: **internal:exchange_settlements:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the exchange settlement expected payment.
let postInternalClaimExchangeSettlementPaymentOrderBankModel = PostInternalClaimExchangeSettlementPaymentOrder(systemTransaction: PostInternalSystemTransaction(guid: "guid_example", providerId: "providerId_example", systemAccountGuid: "systemAccountGuid_example", amount: 123, assetCode: "assetCode_example", direction: "direction_example", description: "description_example")) // PostInternalClaimExchangeSettlementPaymentOrderBankModel | 

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

[**InternalExchangeSettlementPaymentOrderBankModel**](InternalExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalClaimExpectedPayment**
```swift
    open class func internalClaimExpectedPayment(guid: String, postInternalClaimExpectedPaymentBankModel: PostInternalClaimExpectedPaymentBankModel, completion: @escaping (_ data: InternalExpectedPaymentBankModel?, _ error: Error?) -> Void)
```

Claim Expected Payment

Claim an Expected Payments.  Required scope: **internal:exchange_settlements:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the expected payment.
let postInternalClaimExpectedPaymentBankModel = PostInternalClaimExpectedPayment(systemTransaction: PostInternalSystemTransaction(guid: "guid_example", providerId: "providerId_example", systemAccountGuid: "systemAccountGuid_example", amount: 123, assetCode: "assetCode_example", direction: "direction_example", description: "description_example")) // PostInternalClaimExpectedPaymentBankModel | 

// Claim Expected Payment
InternalAPI.internalClaimExpectedPayment(guid: guid, postInternalClaimExpectedPaymentBankModel: postInternalClaimExpectedPaymentBankModel) { (response, error) in
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
 **guid** | **String** | Identifier for the expected payment. | 
 **postInternalClaimExpectedPaymentBankModel** | [**PostInternalClaimExpectedPaymentBankModel**](PostInternalClaimExpectedPaymentBankModel.md) |  | 

### Return type

[**InternalExpectedPaymentBankModel**](InternalExpectedPaymentBankModel.md)

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

# **internalCreateComplianceDecision**
```swift
    open class func internalCreateComplianceDecision(postInternalComplianceDecisionBankModel: PostInternalComplianceDecisionBankModel, completion: @escaping (_ data: InternalComplianceDecisionBankModel?, _ error: Error?) -> Void)
```

Create Compliance Decision

Create an Compliance Decision.  Required scope: **internal:customers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalComplianceDecisionBankModel = PostInternalComplianceDecision(type: "type_example", decidedAt: Date(), identityVerificationGuid: "identityVerificationGuid_example", outcome: "outcome_example", failureCodes: ["failureCodes_example"]) // PostInternalComplianceDecisionBankModel | 

// Create Compliance Decision
InternalAPI.internalCreateComplianceDecision(postInternalComplianceDecisionBankModel: postInternalComplianceDecisionBankModel) { (response, error) in
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
 **postInternalComplianceDecisionBankModel** | [**PostInternalComplianceDecisionBankModel**](PostInternalComplianceDecisionBankModel.md) |  | 

### Return type

[**InternalComplianceDecisionBankModel**](InternalComplianceDecisionBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateCountryCodeConfiguration**
```swift
    open class func internalCreateCountryCodeConfiguration(postInternalCountryCodeConfigurationBankModel: PostInternalCountryCodeConfigurationBankModel, completion: @escaping (_ data: InternalCountryCodeConfigurationBankModel?, _ error: Error?) -> Void)
```

Create CountryCodeConfiguration

Creates a country code configuration.  Required scope: **internal:banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalCountryCodeConfigurationBankModel = PostInternalCountryCodeConfiguration(type: "type_example", environment: "environment_example", bankGuid: "bankGuid_example", enabled: false, code: "code_example") // PostInternalCountryCodeConfigurationBankModel | 

// Create CountryCodeConfiguration
InternalAPI.internalCreateCountryCodeConfiguration(postInternalCountryCodeConfigurationBankModel: postInternalCountryCodeConfigurationBankModel) { (response, error) in
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
 **postInternalCountryCodeConfigurationBankModel** | [**PostInternalCountryCodeConfigurationBankModel**](PostInternalCountryCodeConfigurationBankModel.md) |  | 

### Return type

[**InternalCountryCodeConfigurationBankModel**](InternalCountryCodeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateCybridAccount**
```swift
    open class func internalCreateCybridAccount(postInternalCybridAccountBankModel: PostInternalCybridAccountBankModel, completion: @escaping (_ data: InternalCybridAccountBankModel?, _ error: Error?) -> Void)
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

[**InternalCybridAccountBankModel**](InternalCybridAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchange**
```swift
    open class func internalCreateExchange(postInternalExchangeBankModel: PostInternalExchangeBankModel, completion: @escaping (_ data: InternalExchangeBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeBankModel**](InternalExchangeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeAccount**
```swift
    open class func internalCreateExchangeAccount(postInternalExchangeAccountBankModel: PostInternalExchangeAccountBankModel, completion: @escaping (_ data: InternalExchangeAccountBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeAccountBankModel**](InternalExchangeAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExchangeSettlement**
```swift
    open class func internalCreateExchangeSettlement(postInternalExchangeSettlementBankModel: PostInternalExchangeSettlementBankModel, completion: @escaping (_ data: InternalExchangeSettlementBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeSettlementBankModel**](InternalExchangeSettlementBankModel.md)

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

# **internalCreateExchangeSettlementPaymentOrder**
```swift
    open class func internalCreateExchangeSettlementPaymentOrder(postInternalExchangeSettlementPaymentOrderBankModel: PostInternalExchangeSettlementPaymentOrderBankModel, completion: @escaping (_ data: InternalExchangeSettlementPaymentOrderBankModel?, _ error: Error?) -> Void)
```

Create Exchange Settlement Payment Order

Create an Exchange Settlement Payment Orders.  Required scope: **internal:exchange_settlements:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExchangeSettlementPaymentOrderBankModel = PostInternalExchangeSettlementPaymentOrder(exchangeSettlementGuid: "exchangeSettlementGuid_example", exchangeSettlementObligationGuid: "exchangeSettlementObligationGuid_example", sequenceNumber: 123, paymentAmount: 123, expectedState: "expectedState_example", internalAccountGuid: "internalAccountGuid_example", internalAccountType: "internalAccountType_example", externalAccountGuid: "externalAccountGuid_example", externalAccountType: "externalAccountType_example") // PostInternalExchangeSettlementPaymentOrderBankModel | 

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

[**InternalExchangeSettlementPaymentOrderBankModel**](InternalExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateExpectedPayment**
```swift
    open class func internalCreateExpectedPayment(postInternalExpectedPaymentBankModel: PostInternalExpectedPaymentBankModel, completion: @escaping (_ data: InternalExpectedPaymentBankModel?, _ error: Error?) -> Void)
```

Create Expected Payment

Create an Expected Payments.  Required scope: **internal:exchange_settlements:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalExpectedPaymentBankModel = PostInternalExpectedPayment(paymentKind: "paymentKind_example", nonce: 123, paymentAmount: 123, internalAccountGuid: "internalAccountGuid_example", internalAccountType: "internalAccountType_example", exchangeSettlementGuid: "exchangeSettlementGuid_example", exchangeSettlementObligationGuid: "exchangeSettlementObligationGuid_example", environment: "environment_example", creditAccountGuid: "creditAccountGuid_example") // PostInternalExpectedPaymentBankModel | 

// Create Expected Payment
InternalAPI.internalCreateExpectedPayment(postInternalExpectedPaymentBankModel: postInternalExpectedPaymentBankModel) { (response, error) in
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
 **postInternalExpectedPaymentBankModel** | [**PostInternalExpectedPaymentBankModel**](PostInternalExpectedPaymentBankModel.md) |  | 

### Return type

[**InternalExpectedPaymentBankModel**](InternalExpectedPaymentBankModel.md)

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

let postInternalExternalBankAccountBankModel = PostInternalExternalBankAccount(name: "name_example", accountKind: "accountKind_example", providerId: "providerId_example", exchangeGuid: "exchangeGuid_example", bankGuid: "bankGuid_example", customerGuid: "customerGuid_example", asset: "asset_example", plaidPublicToken: "plaidPublicToken_example", plaidAccountId: "plaidAccountId_example") // PostInternalExternalBankAccountBankModel | 

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

# **internalCreateFeeConfiguration**
```swift
    open class func internalCreateFeeConfiguration(postFeeConfigurationBankModel: PostFeeConfigurationBankModel, completion: @escaping (_ data: FeeConfigurationBankModel?, _ error: Error?) -> Void)
```

Create FeeConfiguration

Creates a fee configuration.  Required scope: **internal:banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postFeeConfigurationBankModel = PostFeeConfiguration(productType: "productType_example", asset: "asset_example", fees: [PostFee(type: "type_example", spreadFee: 123, fixedFee: 123)]) // PostFeeConfigurationBankModel | 

// Create FeeConfiguration
InternalAPI.internalCreateFeeConfiguration(postFeeConfigurationBankModel: postFeeConfigurationBankModel) { (response, error) in
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
 **postFeeConfigurationBankModel** | [**PostFeeConfigurationBankModel**](PostFeeConfigurationBankModel.md) |  | 

### Return type

[**FeeConfigurationBankModel**](FeeConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateFiatAssetConfiguration**
```swift
    open class func internalCreateFiatAssetConfiguration(postInternalFiatAssetConfigurationBankModel: PostInternalFiatAssetConfigurationBankModel, completion: @escaping (_ data: InternalFiatAssetConfigurationBankModel?, _ error: Error?) -> Void)
```

Create FiatAssetConfiguration

Creates a fiat asset configuration.  Required scope: **internal:banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalFiatAssetConfigurationBankModel = PostInternalFiatAssetConfiguration(type: "type_example", environment: "environment_example", bankGuid: "bankGuid_example", enabled: false, asset: "asset_example") // PostInternalFiatAssetConfigurationBankModel | 

// Create FiatAssetConfiguration
InternalAPI.internalCreateFiatAssetConfiguration(postInternalFiatAssetConfigurationBankModel: postInternalFiatAssetConfigurationBankModel) { (response, error) in
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
 **postInternalFiatAssetConfigurationBankModel** | [**PostInternalFiatAssetConfigurationBankModel**](PostInternalFiatAssetConfigurationBankModel.md) |  | 

### Return type

[**InternalFiatAssetConfigurationBankModel**](InternalFiatAssetConfigurationBankModel.md)

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

let postInternalInternalBankAccountBankModel = PostInternalInternalBankAccount(name: "name_example", asset: "asset_example", accountKind: "accountKind_example", environment: "environment_example", providerId: "providerId_example") // PostInternalInternalBankAccountBankModel | 

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

let postInternalInternalWalletBankModel = PostInternalInternalWallet(name: "name_example", asset: "asset_example", accountKind: "accountKind_example", environment: "environment_example", providerId: "providerId_example") // PostInternalInternalWalletBankModel | 

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

# **internalCreatePersonDetails**
```swift
    open class func internalCreatePersonDetails(postInternalPersonDetailBankModel: PostInternalPersonDetailBankModel, completion: @escaping (_ data: InternalPersonDetailBankModel?, _ error: Error?) -> Void)
```

Create Person Details

Create a person details record.  Required scope: **internal:customers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalPersonDetailBankModel = PostInternalPersonDetail(personGuid: "personGuid_example", revision: 123, piiRecordGuid: "piiRecordGuid_example") // PostInternalPersonDetailBankModel | 

// Create Person Details
InternalAPI.internalCreatePersonDetails(postInternalPersonDetailBankModel: postInternalPersonDetailBankModel) { (response, error) in
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
 **postInternalPersonDetailBankModel** | [**PostInternalPersonDetailBankModel**](PostInternalPersonDetailBankModel.md) |  | 

### Return type

[**InternalPersonDetailBankModel**](InternalPersonDetailBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateSavingsAssetConfiguration**
```swift
    open class func internalCreateSavingsAssetConfiguration(postInternalSavingsAssetConfigurationBankModel: PostInternalSavingsAssetConfigurationBankModel, completion: @escaping (_ data: InternalSavingsAssetConfigurationBankModel?, _ error: Error?) -> Void)
```

Create SavingsAssetConfiguration

Creates a savings asset configuration.  Required scope: **internal:banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalSavingsAssetConfigurationBankModel = PostInternalSavingsAssetConfiguration(type: "type_example", productProvider: "productProvider_example", environment: "environment_example", bankGuid: "bankGuid_example", enabled: false, asset: "asset_example") // PostInternalSavingsAssetConfigurationBankModel | 

// Create SavingsAssetConfiguration
InternalAPI.internalCreateSavingsAssetConfiguration(postInternalSavingsAssetConfigurationBankModel: postInternalSavingsAssetConfigurationBankModel) { (response, error) in
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
 **postInternalSavingsAssetConfigurationBankModel** | [**PostInternalSavingsAssetConfigurationBankModel**](PostInternalSavingsAssetConfigurationBankModel.md) |  | 

### Return type

[**InternalSavingsAssetConfigurationBankModel**](InternalSavingsAssetConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCreateTradingSymbolConfiguration**
```swift
    open class func internalCreateTradingSymbolConfiguration(postInternalTradingSymbolConfigurationBankModel: PostInternalTradingSymbolConfigurationBankModel, completion: @escaping (_ data: InternalTradingSymbolConfigurationBankModel?, _ error: Error?) -> Void)
```

Create TradingSymbolConfiguration

Creates a trading symbol configuration.  Required scope: **internal:banks:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let postInternalTradingSymbolConfigurationBankModel = PostInternalTradingSymbolConfiguration(type: "type_example", environment: "environment_example", bankGuid: "bankGuid_example", enabled: false, symbol: "symbol_example") // PostInternalTradingSymbolConfigurationBankModel | 

// Create TradingSymbolConfiguration
InternalAPI.internalCreateTradingSymbolConfiguration(postInternalTradingSymbolConfigurationBankModel: postInternalTradingSymbolConfigurationBankModel) { (response, error) in
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
 **postInternalTradingSymbolConfigurationBankModel** | [**PostInternalTradingSymbolConfigurationBankModel**](PostInternalTradingSymbolConfigurationBankModel.md) |  | 

### Return type

[**InternalTradingSymbolConfigurationBankModel**](InternalTradingSymbolConfigurationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetCybridAccount**
```swift
    open class func internalGetCybridAccount(accountGuid: String, completion: @escaping (_ data: InternalCybridAccountBankModel?, _ error: Error?) -> Void)
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

[**InternalCybridAccountBankModel**](InternalCybridAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchange**
```swift
    open class func internalGetExchange(exchangeGuid: String, completion: @escaping (_ data: InternalExchangeBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeBankModel**](InternalExchangeBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeAccount**
```swift
    open class func internalGetExchangeAccount(accountGuid: String, completion: @escaping (_ data: InternalExchangeAccountBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeAccountBankModel**](InternalExchangeAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeSettlement**
```swift
    open class func internalGetExchangeSettlement(guid: String, completion: @escaping (_ data: InternalExchangeSettlementBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeSettlementBankModel**](InternalExchangeSettlementBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeSettlementObligation**
```swift
    open class func internalGetExchangeSettlementObligation(guid: String, completion: @escaping (_ data: InternalExchangeSettlementObligationBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeSettlementObligationBankModel**](InternalExchangeSettlementObligationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExchangeSettlementPaymentOrder**
```swift
    open class func internalGetExchangeSettlementPaymentOrder(guid: String, completion: @escaping (_ data: InternalExchangeSettlementPaymentOrderBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeSettlementPaymentOrderBankModel**](InternalExchangeSettlementPaymentOrderBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExpectedPayment**
```swift
    open class func internalGetExpectedPayment(guid: String, completion: @escaping (_ data: InternalExpectedPaymentBankModel?, _ error: Error?) -> Void)
```

Get Expected Payment

Get an Expected Payment.  Required scope: **internal:exchange_settlements:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the expected payment.

// Get Expected Payment
InternalAPI.internalGetExpectedPayment(guid: guid) { (response, error) in
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
 **guid** | **String** | Identifier for the expected payment. | 

### Return type

[**InternalExpectedPaymentBankModel**](InternalExpectedPaymentBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetExternalBankAccount**
```swift
    open class func internalGetExternalBankAccount(externalBankAccountGuid: String, completion: @escaping (_ data: InternalExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Get ExternalBankAccount

Retrieves an external bank account.  Required scope: **internal:accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let externalBankAccountGuid = "externalBankAccountGuid_example" // String | Identifier for the external bank account.

// Get ExternalBankAccount
InternalAPI.internalGetExternalBankAccount(externalBankAccountGuid: externalBankAccountGuid) { (response, error) in
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
 **externalBankAccountGuid** | **String** | Identifier for the external bank account. | 

### Return type

[**InternalExternalBankAccountBankModel**](InternalExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetInternalBankAccount**
```swift
    open class func internalGetInternalBankAccount(internalBankAccountGuid: String, completion: @escaping (_ data: InternalInternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Get InternalBankAccount

Retrieves an internal bank account.  Required scope: **internal:accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let internalBankAccountGuid = "internalBankAccountGuid_example" // String | Identifier for the internal bank account.

// Get InternalBankAccount
InternalAPI.internalGetInternalBankAccount(internalBankAccountGuid: internalBankAccountGuid) { (response, error) in
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
 **internalBankAccountGuid** | **String** | Identifier for the internal bank account. | 

### Return type

[**InternalInternalBankAccountBankModel**](InternalInternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalGetInternalWallet**
```swift
    open class func internalGetInternalWallet(internalWalletGuid: String, completion: @escaping (_ data: InternalInternalWalletBankModel?, _ error: Error?) -> Void)
```

Get InternalWallet

Retrieves an internal wallet.  Required scope: **internal:accounts:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let internalWalletGuid = "internalWalletGuid_example" // String | Identifier for the internal wallet.

// Get InternalWallet
InternalAPI.internalGetInternalWallet(internalWalletGuid: internalWalletGuid) { (response, error) in
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
 **internalWalletGuid** | **String** | Identifier for the internal wallet. | 

### Return type

[**InternalInternalWalletBankModel**](InternalInternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalListExchanges**
```swift
    open class func internalListExchanges(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: InternalExchangeListBankModel?, _ error: Error?) -> Void)
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

[**InternalExchangeListBankModel**](InternalExchangeListBankModel.md)

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
    open class func internalListTransactions(environment: EnvironmentBankModel_internalListTransactions, accountGuid: String, accountType: AccountTypeBankModel_internalListTransactions, cursor: String? = nil, perPage: Int? = nil, completion: @escaping (_ data: InternalTransactionsListBankModel?, _ error: Error?) -> Void)
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
let cursor = "cursor_example" // String |  (optional)
let perPage = 987 // Int |  (optional)

// List Transactions
InternalAPI.internalListTransactions(environment: environment, accountGuid: accountGuid, accountType: accountType, cursor: cursor, perPage: perPage) { (response, error) in
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
 **cursor** | **String** |  | [optional] 
 **perPage** | **Int** |  | [optional] 

### Return type

[**InternalTransactionsListBankModel**](InternalTransactionsListBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchAccount**
```swift
    open class func internalPatchAccount(accountGuid: String, patchInternalAccountBankModel: PatchInternalAccountBankModel, completion: @escaping (_ data: AccountBankModel?, _ error: Error?) -> Void)
```

Patch Account

Patch an account.  Required scope: **internal:accounts:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let accountGuid = "accountGuid_example" // String | Identifier for the account.
let patchInternalAccountBankModel = PatchInternalAccount(storedAt: Date()) // PatchInternalAccountBankModel | 

// Patch Account
InternalAPI.internalPatchAccount(accountGuid: accountGuid, patchInternalAccountBankModel: patchInternalAccountBankModel) { (response, error) in
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
 **accountGuid** | **String** | Identifier for the account. | 
 **patchInternalAccountBankModel** | [**PatchInternalAccountBankModel**](PatchInternalAccountBankModel.md) |  | 

### Return type

[**AccountBankModel**](AccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchDepositAddress**
```swift
    open class func internalPatchDepositAddress(guid: String, patchInternalDepositAddressBankModel: PatchInternalDepositAddressBankModel, completion: @escaping (_ data: DepositAddressBankModel?, _ error: Error?) -> Void)
```

Patch Deposit Address

Patch an deposit address.  Required scope: **internal:deposit_addresses:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the resource.
let patchInternalDepositAddressBankModel = PatchInternalDepositAddress(storedAt: Date(), address: "address_example", format: "format_example", tag: "tag_example") // PatchInternalDepositAddressBankModel | 

// Patch Deposit Address
InternalAPI.internalPatchDepositAddress(guid: guid, patchInternalDepositAddressBankModel: patchInternalDepositAddressBankModel) { (response, error) in
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
 **guid** | **String** | Identifier for the resource. | 
 **patchInternalDepositAddressBankModel** | [**PatchInternalDepositAddressBankModel**](PatchInternalDepositAddressBankModel.md) |  | 

### Return type

[**DepositAddressBankModel**](DepositAddressBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchExternalBankAccount**
```swift
    open class func internalPatchExternalBankAccount(externalBankAccountGuid: String, patchInternalExternalBankAccountBankModel: PatchInternalExternalBankAccountBankModel, completion: @escaping (_ data: InternalExternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Patch ExternalBankAccount

Patch an external bank account.  Required scope: **internal:accounts:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let externalBankAccountGuid = "externalBankAccountGuid_example" // String | Identifier for the external bank account.
let patchInternalExternalBankAccountBankModel = PatchInternalExternalBankAccount(state: "state_example", failureCode: "failureCode_example") // PatchInternalExternalBankAccountBankModel | 

// Patch ExternalBankAccount
InternalAPI.internalPatchExternalBankAccount(externalBankAccountGuid: externalBankAccountGuid, patchInternalExternalBankAccountBankModel: patchInternalExternalBankAccountBankModel) { (response, error) in
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
 **externalBankAccountGuid** | **String** | Identifier for the external bank account. | 
 **patchInternalExternalBankAccountBankModel** | [**PatchInternalExternalBankAccountBankModel**](PatchInternalExternalBankAccountBankModel.md) |  | 

### Return type

[**InternalExternalBankAccountBankModel**](InternalExternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchIdentityRecord**
```swift
    open class func internalPatchIdentityRecord(identityRecordGuid: String, patchInternalIdentityRecordBankModel: PatchInternalIdentityRecordBankModel, completion: @escaping (_ data: IdentityRecordBankModel?, _ error: Error?) -> Void)
```

Patch Identity Record

Patch an identity record.  Required scope: **internal:customers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let identityRecordGuid = "identityRecordGuid_example" // String | Identifier for the identity record.
let patchInternalIdentityRecordBankModel = PatchInternalIdentityRecord(completedAt: Date(), outcome: "outcome_example", failureCode: "failureCode_example") // PatchInternalIdentityRecordBankModel | 

// Patch Identity Record
InternalAPI.internalPatchIdentityRecord(identityRecordGuid: identityRecordGuid, patchInternalIdentityRecordBankModel: patchInternalIdentityRecordBankModel) { (response, error) in
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
 **identityRecordGuid** | **String** | Identifier for the identity record. | 
 **patchInternalIdentityRecordBankModel** | [**PatchInternalIdentityRecordBankModel**](PatchInternalIdentityRecordBankModel.md) |  | 

### Return type

[**IdentityRecordBankModel**](IdentityRecordBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchIdentityVerification**
```swift
    open class func internalPatchIdentityVerification(identityVerificationGuid: String, patchInternalIdentityVerificationBankModel: PatchInternalIdentityVerificationBankModel, completion: @escaping (_ data: IdentityVerificationBankModel?, _ error: Error?) -> Void)
```

Patch Identity Verification

Patch an identity verification.  Required scope: **internal:customers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let identityVerificationGuid = "identityVerificationGuid_example" // String | Identifier for the identity verification.
let patchInternalIdentityVerificationBankModel = PatchInternalIdentityVerification(startedAt: Date(), identityWorkflowGuid: "identityWorkflowGuid_example", completedAt: Date(), outcome: "outcome_example", failureCodes: ["failureCodes_example"]) // PatchInternalIdentityVerificationBankModel | 

// Patch Identity Verification
InternalAPI.internalPatchIdentityVerification(identityVerificationGuid: identityVerificationGuid, patchInternalIdentityVerificationBankModel: patchInternalIdentityVerificationBankModel) { (response, error) in
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
 **identityVerificationGuid** | **String** | Identifier for the identity verification. | 
 **patchInternalIdentityVerificationBankModel** | [**PatchInternalIdentityVerificationBankModel**](PatchInternalIdentityVerificationBankModel.md) |  | 

### Return type

[**IdentityVerificationBankModel**](IdentityVerificationBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchInternalBankAccount**
```swift
    open class func internalPatchInternalBankAccount(guid: String, patchInternalInternalBankAccountBankModel: PatchInternalInternalBankAccountBankModel, completion: @escaping (_ data: InternalInternalBankAccountBankModel?, _ error: Error?) -> Void)
```

Patch Internal Bank Account

Patch an internal bank account.  Required scope: **internal:accounts:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the resource.
let patchInternalInternalBankAccountBankModel = PatchInternalInternalBankAccount(storedAt: Date()) // PatchInternalInternalBankAccountBankModel | 

// Patch Internal Bank Account
InternalAPI.internalPatchInternalBankAccount(guid: guid, patchInternalInternalBankAccountBankModel: patchInternalInternalBankAccountBankModel) { (response, error) in
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
 **guid** | **String** | Identifier for the resource. | 
 **patchInternalInternalBankAccountBankModel** | [**PatchInternalInternalBankAccountBankModel**](PatchInternalInternalBankAccountBankModel.md) |  | 

### Return type

[**InternalInternalBankAccountBankModel**](InternalInternalBankAccountBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchInternalWallet**
```swift
    open class func internalPatchInternalWallet(guid: String, patchInternalInternalWalletBankModel: PatchInternalInternalWalletBankModel, completion: @escaping (_ data: InternalInternalWalletBankModel?, _ error: Error?) -> Void)
```

Patch Internal Wallet

Patch an internal wallet.  Required scope: **internal:accounts:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the resource.
let patchInternalInternalWalletBankModel = PatchInternalInternalWallet(storedAt: Date()) // PatchInternalInternalWalletBankModel | 

// Patch Internal Wallet
InternalAPI.internalPatchInternalWallet(guid: guid, patchInternalInternalWalletBankModel: patchInternalInternalWalletBankModel) { (response, error) in
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
 **guid** | **String** | Identifier for the resource. | 
 **patchInternalInternalWalletBankModel** | [**PatchInternalInternalWalletBankModel**](PatchInternalInternalWalletBankModel.md) |  | 

### Return type

[**InternalInternalWalletBankModel**](InternalInternalWalletBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchInternalWalletGroup**
```swift
    open class func internalPatchInternalWalletGroup(guid: String, patchInternalInternalWalletGroupBankModel: PatchInternalInternalWalletGroupBankModel, completion: @escaping (_ data: InternalInternalWalletGroupBankModel?, _ error: Error?) -> Void)
```

Patch Internal Wallet

Patch an internal wallet.  Required scope: **internal:accounts:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let guid = "guid_example" // String | Identifier for the resource.
let patchInternalInternalWalletGroupBankModel = PatchInternalInternalWalletGroup(storedAt: Date()) // PatchInternalInternalWalletGroupBankModel | 

// Patch Internal Wallet
InternalAPI.internalPatchInternalWalletGroup(guid: guid, patchInternalInternalWalletGroupBankModel: patchInternalInternalWalletGroupBankModel) { (response, error) in
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
 **guid** | **String** | Identifier for the resource. | 
 **patchInternalInternalWalletGroupBankModel** | [**PatchInternalInternalWalletGroupBankModel**](PatchInternalInternalWalletGroupBankModel.md) |  | 

### Return type

[**InternalInternalWalletGroupBankModel**](InternalInternalWalletGroupBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchTransfer**
```swift
    open class func internalPatchTransfer(transferGuid: String, patchInternalTransferBankModel: PatchInternalTransferBankModel, completion: @escaping (_ data: TransferBankModel?, _ error: Error?) -> Void)
```

Patch Transfer

Patch an transfer.  Required scope: **internal:transfers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let transferGuid = "transferGuid_example" // String | Identifier for the transfer.
let patchInternalTransferBankModel = PatchInternalTransfer(state: "state_example", failureCode: "failureCode_example") // PatchInternalTransferBankModel | 

// Patch Transfer
InternalAPI.internalPatchTransfer(transferGuid: transferGuid, patchInternalTransferBankModel: patchInternalTransferBankModel) { (response, error) in
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
 **transferGuid** | **String** | Identifier for the transfer. | 
 **patchInternalTransferBankModel** | [**PatchInternalTransferBankModel**](PatchInternalTransferBankModel.md) |  | 

### Return type

[**TransferBankModel**](TransferBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalPatchWorkflow**
```swift
    open class func internalPatchWorkflow(workflowGuid: String, patchInternalWorkflowBankModel: PatchInternalWorkflowBankModel, completion: @escaping (_ data: WorkflowBankModel?, _ error: Error?) -> Void)
```

Patch Workflow

Patch an workflow.  Required scope: **internal:workflows:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiBankSwift

let workflowGuid = "workflowGuid_example" // String | Identifier for the workflow.
let patchInternalWorkflowBankModel = PatchInternalWorkflow(state: "state_example", failureCode: "failureCode_example") // PatchInternalWorkflowBankModel | 

// Patch Workflow
InternalAPI.internalPatchWorkflow(workflowGuid: workflowGuid, patchInternalWorkflowBankModel: patchInternalWorkflowBankModel) { (response, error) in
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
 **workflowGuid** | **String** | Identifier for the workflow. | 
 **patchInternalWorkflowBankModel** | [**PatchInternalWorkflowBankModel**](PatchInternalWorkflowBankModel.md) |  | 

### Return type

[**WorkflowBankModel**](WorkflowBankModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

