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

public struct PostIdentityVerificationBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case kyc = "kyc"
        case bankAccount = "bank_account"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum MethodBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case businessRegistration = "business_registration"
        case idAndSelfie = "id_and_selfie"
        case attested = "attested"
        case plaidIdentityMatch = "plaid_identity_match"
        case documentSubmission = "document_submission"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum ExpectedBehavioursBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case passedImmediately = "passed_immediately"
        case failedImmediately = "failed_immediately"
        case taxIdNotChecked = "tax_id_not_checked"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of identity verification. */
    public var type: TypeBankModel
    /** The identity verification method. */
    public var method: MethodBankModel
    /** The customer's identifier. */
    public var customerGuid: String?
    /** The ISO 3166 country 2-Alpha country the customer is being verified in; required when method is set to 'id_and_selfie'. If not present, will default to the Bank's configured country code. */
    public var countryCode: String?
    public var name: PostIdentityVerificationNameBankModel?
    public var address: PostIdentityVerificationAddressBankModel?
    /** The customer's date of birth; required when method is set to 'attested'. */
    public var dateOfBirth: Date?
    /** The customer's phone number. */
    public var phoneNumber: String?
    /** The customer's email address. */
    public var emailAddress: String?
    /** The customer's identification numbers; required when method is set to 'attested'. */
    public var identificationNumbers: [PostIdentificationNumberBankModel]?
    /** The external bank account's identifier. Required for 'bank_account' type. */
    public var externalBankAccountGuid: String?
    /** The optional expected behaviour to simulate. */
    public var expectedBehaviours: [ExpectedBehavioursBankModel]?

    public init(type: TypeBankModel, method: MethodBankModel, customerGuid: String? = nil, countryCode: String? = nil, name: PostIdentityVerificationNameBankModel? = nil, address: PostIdentityVerificationAddressBankModel? = nil, dateOfBirth: Date? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, identificationNumbers: [PostIdentificationNumberBankModel]? = nil, externalBankAccountGuid: String? = nil, expectedBehaviours: [ExpectedBehavioursBankModel]? = nil) {
        self.type = type
        self.method = method
        self.customerGuid = customerGuid
        self.countryCode = countryCode
        self.name = name
        self.address = address
        self.dateOfBirth = dateOfBirth
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
        self.identificationNumbers = identificationNumbers
        self.externalBankAccountGuid = externalBankAccountGuid
        self.expectedBehaviours = expectedBehaviours
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case method
        case customerGuid = "customer_guid"
        case countryCode = "country_code"
        case name
        case address
        case dateOfBirth = "date_of_birth"
        case phoneNumber = "phone_number"
        case emailAddress = "email_address"
        case identificationNumbers = "identification_numbers"
        case externalBankAccountGuid = "external_bank_account_guid"
        case expectedBehaviours = "expected_behaviours"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(method, forKey: .method)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(identificationNumbers, forKey: .identificationNumbers)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
        try container.encodeIfPresent(expectedBehaviours, forKey: .expectedBehaviours)
    }
}

