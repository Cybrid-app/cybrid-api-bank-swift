# Swift5 API client for CybridApiBankSwift

# Welcome

Welcome to the Cybrid platform; enabling turnkey crypto banking services!

In these documents, you will find information on the operations provided by our platform, as well as details on how our REST API operates more generally.

Our complete set of APIs allows you to manage all your resources: your Organization, your banks and your identities. The complete set of APIs can be found on the following pages:

| API                                                            | Description                  |
|----------------------------------------------------------------|------------------------------|
| [Organization API](<api_platform_organization_swagger_ui_url>) | APIs to manage organizations |
| [Bank API](<api_platform_bank_swagger_ui_url>)                 | APIs to manage banks         |
| [Identities API](<api_idp_swagger_ui_url>)                     | APIs to manage identities    |

When you're ready, [request access](https://www.cybrid.xyz/access) to your Dashboard to view and administer your Organization. Once you've logged in, you can begin creating Banks, either for sandbox or production usage, and start enabling your customers to leverage DeFi and web3 with confidence.

If you have any questions, please contact [Support](mailto:support@cybrid.app) at any time so that we can help.

## Authentication

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create Organization and Bank tokens can be generated via your Dashboard ([request access](https://www.cybrid.xyz/access)).

An Organization Token applies broadly to the whole Organization and all of its Banks, whereas, a Bank Token is specific to an individual Bank.

Both Organization and Bank tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique Client ID and Secret that allows for machine-to-machine authentication.

**Never share your Client ID or Secret publicly or in your source code repository**

Your Client ID and Secret can be exchanged for a time-limited Bearer Token by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document:

```
curl -X POST <api_idp_url>/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"<Your requested scopes -- space separated>\"
  }' -H \"Content-Type: application/json\"
```

## Scopes

The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.

The following scopes are available on the platform and can be requested when generating either an Organization or a Bank token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.

| Resource      | Read scope         | Write scope          | Execute scope     | Token Type         |
|---------------|--------------------|----------------------|-------------------|--------------------|
| Organizations | organizations:read | organizations:write  |                   | Organization/ Bank |
| Banks         | banks:read         | banks:write          | banks:execute     | Organization/ Bank |
| Customers     | customers:read     | customers:write      | customers:execute | Bank               |
| Assets        | prices:read        |                      |                   | Bank               |
| Accounts      | accounts:read      |                      | accounts:execute  | Bank               |
| Prices        | prices:read        |                      |                   | Bank               |
| Symbols       | prices:read        |                      |                   | Bank               |
| Quotes        | quotes:read        |                      | quotes:execute    | Bank               |
| Trades        | trades:read        |                      | trades:execute    | Bank               |

## Organizations

An Organization is meant to model the organization partnering with Cybrid to use our platform.

An Organization does not directly interact with customers. Instead, an Organization has one or more banks, which encompass the financial service offerings of the platform.

## Banks

A Bank is owned by an Organization and can be thought of as an environment or container for Customers and product offerings. An example of a Bank would be your customer facing banking website, or an internal staging environment for testing and integration.

An Organization can have multiple banks, in sandbox or production environments. A sandbox Bank will be backed by stubbed data and process flows. For instance, identity record and funding source processes will be simulated rather than performed.

## Customers

Customers represent your banking users on the platform. At present, we offer support for Individuals as Customers.

Customers must be verified in our system before they can play any part on the platform. See the Identity Records section for more details on how a customer can be verified.

Customers must also have an account to be able to transact. See the Accounts APIs for more details on setting up accounts for the customer.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: v0.0.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://api-bank.cybrid.local*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsAPI* | [**createAccount**](docs/AccountsAPI.md#createaccount) | **POST** /api/accounts | Create Account
*AccountsAPI* | [**getAccount**](docs/AccountsAPI.md#getaccount) | **GET** /api/accounts/{account_guid} | Get Account
*AccountsAPI* | [**listAccounts**](docs/AccountsAPI.md#listaccounts) | **GET** /api/accounts | List Accounts
*AssetsAPI* | [**listAssets**](docs/AssetsAPI.md#listassets) | **GET** /api/assets | Get assets list
*BanksAPI* | [**createBank**](docs/BanksAPI.md#createbank) | **POST** /api/banks | Create Bank
*BanksAPI* | [**getBank**](docs/BanksAPI.md#getbank) | **GET** /api/banks/{bank_guid} | Get Bank
*BanksAPI* | [**listBanks**](docs/BanksAPI.md#listbanks) | **GET** /api/banks | Get banks list
*BanksAPI* | [**updateBank**](docs/BanksAPI.md#updatebank) | **PATCH** /api/banks/{bank_guid} | Patch Bank
*CustomersAPI* | [**createCustomer**](docs/CustomersAPI.md#createcustomer) | **POST** /api/customers | Create Customer
*CustomersAPI* | [**getCustomer**](docs/CustomersAPI.md#getcustomer) | **GET** /api/customers/{customer_guid} | Get Customer
*CustomersAPI* | [**listCustomers**](docs/CustomersAPI.md#listcustomers) | **GET** /api/customers | Get customers list
*IdentityRecordsAPI* | [**createIdentityRecord**](docs/IdentityRecordsAPI.md#createidentityrecord) | **POST** /api/identity_records | Create Identity Record
*IdentityRecordsAPI* | [**getIdentityRecord**](docs/IdentityRecordsAPI.md#getidentityrecord) | **GET** /api/identity_records/{identity_record_guid} | Get Identity Record
*IdentityRecordsAPI* | [**listIdentityRecords**](docs/IdentityRecordsAPI.md#listidentityrecords) | **GET** /api/identity_records | List Identity Records
*InternalAPI* | [**internalClaimExchangeSettlementExpectedPayment**](docs/InternalAPI.md#internalclaimexchangesettlementexpectedpayment) | **POST** /api/internal/exchange_settlement_expected_payments/{guid}/claim | Claim Exchange Settlement Expected Payment
*InternalAPI* | [**internalClaimExchangeSettlementPaymentOrder**](docs/InternalAPI.md#internalclaimexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders/{guid}/claim | Claim Exchange Settlement Payment Order
*InternalAPI* | [**internalCreateAccount**](docs/InternalAPI.md#internalcreateaccount) | **POST** /api/internal/accounts | Create Account
*InternalAPI* | [**internalCreateCybridAccount**](docs/InternalAPI.md#internalcreatecybridaccount) | **POST** /api/internal/cybrid_accounts | Create CybridAccount
*InternalAPI* | [**internalCreateExchange**](docs/InternalAPI.md#internalcreateexchange) | **POST** /api/internal/exchanges | Create Exchange
*InternalAPI* | [**internalCreateExchangeAccount**](docs/InternalAPI.md#internalcreateexchangeaccount) | **POST** /api/internal/exchange_accounts | Create ExchangeAccount
*InternalAPI* | [**internalCreateExchangeSettlement**](docs/InternalAPI.md#internalcreateexchangesettlement) | **POST** /api/internal/exchange_settlements | Create Exchange Settlement
*InternalAPI* | [**internalCreateExchangeSettlementApproval**](docs/InternalAPI.md#internalcreateexchangesettlementapproval) | **POST** /api/internal/exchange_settlements/{guid}/approval | Create Exchange Settlement Approval
*InternalAPI* | [**internalCreateExchangeSettlementCompletion**](docs/InternalAPI.md#internalcreateexchangesettlementcompletion) | **POST** /api/internal/exchange_settlements/{guid}/completion | Create Exchange Settlement Completion
*InternalAPI* | [**internalCreateExchangeSettlementExpectedPayment**](docs/InternalAPI.md#internalcreateexchangesettlementexpectedpayment) | **POST** /api/internal/exchange_settlement_expected_payments | Create Exchange Settlement Expected Payment
*InternalAPI* | [**internalCreateExchangeSettlementPaymentOrder**](docs/InternalAPI.md#internalcreateexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders | Create Exchange Settlement Payment Order
*InternalAPI* | [**internalCreateExternalBankAccount**](docs/InternalAPI.md#internalcreateexternalbankaccount) | **POST** /api/internal/external_bank_accounts | Create ExternalBankAccount
*InternalAPI* | [**internalCreateExternalWallet**](docs/InternalAPI.md#internalcreateexternalwallet) | **POST** /api/internal/external_wallets | Create ExternalWallet
*InternalAPI* | [**internalCreateInternalBankAccount**](docs/InternalAPI.md#internalcreateinternalbankaccount) | **POST** /api/internal/internal_bank_accounts | Create InternalBankAccount
*InternalAPI* | [**internalCreateInternalWallet**](docs/InternalAPI.md#internalcreateinternalwallet) | **POST** /api/internal/internal_wallets | Create InternalWallet
*InternalAPI* | [**internalCreateSystemAccount**](docs/InternalAPI.md#internalcreatesystemaccount) | **POST** /api/internal/system_accounts | Create SystemAccount
*InternalAPI* | [**internalCreateTradingConfiguration**](docs/InternalAPI.md#internalcreatetradingconfiguration) | **POST** /api/internal/trading_configurations | Create TradingConfiguration
*InternalAPI* | [**internalCreateTradingSymbolConfiguration**](docs/InternalAPI.md#internalcreatetradingsymbolconfiguration) | **POST** /api/internal/trading_symbol_configurations | Create TradingSymbolConfiguration
*InternalAPI* | [**internalGetCybridAccount**](docs/InternalAPI.md#internalgetcybridaccount) | **GET** /api/internal/cybrid_accounts/{account_guid} | Get CybridAccount
*InternalAPI* | [**internalGetExchange**](docs/InternalAPI.md#internalgetexchange) | **GET** /api/internal/exchanges/{exchange_guid} | Get Exchange
*InternalAPI* | [**internalGetExchangeAccount**](docs/InternalAPI.md#internalgetexchangeaccount) | **GET** /api/internal/exchange_accounts/{account_guid} | Get ExchangeAccount
*InternalAPI* | [**internalGetExchangeSettlement**](docs/InternalAPI.md#internalgetexchangesettlement) | **GET** /api/internal/exchange_settlements/{guid} | Get Exchange Settlement
*InternalAPI* | [**internalGetExchangeSettlementExpectedPayment**](docs/InternalAPI.md#internalgetexchangesettlementexpectedpayment) | **GET** /api/internal/exchange_settlement_expected_payments/{guid} | Get Exchange Settlement Expected Payment
*InternalAPI* | [**internalGetExchangeSettlementObligation**](docs/InternalAPI.md#internalgetexchangesettlementobligation) | **GET** /api/internal/exchange_settlement_obligations/{guid} | Get Exchange Settlement Obligation
*InternalAPI* | [**internalGetExchangeSettlementPaymentOrder**](docs/InternalAPI.md#internalgetexchangesettlementpaymentorder) | **GET** /api/internal/exchange_settlement_payment_orders/{guid} | Get Exchange Settlement Payment Order
*InternalAPI* | [**internalListExchanges**](docs/InternalAPI.md#internallistexchanges) | **GET** /api/internal/exchanges | List Exchanges
*InternalAPI* | [**internalListExternalBankAccounts**](docs/InternalAPI.md#internallistexternalbankaccounts) | **GET** /api/internal/external_bank_accounts | List ExternalBankAccounts
*InternalAPI* | [**internalListExternalWallets**](docs/InternalAPI.md#internallistexternalwallets) | **GET** /api/internal/external_wallets | List ExternalWallets
*InternalAPI* | [**internalListInternalBankAccounts**](docs/InternalAPI.md#internallistinternalbankaccounts) | **GET** /api/internal/internal_bank_accounts | List InternalBankAccounts
*InternalAPI* | [**internalListInternalWallets**](docs/InternalAPI.md#internallistinternalwallets) | **GET** /api/internal/internal_wallets | List InternalWallets
*InternalAPI* | [**internalListTransactions**](docs/InternalAPI.md#internallisttransactions) | **GET** /api/internal/transactions | List Transactions
*PricesAPI* | [**listPrices**](docs/PricesAPI.md#listprices) | **GET** /api/prices | Get Price
*QuotesAPI* | [**createQuote**](docs/QuotesAPI.md#createquote) | **POST** /api/quotes | Create Quote
*QuotesAPI* | [**getQuote**](docs/QuotesAPI.md#getquote) | **GET** /api/quotes/{quote_guid} | Get Quote
*QuotesAPI* | [**listQuotes**](docs/QuotesAPI.md#listquotes) | **GET** /api/quotes | Get quotes list
*SymbolsAPI* | [**listSymbols**](docs/SymbolsAPI.md#listsymbols) | **GET** /api/symbols | Get Symbols list
*TradesAPI* | [**createTrade**](docs/TradesAPI.md#createtrade) | **POST** /api/trades | Create Trade
*TradesAPI* | [**getTrade**](docs/TradesAPI.md#gettrade) | **GET** /api/trades/{trade_guid} | Get Trade
*TradesAPI* | [**listTrades**](docs/TradesAPI.md#listtrades) | **GET** /api/trades | Get trades list
*TradingConfigurationsAPI* | [**createTradingConfiguration**](docs/TradingConfigurationsAPI.md#createtradingconfiguration) | **POST** /api/trading_configurations | Create TradingConfiguration
*TradingConfigurationsAPI* | [**getTradingConfiguration**](docs/TradingConfigurationsAPI.md#gettradingconfiguration) | **GET** /api/trading_configurations/{trading_configuration_guid} | Get TradingConfiguration
*TradingConfigurationsAPI* | [**listTradingConfigurations**](docs/TradingConfigurationsAPI.md#listtradingconfigurations) | **GET** /api/trading_configurations | List trading configurations
*VerificationKeysAPI* | [**createVerificationKey**](docs/VerificationKeysAPI.md#createverificationkey) | **POST** /api/bank_verification_keys | Create VerificationKey
*VerificationKeysAPI* | [**getVerificationKey**](docs/VerificationKeysAPI.md#getverificationkey) | **GET** /api/bank_verification_keys/{verification_key_guid} | Get VerificationKey
*VerificationKeysAPI* | [**listVerificationKeys**](docs/VerificationKeysAPI.md#listverificationkeys) | **GET** /api/bank_verification_keys | Get Verification Keys list


## Documentation For Models

 - [AccountBankModel](docs/AccountBankModel.md)
 - [AccountListBankModel](docs/AccountListBankModel.md)
 - [AssetBankModel](docs/AssetBankModel.md)
 - [AssetListBankModel](docs/AssetListBankModel.md)
 - [AttestationDetailsBankModel](docs/AttestationDetailsBankModel.md)
 - [BankBankModel](docs/BankBankModel.md)
 - [BankListBankModel](docs/BankListBankModel.md)
 - [CustomerBankModel](docs/CustomerBankModel.md)
 - [CustomerListBankModel](docs/CustomerListBankModel.md)
 - [CybridAccountBankModel](docs/CybridAccountBankModel.md)
 - [ErrorResponseBankModel](docs/ErrorResponseBankModel.md)
 - [ExchangeAccountBankModel](docs/ExchangeAccountBankModel.md)
 - [ExchangeBankModel](docs/ExchangeBankModel.md)
 - [ExchangeListBankModel](docs/ExchangeListBankModel.md)
 - [ExchangeSettlementBankModel](docs/ExchangeSettlementBankModel.md)
 - [ExchangeSettlementExpectedPaymentBankModel](docs/ExchangeSettlementExpectedPaymentBankModel.md)
 - [ExchangeSettlementObligationBankModel](docs/ExchangeSettlementObligationBankModel.md)
 - [ExchangeSettlementPaymentOrderBankModel](docs/ExchangeSettlementPaymentOrderBankModel.md)
 - [FeeBankModel](docs/FeeBankModel.md)
 - [IdentityRecordBankModel](docs/IdentityRecordBankModel.md)
 - [IdentityRecordListBankModel](docs/IdentityRecordListBankModel.md)
 - [InternalCreateExchangeSettlementApproval202ResponseBankModel](docs/InternalCreateExchangeSettlementApproval202ResponseBankModel.md)
 - [InternalExternalBankAccountBankModel](docs/InternalExternalBankAccountBankModel.md)
 - [InternalExternalBankAccountListBankModel](docs/InternalExternalBankAccountListBankModel.md)
 - [InternalExternalWalletBankModel](docs/InternalExternalWalletBankModel.md)
 - [InternalExternalWalletListBankModel](docs/InternalExternalWalletListBankModel.md)
 - [InternalInternalBankAccountBankModel](docs/InternalInternalBankAccountBankModel.md)
 - [InternalInternalBankAccountListBankModel](docs/InternalInternalBankAccountListBankModel.md)
 - [InternalInternalWalletBankModel](docs/InternalInternalWalletBankModel.md)
 - [InternalInternalWalletListBankModel](docs/InternalInternalWalletListBankModel.md)
 - [InternalTradingSymbolConfigurationBankModel](docs/InternalTradingSymbolConfigurationBankModel.md)
 - [InternalTransactionBankModel](docs/InternalTransactionBankModel.md)
 - [PatchBankBankModel](docs/PatchBankBankModel.md)
 - [PostAccountBankModel](docs/PostAccountBankModel.md)
 - [PostBankBankModel](docs/PostBankBankModel.md)
 - [PostCustomerBankModel](docs/PostCustomerBankModel.md)
 - [PostFeeBankModel](docs/PostFeeBankModel.md)
 - [PostIdentityRecordAttestationDetailsBankModel](docs/PostIdentityRecordAttestationDetailsBankModel.md)
 - [PostIdentityRecordBankModel](docs/PostIdentityRecordBankModel.md)
 - [PostInternalAccountBankModel](docs/PostInternalAccountBankModel.md)
 - [PostInternalClaimExchangeSettlementExpectedPaymentBankModel](docs/PostInternalClaimExchangeSettlementExpectedPaymentBankModel.md)
 - [PostInternalClaimExchangeSettlementPaymentOrderBankModel](docs/PostInternalClaimExchangeSettlementPaymentOrderBankModel.md)
 - [PostInternalCybridAccountBankModel](docs/PostInternalCybridAccountBankModel.md)
 - [PostInternalExchangeAccountBankModel](docs/PostInternalExchangeAccountBankModel.md)
 - [PostInternalExchangeBankModel](docs/PostInternalExchangeBankModel.md)
 - [PostInternalExchangeSettlementBankModel](docs/PostInternalExchangeSettlementBankModel.md)
 - [PostInternalExchangeSettlementExpectedPaymentBankModel](docs/PostInternalExchangeSettlementExpectedPaymentBankModel.md)
 - [PostInternalExchangeSettlementPaymentOrderBankModel](docs/PostInternalExchangeSettlementPaymentOrderBankModel.md)
 - [PostInternalExternalBankAccountBankModel](docs/PostInternalExternalBankAccountBankModel.md)
 - [PostInternalExternalWalletBankModel](docs/PostInternalExternalWalletBankModel.md)
 - [PostInternalInternalBankAccountBankModel](docs/PostInternalInternalBankAccountBankModel.md)
 - [PostInternalInternalWalletBankModel](docs/PostInternalInternalWalletBankModel.md)
 - [PostInternalSystemAccountBankModel](docs/PostInternalSystemAccountBankModel.md)
 - [PostInternalSystemTransactionBankModel](docs/PostInternalSystemTransactionBankModel.md)
 - [PostInternalTradingSymbolConfigurationBankModel](docs/PostInternalTradingSymbolConfigurationBankModel.md)
 - [PostQuoteBankModel](docs/PostQuoteBankModel.md)
 - [PostTradeBankModel](docs/PostTradeBankModel.md)
 - [PostTradingConfigurationBankModel](docs/PostTradingConfigurationBankModel.md)
 - [PostVerificationKeyBankModel](docs/PostVerificationKeyBankModel.md)
 - [QuoteBankModel](docs/QuoteBankModel.md)
 - [QuoteListBankModel](docs/QuoteListBankModel.md)
 - [SymbolPriceBankModel](docs/SymbolPriceBankModel.md)
 - [SystemAccountBankModel](docs/SystemAccountBankModel.md)
 - [TradeBankModel](docs/TradeBankModel.md)
 - [TradeListBankModel](docs/TradeListBankModel.md)
 - [TradingConfigurationBankModel](docs/TradingConfigurationBankModel.md)
 - [TradingConfigurationListBankModel](docs/TradingConfigurationListBankModel.md)
 - [VerificationKeyBankModel](docs/VerificationKeyBankModel.md)
 - [VerificationKeyListBankModel](docs/VerificationKeyListBankModel.md)


## Documentation For Authorization


## BearerAuth

- **Type**: HTTP basic authentication

## oauth2

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
 - **banks:read**: banks read
 - **banks:write**: banks write
 - **accounts:read**: accounts read
 - **accounts:execute**: accounts execute
 - **customers:read**: customers read
 - **customers:write**: customers write
 - **customers:execute**: customers execute
 - **prices:read**: prices read
 - **quotes:execute**: quotes execute
 - **quotes:read**: quotes read
 - **trades:execute**: trades execute
 - **trades:read**: trades read


## Author

support@cybrid.app

