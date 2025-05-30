//
// IdentityVerificationWithDetailsPiiAliasesInnerBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentityVerificationWithDetailsPiiAliasesInnerBankModel: Codable, JSONEncodable, Hashable {

    /** The full name. */
    public var full: String?

    public init(full: String? = nil) {
        self.full = full
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case full
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(full, forKey: .full)
    }
}

