//
// PostExternalBankAccountCounterpartyNameBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The counterparty&#39;s name on the account. */
public struct PostExternalBankAccountCounterpartyNameBankModel: Codable, JSONEncodable, Hashable {

    /** The customer's first name. Used for individual accounts. */
    public var first: String?
    /** The customer's middle name. Used for individual accounts. */
    public var middle: String?
    /** The customer's last name. Used for individual accounts. */
    public var last: String?
    /** The customers's full name on the account. Used for business accounts. */
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

