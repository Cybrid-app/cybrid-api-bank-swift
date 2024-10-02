# Swift5 API client for CybridApiBankSwift

# Cybrid API documentation

Welcome to Cybrid, an all-in-one crypto platform that enables you to easily **build** and **launch** white-label crypto products or services.

In these documents, you'll find details on how our REST API operates and generally how our platform functions.

If you're looking for our UI SDK Widgets for Web or Mobile (iOS/Android), generated API clients, or demo applications, head over to our [Github repo](https://github.com/Cybrid-app).

💡 We recommend bookmarking the [Cybrid LinkTree](https://linktr.ee/cybridtechnologies) which contains many helpful links to platform resources.

## Getting Started

This is Cybrid's public interactive API documentation, which allows you to fully test our APIs. If you'd like to use a different tool to exercise our APIs, you can download the [Open API 3.0 yaml](https://bank.production.cybrid.app/api/schema/v1/swagger.yaml) for import.

If you're new to our APIs and the Cybrid Platform, follow the below guides to get set up and familiar with the platform:

1. [Introduction](https://docs.cybrid.xyz/docs/introduction)
2. [Platform Introduction](https://docs.cybrid.xyz/docs/how-is-cybrid-architected)
3. [Testing with Hosted Web Demo App](https://docs.cybrid.xyz/docs/testing-with-hosted-web-demo-app)

In [Getting Started in the Cybrid Sandbox](https://docs.cybrid.xyz/docs/how-do-i-get-started-with-the-sandbox), we walk you through how to use the [Cybrid Sandbox](https://id.sandbox.cybrid.app/) to create a test bank and generate API keys. In [Getting Ready for Trading](https://kb.cybrid.xyz/getting-ready-for-trading), we walk through creating customers, customer identities, accounts, as well as executing quotes and trades.

## Working with the Cybrid Platform

There are three primary ways you can interact with the Cybrid platform:

1. Directly via our RESTful API (this documentation)
2. Using our API clients available in a variety of languages ([Angular](https://github.com/Cybrid-app/cybrid-api-bank-angular), [Java](https://github.com/Cybrid-app/cybrid-api-bank-java), [Kotlin](https://github.com/Cybrid-app/cybrid-api-bank-kotlin), [Python](https://github.com/Cybrid-app/cybrid-api-bank-python), [Ruby](https://github.com/Cybrid-app/cybrid-api-bank-ruby), [Swift](https://github.com/Cybrid-app/cybrid-api-bank-swift) or [Typescript](https://github.com/Cybrid-app/cybrid-api-bank-typescript))
3. Integrating a platform specific SDK ([Web](https://github.com/Cybrid-app/cybrid-sdk-web), [Android](https://github.com/Cybrid-app/cybrid-sdk-android), [iOS](https://github.com/Cybrid-app/cybrid-sdk-ios))

Our complete set of APIs allows you to manage resources across three distinct areas: your `Organization`, your `Banks` and your `Identities`. For most of your testing and interaction you'll be using the `Bank` API, which is where the majority of APIs reside.

*The complete set of APIs can be found on the following pages:*

| API                                                              | Description                                                 |
|------------------------------------------------------------------|-------------------------------------------------------------|
| [Organization API](https://organization.production.cybrid.app/api/schema/swagger-ui)   | APIs to manage organizations                                |
| [Bank API](https://bank.production.cybrid.app/api/schema/swagger-ui)                   | APIs to manage banks (and all downstream customer activity) |
| [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui)                       | APIs to manage organization and bank identities             |

For questions please contact [Support](mailto:support@cybrid.xyz) at any time for assistance, or contact the [Product Team](mailto:product@cybrid.xyz) for product suggestions.

## Authenticating with the API

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create `Organization` and `Bank` tokens can be generated via the [Cybrid Sandbox](https://id.production.cybrid.app). Access tokens can be generated for a `Customer` as well via the [Cybrid IdP](https://id.production.cybrid.app) as well.

An `Organization` access token applies broadly to the whole Organization and all of its `Banks`, whereas, a `Bank` access token is specific to an individual Bank. `Customer` tokens, similarly, are scoped to a specific customer in a bank.

Both `Organization` and `Bank` tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique `Client ID` and `Secret` that allows for machine-to-machine authentication.

A `Bank` can then generate `Customer` access tokens via API using our [Identities API](https://id.production.cybrid.app/api/schema/swagger-ui).

<font color=\"orange\">**⚠️ Never share your Client ID or Secret publicly or in your source code repository.**</font>

Your `Client ID` and `Secret` can be exchanged for a time-limited `Bearer Token` by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document.

The following curl command can be used to quickly generate a `Bearer Token` for use in testing the API or demo applications.

```
# Example request when using Bank credentials
curl -X POST https://id.production.cybrid.app/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"banks:read banks:write bank_applications:execute accounts:read accounts:execute counterparties:read counterparties:write counterparties:execute customers:read customers:write customers:execute prices:read quotes:execute quotes:read trades:execute trades:read transfers:execute transfers:read external_bank_accounts:read external_bank_accounts:write external_bank_accounts:execute external_wallets:read external_wallets:execute workflows:read workflows:execute deposit_addresses:read deposit_addresses:execute deposit_bank_accounts:read deposit_bank_accounts:execute invoices:read invoices:write invoices:execute identity_verifications:read identity_verifications:write identity_verifications:execute\"
  }' -H \"Content-Type: application/json\"

# When using Organization credentials set `scope` to 'organizations:read organizations:write organization_applications:execute banks:read banks:write banks:execute bank_applications:execute users:read users:execute counterparties:read customers:read accounts:read prices:read quotes:execute quotes:read trades:execute trades:read transfers:read transfers:execute external_bank_accounts:read external_wallets:read workflows:read deposit_addresses:read deposit_bank_accounts:read invoices:read subscriptions:read subscriptions:write subscriptions:execute subscription_events:read subscription_events:execute identity_verifications:read'
```
<font color=\"orange\">**⚠️ Note: The above curl will create a bearer token with full scope access. Delete scopes if you'd like to restrict access.**</font>

## Authentication Scopes

The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.

The following scopes are available on the platform and can be requested when generating either an Organization, Bank or Customer token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.

| Resource              | Read scope (Token Type)                                    | Write scope (Token Type)                      | Execute scope (Token Type)                       |
|-----------------------|------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------|
| Account               | accounts:read (Organization, Bank, Customer)               |                                               | accounts:execute (Bank, Customer)                |
| Bank                  | banks:read (Organization, Bank)                            | banks:write (Organization, Bank)              | banks:execute (Organization)                     |
| Customer              | customers:read (Organization, Bank, Customer)              | customers:write (Bank, Customer)              | customers:execute (Bank)                         |
| Counterparty          | counterparties:read (Organization, Bank, Customer)         | counterparties:write (Bank, Customer)         | counterparties:execute (Bank)                    |
| Deposit Address       | deposit_addresses:read (Organization, Bank, Customer)      | deposit_addresses:write (Bank, Customer)      | deposit_addresses:execute (Bank, Customer)       |
| External Bank Account | external_bank_accounts:read (Organization, Bank, Customer) | external_bank_accounts:write (Bank, Customer) | external_bank_accounts:execute (Bank, Customer)  |
| External Wallet       | external_wallet:read (Organization, Bank, Customer)        |                                               | external_wallet:execute (Bank, Customer)         |
| Organization          | organizations:read (Organization)                          | organizations:write (Organization)            |                                                  |
| User                  | users:read (Organization)                                  |                                               | users:execute (Organization)                     |
| Price                 | prices:read (Bank, Customer)                               |                                               |                                                  |
| Quote                 | quotes:read (Organization, Bank, Customer)                 |                                               | quotes:execute (Organization, Bank, Customer)    |
| Trade                 | trades:read (Organization, Bank, Customer)                 |                                               | trades:execute (Organization, Bank, Customer)    |
| Transfer              | transfers:read (Organization, Bank, Customer)              |                                               | transfers:execute (Organization, Bank, Customer) |
| Workflow              | workflows:read (Organization, Bank, Customer)              |                                               | workflows:execute (Bank, Customer)               |
| Invoice               | invoices:read (Organization, Bank, Customer)               | invoices:write (Bank, Customer)               | invoices:execute (Bank, Customer)                |

## Available Endpoints

The available APIs for the [Identity](https://id.production.cybrid.app/api/schema/swagger-ui), [Organization](https://organization.production.cybrid.app/api/schema/swagger-ui) and [Bank](https://bank.production.cybrid.app/api/schema/swagger-ui) API services are listed below:

| API Service  | Model                | API Endpoint Path              | Description                                                                                       |
|--------------|----------------------|--------------------------------|---------------------------------------------------------------------------------------------------|
| Identity     | Bank                 | /api/bank_applications         | Create and list banks                                                                             |
| Identity     | CustomerToken        | /api/customer_tokens           | Create customer JWT access tokens                                                                 |
| Identity     | Organization         | /api/organization_applications | Create and list organizations                                                                     |
| Identity     | Organization         | /api/users                     | Create and list organization users                                                                |
| Organization | Organization         | /api/organizations             | APIs to retrieve and update organization name                                                     |
| Bank         | Account              | /api/accounts                  | Create and list accounts, which hold a specific asset for a customers                             |
| Bank         | Asset                | /api/assets                    | Get a list of assets supported by the platform (ex: BTC, ETH)                                     |
| Bank         | Bank                 | /api/banks                     | Create, update and list banks, the parent to customers, accounts, etc                             |
| Bank         | Customer             | /api/customers                 | Create and list customers                                                                         |
| Bank         | Counterparty         | /api/counterparties            | Create and list counterparties                                                                    |
| Bank         | DepositAddress       | /api/deposit_addresses         | Create, get and list deposit addresses                                                            |
| Bank         | ExternalBankAccount  | /api/external_bank_accounts    | Create, get and list external bank accounts, which connect customer bank accounts to the platform |
| Bank         | ExternalWallet       | /api/external_wallets          | Create, get, list and delete external wallets, which connect customer wallets to the platform     |
| Bank         | IdentityVerification | /api/identity_verifications    | Create and list identity verifications, which are performed on customers for KYC                  |
| Bank         | Invoice              | /api/invoices                  | Create, get, cancel and list invoices                                                             |
| Bank         | PaymentInstruction   | /api/payment_instructions      | Create, get and list payment instructions for invoices                                            |
| Bank         | Price                | /api/prices                    | Get the current prices for assets on the platform                                                 |
| Bank         | Quote                | /api/quotes                    | Create and list quotes, which are required to execute trades                                      |
| Bank         | Symbol               | /api/symbols                   | Get a list of symbols supported for trade (ex: BTC-USD)                                           |
| Bank         | Trade                | /api/trades                    | Create and list trades, which buy or sell cryptocurrency                                          |
| Bank         | Transfer             | /api/transfers                 | Create, get and list transfers (e.g., funding, book)                                              |
| Bank         | Workflow             | /api/workflows                 | Create, get and list workflows                                                                    |

## Understanding Object Models & Endpoints

**Organizations**

An `Organization` is meant to represent the organization partnering with Cybrid to use our platform.

An `Organization` typically does not directly interact with `customers`. Instead, an Organization has one or more `banks`, which encompass the financial service offerings of the platform.

**Banks**

A `Bank` is owned by an `Organization` and can be thought of as an environment or container for `customers` and product offerings. Banks are created in either `Sandbox` or `Production` mode, where `Sandbox` is the environment that you would test, prototype and build in prior to moving to `Production`.

An `Organization` can have multiple `banks`, in either `Sandbox` or `Production` environments. A `Sandbox Bank` will be backed by stubbed data and process flows. For instance, funding source transfer processes as well as trades will be simulated rather than performed, however asset prices are representative of real-world values. You have an unlimited amount of simulated fiat currency for testing purposes.

**Customers**

`Customers` represent your banking users on the platform. At present, we offer support for `Individuals` as Customers.

`Customers` must be verified (i.e., KYC'd) in our system before they can play any part on the platform, which means they must have an associated and a passing `Identity Verification`. See the Identity Verifications section for more details on how a customer can be verified.

`Customers` must also have an `Account` to be able to transact, in the desired asset class. See the Accounts APIs for more details on setting up accounts for the customer.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: v0.119.163
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://bank.sandbox.cybrid.app*

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
*CounterpartiesAPI* | [**createCounterparty**](docs/CounterpartiesAPI.md#createcounterparty) | **POST** /api/counterparties | Create Counterparty
*CounterpartiesAPI* | [**getCounterparty**](docs/CounterpartiesAPI.md#getcounterparty) | **GET** /api/counterparties/{counterparty_guid} | Get Counterparty
*CounterpartiesAPI* | [**listCounterparties**](docs/CounterpartiesAPI.md#listcounterparties) | **GET** /api/counterparties | Get counterparties list
*CustomersAPI* | [**createCustomer**](docs/CustomersAPI.md#createcustomer) | **POST** /api/customers | Create Customer
*CustomersAPI* | [**getCustomer**](docs/CustomersAPI.md#getcustomer) | **GET** /api/customers/{customer_guid} | Get Customer
*CustomersAPI* | [**listCustomers**](docs/CustomersAPI.md#listcustomers) | **GET** /api/customers | Get customers list
*CustomersAPI* | [**updateCustomer**](docs/CustomersAPI.md#updatecustomer) | **PATCH** /api/customers/{customer_guid} | Patch Customer
*DepositAddressesAPI* | [**createDepositAddress**](docs/DepositAddressesAPI.md#createdepositaddress) | **POST** /api/deposit_addresses | Create Deposit Address
*DepositAddressesAPI* | [**getDepositAddress**](docs/DepositAddressesAPI.md#getdepositaddress) | **GET** /api/deposit_addresses/{deposit_address_guid} | Get Deposit Address
*DepositAddressesAPI* | [**listDepositAddresses**](docs/DepositAddressesAPI.md#listdepositaddresses) | **GET** /api/deposit_addresses | List Deposit Addresses
*DepositBankAccountsAPI* | [**createDepositBankAccount**](docs/DepositBankAccountsAPI.md#createdepositbankaccount) | **POST** /api/deposit_bank_accounts | Create Deposit Bank Account
*DepositBankAccountsAPI* | [**getDepositBankAccount**](docs/DepositBankAccountsAPI.md#getdepositbankaccount) | **GET** /api/deposit_bank_accounts/{deposit_bank_account_guid} | Get Deposit Bank Account
*DepositBankAccountsAPI* | [**listDepositBankAccounts**](docs/DepositBankAccountsAPI.md#listdepositbankaccounts) | **GET** /api/deposit_bank_accounts | List Deposit Bank Accounts
*ExternalBankAccountsAPI* | [**createExternalBankAccount**](docs/ExternalBankAccountsAPI.md#createexternalbankaccount) | **POST** /api/external_bank_accounts | Create ExternalBankAccount
*ExternalBankAccountsAPI* | [**deleteExternalBankAccount**](docs/ExternalBankAccountsAPI.md#deleteexternalbankaccount) | **DELETE** /api/external_bank_accounts/{external_bank_account_guid} | Delete External Bank Account
*ExternalBankAccountsAPI* | [**getExternalBankAccount**](docs/ExternalBankAccountsAPI.md#getexternalbankaccount) | **GET** /api/external_bank_accounts/{external_bank_account_guid} | Get External Bank Account
*ExternalBankAccountsAPI* | [**listExternalBankAccounts**](docs/ExternalBankAccountsAPI.md#listexternalbankaccounts) | **GET** /api/external_bank_accounts | Get external bank accounts list
*ExternalBankAccountsAPI* | [**patchExternalBankAccount**](docs/ExternalBankAccountsAPI.md#patchexternalbankaccount) | **PATCH** /api/external_bank_accounts/{external_bank_account_guid} | Patch ExternalBankAccount
*ExternalWalletsAPI* | [**createExternalWallet**](docs/ExternalWalletsAPI.md#createexternalwallet) | **POST** /api/external_wallets | Create ExternalWallet
*ExternalWalletsAPI* | [**deleteExternalWallet**](docs/ExternalWalletsAPI.md#deleteexternalwallet) | **DELETE** /api/external_wallets/{external_wallet_guid} | Delete External Wallet
*ExternalWalletsAPI* | [**getExternalWallet**](docs/ExternalWalletsAPI.md#getexternalwallet) | **GET** /api/external_wallets/{external_wallet_guid} | Get External Wallet
*ExternalWalletsAPI* | [**listExternalWallets**](docs/ExternalWalletsAPI.md#listexternalwallets) | **GET** /api/external_wallets | Get external wallets list
*IdentityVerificationsAPI* | [**createIdentityVerification**](docs/IdentityVerificationsAPI.md#createidentityverification) | **POST** /api/identity_verifications | Create Identity Verification
*IdentityVerificationsAPI* | [**getIdentityVerification**](docs/IdentityVerificationsAPI.md#getidentityverification) | **GET** /api/identity_verifications/{identity_verification_guid} | Get Identity Verification
*IdentityVerificationsAPI* | [**listIdentityVerifications**](docs/IdentityVerificationsAPI.md#listidentityverifications) | **GET** /api/identity_verifications | List Identity Verifications
*InvoicesAPI* | [**cancelInvoice**](docs/InvoicesAPI.md#cancelinvoice) | **DELETE** /api/invoices/{invoice_guid} | Cancel Invoice
*InvoicesAPI* | [**createInvoice**](docs/InvoicesAPI.md#createinvoice) | **POST** /api/invoices | Create Invoice
*InvoicesAPI* | [**getInvoice**](docs/InvoicesAPI.md#getinvoice) | **GET** /api/invoices/{invoice_guid} | Get Invoice
*InvoicesAPI* | [**listInvoices**](docs/InvoicesAPI.md#listinvoices) | **GET** /api/invoices | List Invoices
*PaymentInstructionsAPI* | [**createPaymentInstruction**](docs/PaymentInstructionsAPI.md#createpaymentinstruction) | **POST** /api/payment_instructions | Create Payment Instruction
*PaymentInstructionsAPI* | [**getPaymentInstruction**](docs/PaymentInstructionsAPI.md#getpaymentinstruction) | **GET** /api/payment_instructions/{payment_instruction_guid} | Get Payment Instruction
*PaymentInstructionsAPI* | [**listPaymentInstructions**](docs/PaymentInstructionsAPI.md#listpaymentinstructions) | **GET** /api/payment_instructions | List Payment Instructions
*PricesAPI* | [**listPrices**](docs/PricesAPI.md#listprices) | **GET** /api/prices | Get Price
*QuotesAPI* | [**createQuote**](docs/QuotesAPI.md#createquote) | **POST** /api/quotes | Create Quote
*QuotesAPI* | [**getQuote**](docs/QuotesAPI.md#getquote) | **GET** /api/quotes/{quote_guid} | Get Quote
*QuotesAPI* | [**listQuotes**](docs/QuotesAPI.md#listquotes) | **GET** /api/quotes | Get quotes list
*SymbolsAPI* | [**listSymbols**](docs/SymbolsAPI.md#listsymbols) | **GET** /api/symbols | Get Symbols list
*TradesAPI* | [**createTrade**](docs/TradesAPI.md#createtrade) | **POST** /api/trades | Create Trade
*TradesAPI* | [**getTrade**](docs/TradesAPI.md#gettrade) | **GET** /api/trades/{trade_guid} | Get Trade
*TradesAPI* | [**listTrades**](docs/TradesAPI.md#listtrades) | **GET** /api/trades | Get trades list
*TransfersAPI* | [**createTransfer**](docs/TransfersAPI.md#createtransfer) | **POST** /api/transfers | Create Transfer
*TransfersAPI* | [**getTransfer**](docs/TransfersAPI.md#gettransfer) | **GET** /api/transfers/{transfer_guid} | Get Transfer
*TransfersAPI* | [**listTransfers**](docs/TransfersAPI.md#listtransfers) | **GET** /api/transfers | Get transfers list
*WorkflowsAPI* | [**createWorkflow**](docs/WorkflowsAPI.md#createworkflow) | **POST** /api/workflows | Create Workflow
*WorkflowsAPI* | [**getWorkflow**](docs/WorkflowsAPI.md#getworkflow) | **GET** /api/workflows/{workflow_guid} | Get Workflow
*WorkflowsAPI* | [**listWorkflows**](docs/WorkflowsAPI.md#listworkflows) | **GET** /api/workflows | Get workflows list


## Documentation For Models

 - [AccountBankModel](docs/AccountBankModel.md)
 - [AccountListBankModel](docs/AccountListBankModel.md)
 - [AccountStateBankModel](docs/AccountStateBankModel.md)
 - [AccountTypeBankModel](docs/AccountTypeBankModel.md)
 - [ActivityLimitBankModel](docs/ActivityLimitBankModel.md)
 - [ActivityTypeBankModel](docs/ActivityTypeBankModel.md)
 - [AssetBankModel](docs/AssetBankModel.md)
 - [AssetListBankModel](docs/AssetListBankModel.md)
 - [AssetTypesBankModel](docs/AssetTypesBankModel.md)
 - [BankBankModel](docs/BankBankModel.md)
 - [BankFeatureBankModel](docs/BankFeatureBankModel.md)
 - [BankListBankModel](docs/BankListBankModel.md)
 - [BankTypeBankModel](docs/BankTypeBankModel.md)
 - [ComplianceCheckBankModel](docs/ComplianceCheckBankModel.md)
 - [ComplianceCheckOutcomeBankModel](docs/ComplianceCheckOutcomeBankModel.md)
 - [ComplianceCheckTypeBankModel](docs/ComplianceCheckTypeBankModel.md)
 - [ComplianceDecisionBankModel](docs/ComplianceDecisionBankModel.md)
 - [ComplianceDecisionStateBankModel](docs/ComplianceDecisionStateBankModel.md)
 - [ComplianceDecisionTypeBankModel](docs/ComplianceDecisionTypeBankModel.md)
 - [CounterpartyAddressBankModel](docs/CounterpartyAddressBankModel.md)
 - [CounterpartyAliasesInnerBankModel](docs/CounterpartyAliasesInnerBankModel.md)
 - [CounterpartyBankModel](docs/CounterpartyBankModel.md)
 - [CounterpartyListBankModel](docs/CounterpartyListBankModel.md)
 - [CounterpartyNameBankModel](docs/CounterpartyNameBankModel.md)
 - [CounterpartyStateBankModel](docs/CounterpartyStateBankModel.md)
 - [CounterpartyTypeBankModel](docs/CounterpartyTypeBankModel.md)
 - [CustomerAddressBankModel](docs/CustomerAddressBankModel.md)
 - [CustomerAliasesInnerBankModel](docs/CustomerAliasesInnerBankModel.md)
 - [CustomerBankModel](docs/CustomerBankModel.md)
 - [CustomerListBankModel](docs/CustomerListBankModel.md)
 - [CustomerNameBankModel](docs/CustomerNameBankModel.md)
 - [CustomerStateBankModel](docs/CustomerStateBankModel.md)
 - [CustomerTypeBankModel](docs/CustomerTypeBankModel.md)
 - [DepositAddressBankModel](docs/DepositAddressBankModel.md)
 - [DepositAddressFormatBankModel](docs/DepositAddressFormatBankModel.md)
 - [DepositAddressListBankModel](docs/DepositAddressListBankModel.md)
 - [DepositAddressStateBankModel](docs/DepositAddressStateBankModel.md)
 - [DepositBankAccountAccountDetailsInnerBankModel](docs/DepositBankAccountAccountDetailsInnerBankModel.md)
 - [DepositBankAccountBankModel](docs/DepositBankAccountBankModel.md)
 - [DepositBankAccountCounterpartyAddressBankModel](docs/DepositBankAccountCounterpartyAddressBankModel.md)
 - [DepositBankAccountListBankModel](docs/DepositBankAccountListBankModel.md)
 - [DepositBankAccountRoutingDetailsInnerBankModel](docs/DepositBankAccountRoutingDetailsInnerBankModel.md)
 - [DepositBankAccountRoutingNumberTypeBankModel](docs/DepositBankAccountRoutingNumberTypeBankModel.md)
 - [DepositBankAccountStateBankModel](docs/DepositBankAccountStateBankModel.md)
 - [ErrorResponseBankModel](docs/ErrorResponseBankModel.md)
 - [ExternalBankAccountBalancesBankModel](docs/ExternalBankAccountBalancesBankModel.md)
 - [ExternalBankAccountBankModel](docs/ExternalBankAccountBankModel.md)
 - [ExternalBankAccountKindBankModel](docs/ExternalBankAccountKindBankModel.md)
 - [ExternalBankAccountListBankModel](docs/ExternalBankAccountListBankModel.md)
 - [ExternalBankAccountPiiInnerAddressesInnerBankModel](docs/ExternalBankAccountPiiInnerAddressesInnerBankModel.md)
 - [ExternalBankAccountPiiInnerBankModel](docs/ExternalBankAccountPiiInnerBankModel.md)
 - [ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel](docs/ExternalBankAccountPiiInnerRoutingDetailsInnerBankModel.md)
 - [ExternalBankAccountStateBankModel](docs/ExternalBankAccountStateBankModel.md)
 - [ExternalWalletBankModel](docs/ExternalWalletBankModel.md)
 - [ExternalWalletEnvironmentBankModel](docs/ExternalWalletEnvironmentBankModel.md)
 - [ExternalWalletListBankModel](docs/ExternalWalletListBankModel.md)
 - [ExternalWalletStateBankModel](docs/ExternalWalletStateBankModel.md)
 - [IdentificationNumberBankModel](docs/IdentificationNumberBankModel.md)
 - [IdentityVerificationBankModel](docs/IdentityVerificationBankModel.md)
 - [IdentityVerificationListBankModel](docs/IdentityVerificationListBankModel.md)
 - [IdentityVerificationMethodBankModel](docs/IdentityVerificationMethodBankModel.md)
 - [IdentityVerificationOutcomeBankModel](docs/IdentityVerificationOutcomeBankModel.md)
 - [IdentityVerificationPersonaStateBankModel](docs/IdentityVerificationPersonaStateBankModel.md)
 - [IdentityVerificationStateBankModel](docs/IdentityVerificationStateBankModel.md)
 - [IdentityVerificationTypeBankModel](docs/IdentityVerificationTypeBankModel.md)
 - [IdentityVerificationWithDetailsBankModel](docs/IdentityVerificationWithDetailsBankModel.md)
 - [IdentityVerificationWithDetailsPiiAddressBankModel](docs/IdentityVerificationWithDetailsPiiAddressBankModel.md)
 - [IdentityVerificationWithDetailsPiiBankModel](docs/IdentityVerificationWithDetailsPiiBankModel.md)
 - [IdentityVerificationWithDetailsPiiNameBankModel](docs/IdentityVerificationWithDetailsPiiNameBankModel.md)
 - [InvoiceBankModel](docs/InvoiceBankModel.md)
 - [InvoiceListBankModel](docs/InvoiceListBankModel.md)
 - [PatchBankBankModel](docs/PatchBankBankModel.md)
 - [PatchCustomerBankModel](docs/PatchCustomerBankModel.md)
 - [PatchExternalBankAccountBankModel](docs/PatchExternalBankAccountBankModel.md)
 - [PaymentInstructionBankModel](docs/PaymentInstructionBankModel.md)
 - [PaymentInstructionListBankModel](docs/PaymentInstructionListBankModel.md)
 - [PostAccountBankModel](docs/PostAccountBankModel.md)
 - [PostBankBankModel](docs/PostBankBankModel.md)
 - [PostCounterpartyBankModel](docs/PostCounterpartyBankModel.md)
 - [PostCounterpartyNameBankModel](docs/PostCounterpartyNameBankModel.md)
 - [PostCustomerAddressBankModel](docs/PostCustomerAddressBankModel.md)
 - [PostCustomerBankModel](docs/PostCustomerBankModel.md)
 - [PostCustomerNameBankModel](docs/PostCustomerNameBankModel.md)
 - [PostDepositAddressBankModel](docs/PostDepositAddressBankModel.md)
 - [PostDepositBankAccountBankModel](docs/PostDepositBankAccountBankModel.md)
 - [PostExternalBankAccountBankModel](docs/PostExternalBankAccountBankModel.md)
 - [PostExternalBankAccountCounterpartyAddressBankModel](docs/PostExternalBankAccountCounterpartyAddressBankModel.md)
 - [PostExternalBankAccountCounterpartyBankAccountBankModel](docs/PostExternalBankAccountCounterpartyBankAccountBankModel.md)
 - [PostExternalBankAccountCounterpartyNameBankModel](docs/PostExternalBankAccountCounterpartyNameBankModel.md)
 - [PostExternalWalletBankModel](docs/PostExternalWalletBankModel.md)
 - [PostFeeBankModel](docs/PostFeeBankModel.md)
 - [PostIdentificationNumberBankModel](docs/PostIdentificationNumberBankModel.md)
 - [PostIdentityVerificationAddressBankModel](docs/PostIdentityVerificationAddressBankModel.md)
 - [PostIdentityVerificationBankModel](docs/PostIdentityVerificationBankModel.md)
 - [PostIdentityVerificationNameBankModel](docs/PostIdentityVerificationNameBankModel.md)
 - [PostInvoiceBankModel](docs/PostInvoiceBankModel.md)
 - [PostPaymentInstructionBankModel](docs/PostPaymentInstructionBankModel.md)
 - [PostQuoteBankModel](docs/PostQuoteBankModel.md)
 - [PostTradeBankModel](docs/PostTradeBankModel.md)
 - [PostTransferBankModel](docs/PostTransferBankModel.md)
 - [PostTransferParticipantBankModel](docs/PostTransferParticipantBankModel.md)
 - [PostWorkflowBankModel](docs/PostWorkflowBankModel.md)
 - [QuoteBankModel](docs/QuoteBankModel.md)
 - [QuoteListBankModel](docs/QuoteListBankModel.md)
 - [QuoteSideBankModel](docs/QuoteSideBankModel.md)
 - [QuoteTypeBankModel](docs/QuoteTypeBankModel.md)
 - [SymbolPriceBankModel](docs/SymbolPriceBankModel.md)
 - [TradeBankModel](docs/TradeBankModel.md)
 - [TradeFailureCodeBankModel](docs/TradeFailureCodeBankModel.md)
 - [TradeListBankModel](docs/TradeListBankModel.md)
 - [TradeSideBankModel](docs/TradeSideBankModel.md)
 - [TradeStateBankModel](docs/TradeStateBankModel.md)
 - [TradeTypeBankModel](docs/TradeTypeBankModel.md)
 - [TransferAccountTypeBankModel](docs/TransferAccountTypeBankModel.md)
 - [TransferBankModel](docs/TransferBankModel.md)
 - [TransferDestinationAccountBankModel](docs/TransferDestinationAccountBankModel.md)
 - [TransferFailureCodeBankModel](docs/TransferFailureCodeBankModel.md)
 - [TransferListBankModel](docs/TransferListBankModel.md)
 - [TransferParticipantBankModel](docs/TransferParticipantBankModel.md)
 - [TransferSideBankModel](docs/TransferSideBankModel.md)
 - [TransferSourceAccountBankModel](docs/TransferSourceAccountBankModel.md)
 - [TransferStateBankModel](docs/TransferStateBankModel.md)
 - [TransferTypeBankModel](docs/TransferTypeBankModel.md)
 - [WorkflowBankModel](docs/WorkflowBankModel.md)
 - [WorkflowStateBankModel](docs/WorkflowStateBankModel.md)
 - [WorkflowTypeBankModel](docs/WorkflowTypeBankModel.md)
 - [WorkflowWithDetailsAllOfBankModel](docs/WorkflowWithDetailsAllOfBankModel.md)
 - [WorkflowWithDetailsBankModel](docs/WorkflowWithDetailsBankModel.md)
 - [WorkflowsListBankModel](docs/WorkflowsListBankModel.md)


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
 - **bank_applications:execute**: bank_applications execute
 - **accounts:read**: accounts read
 - **accounts:execute**: accounts execute
 - **counterparties:read**: counterparties read
 - **counterparties:write**: counterparties write
 - **counterparties:execute**: counterparties execute
 - **customers:read**: customers read
 - **customers:write**: customers write
 - **customers:execute**: customers execute
 - **prices:read**: prices read
 - **quotes:execute**: quotes execute
 - **quotes:read**: quotes read
 - **trades:execute**: trades execute
 - **trades:read**: trades read
 - **transfers:execute**: transfers execute
 - **transfers:read**: transfers read
 - **external_bank_accounts:read**: external_bank_accounts read
 - **external_bank_accounts:write**: external_bank_accounts write
 - **external_bank_accounts:execute**: external_bank_accounts execute
 - **external_wallets:read**: external_wallets read
 - **external_wallets:execute**: external_wallets execute
 - **workflows:read**: workflows read
 - **workflows:execute**: workflows execute
 - **deposit_addresses:read**: deposit_addresses read
 - **deposit_addresses:execute**: deposit_addresses execute
 - **deposit_bank_accounts:read**: deposit_bank_accounts read
 - **deposit_bank_accounts:execute**: deposit_bank_accounts execute
 - **invoices:read**: invoices read
 - **invoices:write**: invoices write
 - **invoices:execute**: invoices execute
 - **identity_verifications:read**: identity_verifications read
 - **identity_verifications:write**: identity_verifications write
 - **identity_verifications:execute**: identity_verifications execute


## Author

support@cybrid.app

