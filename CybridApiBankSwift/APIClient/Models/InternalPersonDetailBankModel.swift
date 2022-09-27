//
// InternalPersonDetailBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalPersonDetailBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the person detail. */
    public var guid: String?
    /** The identifier of the person that corresponds to this detail. */
    public var personGuid: String?
    /** The revision number of the person details. */
    public var revision: Int?
    /** The identifier of the internal PII detail resource that corresponds to this detail. */
    public var piiRecordGuid: String?
    /** ISO8601 datetime the exchange settlement payment order was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, personGuid: String? = nil, revision: Int? = nil, piiRecordGuid: String? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.personGuid = personGuid
        self.revision = revision
        self.piiRecordGuid = piiRecordGuid
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case personGuid = "person_guid"
        case revision
        case piiRecordGuid = "pii_record_guid"
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(personGuid, forKey: .personGuid)
        try container.encodeIfPresent(revision, forKey: .revision)
        try container.encodeIfPresent(piiRecordGuid, forKey: .piiRecordGuid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}

