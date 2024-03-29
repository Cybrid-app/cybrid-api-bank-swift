//
// IdentityVerificationWithDetailsAllOfBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentityVerificationWithDetailsAllOfBankModel: Codable, JSONEncodable, Hashable {

    /** The Persona identifier of the backing inquiry. */
    public var personaInquiryId: String?
    /** The Persona state of the backing inquiry; one of waiting, pending, reviewing, processing, expired, completed, or unknown. */
    public var personaState: String?
    /** The external bank account's identifier. */
    public var externalBankAccountGuid: String?

    public init(personaInquiryId: String? = nil, personaState: String? = nil, externalBankAccountGuid: String? = nil) {
        self.personaInquiryId = personaInquiryId
        self.personaState = personaState
        self.externalBankAccountGuid = externalBankAccountGuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case personaInquiryId = "persona_inquiry_id"
        case personaState = "persona_state"
        case externalBankAccountGuid = "external_bank_account_guid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(personaInquiryId, forKey: .personaInquiryId)
        try container.encodeIfPresent(personaState, forKey: .personaState)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
    }
}

