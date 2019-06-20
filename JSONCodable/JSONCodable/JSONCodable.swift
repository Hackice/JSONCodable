//
//  JSONCodable.swift
//  JSONCodable
//
//  Created by Hackice on 2019/6/20.
//  Copyright © 2019 Hackice. All rights reserved.
//

import Foundation

protocol JSONCodable: JSONDecodable, JSONEncodable {}

protocol JSONDecodable { }

protocol JSONEncodable { }

// MARK: - 键值对解码
/*
extension KeyedDecodingContainer {
    
    private func safeDecode(_ type: Int.Type, forKey key: KeyedDecodingContainer.Key) throws -> Int  {
        var value: Int
        do {
            value = try decode(Int.self, forKey: key)
        } catch {
            let err = error as! DecodingError
            switch err {
            case .typeMismatch(_, _):
                if let transform = try (decodeIfPresent(String.self, forKey: key) as NSString?)?.integerValue {
                    value = transform
                } else {
                    throw err
                }
            default:
                throw err
            }
        }
        return value
    }
    
    private func safeDecode(_ type: String.Type, forKey key: KeyedDecodingContainer.Key) throws -> String  {
        var value: String
        do {
            value = try decode(String.self, forKey: key)
        } catch {
            let err = error as! DecodingError
            switch err {
            case .typeMismatch(_, _):
                if let transform = try decodeIfPresent(String.self, forKey: key) as NSString? {
                    value = transform as String
                } else {
                    throw err
                }
            default:
                throw err
            }
        }
        return value
    }
    
    func decode<T: Decodable>(key: KeyedDecodingContainer.Key) throws -> T {
        var value: T
        if T.self == Int.self {
            value = try safeDecode(Int.self, forKey: key) as! T
        } else {
            value = try decode(T.self, forKey: key)
        }
        return value
    }
    
    // for optional
    func decodeIfPresent<T: Decodable>(key: KeyedDecodingContainer.Key) -> T? {
        var value: T?
        if T.self == Int.self {
            value = try? safeDecode(Int.self, forKey: key) as? T
        } else if T.self == String.self {
            value = try? safeDecode(String.self, forKey: key) as? T
        } else {
            value = try? decode(T.self, forKey: key) as T?
        }
        return value
    }
}
*/
