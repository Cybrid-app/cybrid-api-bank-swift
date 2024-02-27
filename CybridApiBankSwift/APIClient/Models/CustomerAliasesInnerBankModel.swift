//
// CustomerAliasesInnerBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CustomerAliasesInnerBankModel: Codable, JSONEncodable, Hashable {

    /** The customer's first name. */
    public var first: String?
    /** The customer's middle name. */
    public var middle: String?
    /** The customer's last name. */
    public var last: String?
    /** The customer's full name. */
    public var full: String?

    public init(first: String? = nil, middle: String? = nil, last: String? = nil, full: String? = nil) {
        self.first = first
        self.middle = middle
        self.last = last
        self.full = full
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case first
        case middle
        case last
        case full
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(middle, forKey: .middle)
        try container.encodeIfPresent(last, forKey: .last)
        try container.encodeIfPresent(full, forKey: .full)
    }
}
