//
// PatchInternalAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PatchInternalAccountBankModel: Codable, JSONEncodable, Hashable {

    /** ISO8601 datetime the account was stored at. */
    public var storedAt: Date?

    public init(storedAt: Date? = nil) {
        self.storedAt = storedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storedAt = "stored_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(storedAt, forKey: .storedAt)
    }
}

