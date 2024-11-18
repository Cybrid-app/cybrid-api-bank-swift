//
// TransferEntryDestinationAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The destination account entry in the batch transfer. */
public struct TransferEntryDestinationAccountBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the transfer account. */
    public var guid: String?
    /** The type of transfer account; one of trading, fiat, external_bank_account, external_wallet, one_time_address, reserve, invoice_operations, fee, gas, or storage. */
    public var type: String?
    /** The account's identifier. */
    public var bankGuid: String?
    /** The account's identifier. */
    public var customerGuid: String?

    public init(guid: String? = nil, type: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil) {
        self.guid = guid
        self.type = type
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
    }
}

