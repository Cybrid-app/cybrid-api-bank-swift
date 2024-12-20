//
// PostIdentityVerificationBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for identity verification creation. */
public struct PostIdentityVerificationBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case kyc = "kyc"
        case bankAccount = "bank_account"
        case counterparty = "counterparty"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum ExpectedBehavioursBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case passedImmediately = "passed_immediately"
        case failedImmediately = "failed_immediately"
        case taxIdNotChecked = "tax_id_not_checked"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum MethodBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case watchlists = "watchlists"
        case attested = "attested"
        case documentSubmission = "document_submission"
        case idAndSelfie = "id_and_selfie"
        case taxIdAndSelfie = "tax_id_and_selfie"
        case businessRegistration = "business_registration"
        case plaidIdentityMatch = "plaid_identity_match"
        case attestedOwnership = "attested_ownership"
        case accountOwnership = "account_ownership"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of identity verification. */
    public var type: TypeBankModel
    /** The customer's identifier. */
    public var customerGuid: String?
    /** The optional expected behaviour to simulate. */
    public var expectedBehaviours: [ExpectedBehavioursBankModel]?
    /** The identity verification method. Required when type is counterparty, type is kyc, or type is bank_account. */
    public var method: MethodBankModel?
    /** The counterparty's identifier. Required when type is counterparty. */
    public var counterpartyGuid: String?
    /** The ISO 3166 country 2-Alpha country the customer is being verified in. If not present, will default to the Bank's configured country code. Optional when type is kyc and method is id_and_selfie, type is kyc and method is tax_id_and_selfie, or type is kyc and method is business_registration. */
    public var countryCode: String?
    public var name: PostIdentityVerificationNameBankModel?
    public var address: PostIdentityVerificationAddressBankModel?
    /** The customer's date of birth. Required when type is kyc and method is attested. */
    public var dateOfBirth: Date?
    /** The customer's identification numbers. Required when type is kyc and method is attested. */
    public var identificationNumbers: [PostIdentificationNumberBankModel]?
    /** The external bank account's identifier. Required when type is bank_account. */
    public var externalBankAccountGuid: String?
    /** The customer's phone number. Optional when type is bank_account and method is attested_ownership. */
    public var phoneNumber: String?
    /** The customer's email address. Optional when type is bank_account and method is attested_ownership. */
    public var emailAddress: String?

    public init(type: TypeBankModel, customerGuid: String? = nil, expectedBehaviours: [ExpectedBehavioursBankModel]? = nil, method: MethodBankModel? = nil, counterpartyGuid: String? = nil, countryCode: String? = nil, name: PostIdentityVerificationNameBankModel? = nil, address: PostIdentityVerificationAddressBankModel? = nil, dateOfBirth: Date? = nil, identificationNumbers: [PostIdentificationNumberBankModel]? = nil, externalBankAccountGuid: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil) {
        self.type = type
        self.customerGuid = customerGuid
        self.expectedBehaviours = expectedBehaviours
        self.method = method
        self.counterpartyGuid = counterpartyGuid
        self.countryCode = countryCode
        self.name = name
        self.address = address
        self.dateOfBirth = dateOfBirth
        self.identificationNumbers = identificationNumbers
        self.externalBankAccountGuid = externalBankAccountGuid
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case customerGuid = "customer_guid"
        case expectedBehaviours = "expected_behaviours"
        case method
        case counterpartyGuid = "counterparty_guid"
        case countryCode = "country_code"
        case name
        case address
        case dateOfBirth = "date_of_birth"
        case identificationNumbers = "identification_numbers"
        case externalBankAccountGuid = "external_bank_account_guid"
        case phoneNumber = "phone_number"
        case emailAddress = "email_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(expectedBehaviours, forKey: .expectedBehaviours)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(counterpartyGuid, forKey: .counterpartyGuid)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(identificationNumbers, forKey: .identificationNumbers)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
    }
}

