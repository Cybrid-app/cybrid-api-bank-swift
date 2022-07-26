//
// BankListBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BankListBankModel: Codable, JSONEncodable, Hashable {

    /** The total number of records available. */
    public var total: Int
    /** The page index to retrieve. */
    public var page: Int
    /** The number of entities per page to return. */
    public var perPage: Int
    /** Array of bank entities */
    public var objects: [BankBankModel]

    public init(total: Int, page: Int, perPage: Int, objects: [BankBankModel]) {
        self.total = total
        self.page = page
        self.perPage = perPage
        self.objects = objects
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case total
        case page
        case perPage = "per_page"
        case objects
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(total, forKey: .total)
        try container.encode(page, forKey: .page)
        try container.encode(perPage, forKey: .perPage)
        try container.encode(objects, forKey: .objects)
    }
}

