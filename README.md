# Swift5 API client for CybridApiBankSwift

# Cybrid API documentation

Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-lable crypto products or services.

In these documents, you'll find details on how our REST API operates and generally how our platform functions.

If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).

💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.

## Getting Started

This is Cybrid's public interactive API documentation, which allows you to fully test our API's. If you'd like to use a different tool to exercise our API's, you can download the [Open API 3.0 yaml](<api_platform_bank_swagger_schema_url>) for import.

If you're new to our API's and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:

1. [Getting Started in the Cybrid Sandbox](https://www.cybrid.xyz/guides/getting-started)
2. [Getting Ready for Trading](https://www.cybrid.xyz/guides/getting-ready-for-trading)
3. [Running the Web Demo App](https://www.cybrid.xyz/guides/running-the-cybrid-web-demo-crypto-app) (or, alternatively, [Testing with Hosted Web Demo App](https://www.cybrid.xyz/guides/testing-with-the-web-demo-crypo-app))

In [Getting Started in the Cybrid Sandbox](https://www.cybrid.xyz/guides/getting-started), we walk you through how to use the [Cybrid Sandbox](https://id.demo.cybrid.app/) to create a test bank, generate API keys, and set banks fees. In [Getting Ready for Trading](https://www.cybrid.xyz/guides/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.

If you've already run through the first two guides, you can follow the [Running the Web Demo App](https://www.cybrid.xyz/guides/running-the-cybrid-web-demo-crypto-app) guide to test our web SDK with your sandbox `bank` and `customer`.

## Working with the Cybrid Platform

There are three primary ways you can interact with the Cybrid platform:

1. Directly via our RESTful API (this documentation)
2. Using our API Clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript))
3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), Apple-coming soon)

Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of API's reside.

*The complete set of APIs can be found on the following pages:*

| API                                                            | Description                  |
|----------------------------------------------------------------|------------------------------|
| [Organization API](<api_platform_organization_swagger_ui_url>) | APIs to manage organizations |
| [Bank API](<api_platform_bank_swagger_ui_url>)                 | APIs to manage banks (and all downstream customer activity)        |
| [Identities API](<api_idp_swagger_ui_url>)                     | APIs to manage organization and bank identities    |

For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.

## Authenticating with the API

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](<api_idp_url>).

An `Organization` Token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` Token is specific to an individual Bank.

Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.

<font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>

Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.

The following curl command can be used to quickly generate a `bearer token` for use in testing the API or demo applications.

```
curl -X POST <api_idp_url>/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"banks:read banks:write accounts:read accounts:execute customers:read customers:write customers:execute prices:read quotes:execute trades:execute trades:read\"
  }' -H \"Content-Type: application/json\"
```
<font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>

## Authentication Scopes

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
| Rewards       | rewards:read       |                      | rewards:execute   | Bank               |

## Available Endpoints

The available API's for the [Identity](<api_idp_swagger_ui_url>), [Organization](<api_platform_organization_swagger_ui_url>) and [Bank](<api_platform_bank_swagger_ui_url>) API services are listed below:

| API Sevice   | Model            | API Endpoint Path              | Description                                                               |
| ------------ | ---------------- | ------------------------------ | ------------------------------------------------------------------------- |
| Identity     | Bank             | /api/bank_applications         | Create and list banks                                                     |
| Identity     | Organization     | /api/organization_applications | Create and list organizations                                             |
| Organization | Organization     | /api/organizations             | API's to retrieve and update organization name                            |
| Bank         | Asset            | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)             |
| Bank         | VerificationKey  | /api/bank_verification_keys    | Create, list and retrive verification keys, used for signing identities   |
| Bank         | Banks            | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc     |
| Bank         | FeeConfiguration | /api/fee_configurations        | Create and list bank fees (spread or fixed)                               |
| Bank         | Customers        | /api/customers                 | Create and list customers                                                 |
| Bank         | IdentityRecord   | /api/identity_records          | Create and list identity records, which are attached to customers for KYC |
| Bank         | Accounts         | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers     |
| Bank         | Symbols          | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                   |
| Bank         | Prices           | /api/prices                    | Get the current prices for assets on the platform                         |
| Bank         | Quotes           | /api/quotes                    | Create and list quotes, which are required to execute trades              |
| Bank         | Trades           | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                  |
| Bank         | Rewards          | /api/rewards                   | Create a new reward (automates quote/trade for simplicity)                |

## Understanding Object Models & Endpoints

**Organizations**

An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.

An `Organization` does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.

**Banks**

A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `Customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where Sandbox is the environment that you would test, prototype and build in prior to production.

An `Organization` can have multiple `banks`, in either sandbox or production environments. A sandbox Bank will be backed by stubbed data and process flows. For instance, funding source processes will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amout of simulated fiat currency for testing purposes.

## Customers

`Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.

`Customers` must be verified in our system before they can play any part on the platform, which means they must have an associated and valid `Identity Record`. See the Identity Records section for more details on how a customer can be verified.

`Customers` must also have an `account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer.


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
*FeeConfigurationsAPI* | [**createFeeConfiguration**](docs/FeeConfigurationsAPI.md#createfeeconfiguration) | **POST** /api/fee_configurations | Create Fee Configuration
*FeeConfigurationsAPI* | [**getFeeConfiguration**](docs/FeeConfigurationsAPI.md#getfeeconfiguration) | **GET** /api/fee_configurations/{fee_configuration_guid} | Get Fee Configuration
*FeeConfigurationsAPI* | [**listFeeConfigurations**](docs/FeeConfigurationsAPI.md#listfeeconfigurations) | **GET** /api/fee_configurations | List Fee Configurations
*IdentityRecordsAPI* | [**createIdentityRecord**](docs/IdentityRecordsAPI.md#createidentityrecord) | **POST** /api/identity_records | Create Identity Record
*IdentityRecordsAPI* | [**getIdentityRecord**](docs/IdentityRecordsAPI.md#getidentityrecord) | **GET** /api/identity_records/{identity_record_guid} | Get Identity Record
*IdentityRecordsAPI* | [**listIdentityRecords**](docs/IdentityRecordsAPI.md#listidentityrecords) | **GET** /api/identity_records | List Identity Records
*InternalAPI* | [**internalClaimExchangeSettlementPaymentOrder**](docs/InternalAPI.md#internalclaimexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders/{guid}/claim | Claim Exchange Settlement Payment Order
*InternalAPI* | [**internalClaimExpectedPayment**](docs/InternalAPI.md#internalclaimexpectedpayment) | **POST** /api/internal/expected_payments/{guid}/claim | Claim Expected Payment
*InternalAPI* | [**internalCreateAccount**](docs/InternalAPI.md#internalcreateaccount) | **POST** /api/internal/accounts | Create Account
*InternalAPI* | [**internalCreateCybridAccount**](docs/InternalAPI.md#internalcreatecybridaccount) | **POST** /api/internal/cybrid_accounts | Create CybridAccount
*InternalAPI* | [**internalCreateExchange**](docs/InternalAPI.md#internalcreateexchange) | **POST** /api/internal/exchanges | Create Exchange
*InternalAPI* | [**internalCreateExchangeAccount**](docs/InternalAPI.md#internalcreateexchangeaccount) | **POST** /api/internal/exchange_accounts | Create ExchangeAccount
*InternalAPI* | [**internalCreateExchangeSettlement**](docs/InternalAPI.md#internalcreateexchangesettlement) | **POST** /api/internal/exchange_settlements | Create Exchange Settlement
*InternalAPI* | [**internalCreateExchangeSettlementApproval**](docs/InternalAPI.md#internalcreateexchangesettlementapproval) | **POST** /api/internal/exchange_settlements/{guid}/approval | Create Exchange Settlement Approval
*InternalAPI* | [**internalCreateExchangeSettlementCompletion**](docs/InternalAPI.md#internalcreateexchangesettlementcompletion) | **POST** /api/internal/exchange_settlements/{guid}/completion | Create Exchange Settlement Completion
*InternalAPI* | [**internalCreateExchangeSettlementPaymentOrder**](docs/InternalAPI.md#internalcreateexchangesettlementpaymentorder) | **POST** /api/internal/exchange_settlement_payment_orders | Create Exchange Settlement Payment Order
*InternalAPI* | [**internalCreateExpectedPayment**](docs/InternalAPI.md#internalcreateexpectedpayment) | **POST** /api/internal/expected_payments | Create Expected Payment
*InternalAPI* | [**internalCreateExternalBankAccount**](docs/InternalAPI.md#internalcreateexternalbankaccount) | **POST** /api/internal/external_bank_accounts | Create ExternalBankAccount
*InternalAPI* | [**internalCreateExternalWallet**](docs/InternalAPI.md#internalcreateexternalwallet) | **POST** /api/internal/external_wallets | Create ExternalWallet
*InternalAPI* | [**internalCreateFeeConfiguration**](docs/InternalAPI.md#internalcreatefeeconfiguration) | **POST** /api/internal/fee_configurations | Create FeeConfiguration
*InternalAPI* | [**internalCreateInternalBankAccount**](docs/InternalAPI.md#internalcreateinternalbankaccount) | **POST** /api/internal/internal_bank_accounts | Create InternalBankAccount
*InternalAPI* | [**internalCreateInternalWallet**](docs/InternalAPI.md#internalcreateinternalwallet) | **POST** /api/internal/internal_wallets | Create InternalWallet
*InternalAPI* | [**internalCreateSystemAccount**](docs/InternalAPI.md#internalcreatesystemaccount) | **POST** /api/internal/system_accounts | Create SystemAccount
*InternalAPI* | [**internalCreateTradingSymbolConfiguration**](docs/InternalAPI.md#internalcreatetradingsymbolconfiguration) | **POST** /api/internal/trading_symbol_configurations | Create TradingSymbolConfiguration
*InternalAPI* | [**internalGetCybridAccount**](docs/InternalAPI.md#internalgetcybridaccount) | **GET** /api/internal/cybrid_accounts/{account_guid} | Get CybridAccount
*InternalAPI* | [**internalGetExchange**](docs/InternalAPI.md#internalgetexchange) | **GET** /api/internal/exchanges/{exchange_guid} | Get Exchange
*InternalAPI* | [**internalGetExchangeAccount**](docs/InternalAPI.md#internalgetexchangeaccount) | **GET** /api/internal/exchange_accounts/{account_guid} | Get ExchangeAccount
*InternalAPI* | [**internalGetExchangeSettlement**](docs/InternalAPI.md#internalgetexchangesettlement) | **GET** /api/internal/exchange_settlements/{guid} | Get Exchange Settlement
*InternalAPI* | [**internalGetExchangeSettlementObligation**](docs/InternalAPI.md#internalgetexchangesettlementobligation) | **GET** /api/internal/exchange_settlement_obligations/{guid} | Get Exchange Settlement Obligation
*InternalAPI* | [**internalGetExchangeSettlementPaymentOrder**](docs/InternalAPI.md#internalgetexchangesettlementpaymentorder) | **GET** /api/internal/exchange_settlement_payment_orders/{guid} | Get Exchange Settlement Payment Order
*InternalAPI* | [**internalGetExpectedPayment**](docs/InternalAPI.md#internalgetexpectedpayment) | **GET** /api/internal/expected_payments/{guid} | Get Expected Payment
*InternalAPI* | [**internalListExchanges**](docs/InternalAPI.md#internallistexchanges) | **GET** /api/internal/exchanges | List Exchanges
*InternalAPI* | [**internalListExternalBankAccounts**](docs/InternalAPI.md#internallistexternalbankaccounts) | **GET** /api/internal/external_bank_accounts | List ExternalBankAccounts
*InternalAPI* | [**internalListExternalWallets**](docs/InternalAPI.md#internallistexternalwallets) | **GET** /api/internal/external_wallets | List ExternalWallets
*InternalAPI* | [**internalListInternalBankAccounts**](docs/InternalAPI.md#internallistinternalbankaccounts) | **GET** /api/internal/internal_bank_accounts | List InternalBankAccounts
*InternalAPI* | [**internalListInternalWallets**](docs/InternalAPI.md#internallistinternalwallets) | **GET** /api/internal/internal_wallets | List InternalWallets
*InternalAPI* | [**internalListTransactions**](docs/InternalAPI.md#internallisttransactions) | **GET** /api/internal/transactions | List Transactions
*InternalAPI* | [**internalPatchAccount**](docs/InternalAPI.md#internalpatchaccount) | **PATCH** /api/internal/accounts/{account_guid} | Patch Account
*PricesAPI* | [**listPrices**](docs/PricesAPI.md#listprices) | **GET** /api/prices | Get Price
*QuotesAPI* | [**createQuote**](docs/QuotesAPI.md#createquote) | **POST** /api/quotes | Create Quote
*QuotesAPI* | [**getQuote**](docs/QuotesAPI.md#getquote) | **GET** /api/quotes/{quote_guid} | Get Quote
*QuotesAPI* | [**listQuotes**](docs/QuotesAPI.md#listquotes) | **GET** /api/quotes | Get quotes list
*RewardsAPI* | [**createRewards**](docs/RewardsAPI.md#createrewards) | **POST** /api/rewards | Create Reward
*SymbolsAPI* | [**listSymbols**](docs/SymbolsAPI.md#listsymbols) | **GET** /api/symbols | Get Symbols list
*TradesAPI* | [**createTrade**](docs/TradesAPI.md#createtrade) | **POST** /api/trades | Create Trade
*TradesAPI* | [**getTrade**](docs/TradesAPI.md#gettrade) | **GET** /api/trades/{trade_guid} | Get Trade
*TradesAPI* | [**listTrades**](docs/TradesAPI.md#listtrades) | **GET** /api/trades | Get trades list
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
 - [ErrorResponseBankModel](docs/ErrorResponseBankModel.md)
 - [FeeBankModel](docs/FeeBankModel.md)
 - [FeeConfigurationBankModel](docs/FeeConfigurationBankModel.md)
 - [FeeConfigurationListBankModel](docs/FeeConfigurationListBankModel.md)
 - [IdentityRecordBankModel](docs/IdentityRecordBankModel.md)
 - [IdentityRecordListBankModel](docs/IdentityRecordListBankModel.md)
 - [InternalCreateExchangeSettlementApproval202ResponseBankModel](docs/InternalCreateExchangeSettlementApproval202ResponseBankModel.md)
 - [InternalCybridAccountBankModel](docs/InternalCybridAccountBankModel.md)
 - [InternalExchangeAccountBankModel](docs/InternalExchangeAccountBankModel.md)
 - [InternalExchangeBankModel](docs/InternalExchangeBankModel.md)
 - [InternalExchangeListBankModel](docs/InternalExchangeListBankModel.md)
 - [InternalExchangeSettlementBankModel](docs/InternalExchangeSettlementBankModel.md)
 - [InternalExchangeSettlementObligationBankModel](docs/InternalExchangeSettlementObligationBankModel.md)
 - [InternalExchangeSettlementPaymentOrderBankModel](docs/InternalExchangeSettlementPaymentOrderBankModel.md)
 - [InternalExpectedPaymentBankModel](docs/InternalExpectedPaymentBankModel.md)
 - [InternalExternalBankAccountBankModel](docs/InternalExternalBankAccountBankModel.md)
 - [InternalExternalBankAccountListBankModel](docs/InternalExternalBankAccountListBankModel.md)
 - [InternalExternalWalletBankModel](docs/InternalExternalWalletBankModel.md)
 - [InternalExternalWalletListBankModel](docs/InternalExternalWalletListBankModel.md)
 - [InternalInternalBankAccountBankModel](docs/InternalInternalBankAccountBankModel.md)
 - [InternalInternalBankAccountListBankModel](docs/InternalInternalBankAccountListBankModel.md)
 - [InternalInternalWalletBankModel](docs/InternalInternalWalletBankModel.md)
 - [InternalInternalWalletListBankModel](docs/InternalInternalWalletListBankModel.md)
 - [InternalSystemAccountBankModel](docs/InternalSystemAccountBankModel.md)
 - [InternalTradingSymbolConfigurationBankModel](docs/InternalTradingSymbolConfigurationBankModel.md)
 - [InternalTransactionBankModel](docs/InternalTransactionBankModel.md)
 - [PatchBankBankModel](docs/PatchBankBankModel.md)
 - [PatchInternalAccountBankModel](docs/PatchInternalAccountBankModel.md)
 - [PostAccountBankModel](docs/PostAccountBankModel.md)
 - [PostBankBankModel](docs/PostBankBankModel.md)
 - [PostCustomerBankModel](docs/PostCustomerBankModel.md)
 - [PostFeeBankModel](docs/PostFeeBankModel.md)
 - [PostFeeConfigurationBankModel](docs/PostFeeConfigurationBankModel.md)
 - [PostIdentityRecordAttestationDetailsBankModel](docs/PostIdentityRecordAttestationDetailsBankModel.md)
 - [PostIdentityRecordBankModel](docs/PostIdentityRecordBankModel.md)
 - [PostInternalAccountBankModel](docs/PostInternalAccountBankModel.md)
 - [PostInternalClaimExchangeSettlementPaymentOrderBankModel](docs/PostInternalClaimExchangeSettlementPaymentOrderBankModel.md)
 - [PostInternalClaimExpectedPaymentBankModel](docs/PostInternalClaimExpectedPaymentBankModel.md)
 - [PostInternalCybridAccountBankModel](docs/PostInternalCybridAccountBankModel.md)
 - [PostInternalExchangeAccountBankModel](docs/PostInternalExchangeAccountBankModel.md)
 - [PostInternalExchangeBankModel](docs/PostInternalExchangeBankModel.md)
 - [PostInternalExchangeSettlementBankModel](docs/PostInternalExchangeSettlementBankModel.md)
 - [PostInternalExchangeSettlementPaymentOrderBankModel](docs/PostInternalExchangeSettlementPaymentOrderBankModel.md)
 - [PostInternalExpectedPaymentBankModel](docs/PostInternalExpectedPaymentBankModel.md)
 - [PostInternalExternalBankAccountBankModel](docs/PostInternalExternalBankAccountBankModel.md)
 - [PostInternalExternalWalletBankModel](docs/PostInternalExternalWalletBankModel.md)
 - [PostInternalInternalBankAccountBankModel](docs/PostInternalInternalBankAccountBankModel.md)
 - [PostInternalInternalWalletBankModel](docs/PostInternalInternalWalletBankModel.md)
 - [PostInternalSystemAccountBankModel](docs/PostInternalSystemAccountBankModel.md)
 - [PostInternalSystemTransactionBankModel](docs/PostInternalSystemTransactionBankModel.md)
 - [PostInternalTradingSymbolConfigurationBankModel](docs/PostInternalTradingSymbolConfigurationBankModel.md)
 - [PostQuoteBankModel](docs/PostQuoteBankModel.md)
 - [PostRewardBankModel](docs/PostRewardBankModel.md)
 - [PostTradeBankModel](docs/PostTradeBankModel.md)
 - [PostVerificationKeyBankModel](docs/PostVerificationKeyBankModel.md)
 - [QuoteBankModel](docs/QuoteBankModel.md)
 - [QuoteListBankModel](docs/QuoteListBankModel.md)
 - [RewardBankModel](docs/RewardBankModel.md)
 - [SymbolPriceBankModel](docs/SymbolPriceBankModel.md)
 - [TradeBankModel](docs/TradeBankModel.md)
 - [TradeListBankModel](docs/TradeListBankModel.md)
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
 - **rewards:execute**: rewards execute
 - **rewards:read**: rewards read


## Author

support@cybrid.app

