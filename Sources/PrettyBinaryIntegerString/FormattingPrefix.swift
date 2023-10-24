// Copyright © 2023 Ben Morrison. All rights reserved.

import Foundation

/// Defines the prefixes to be used when formatting a `BinaryInteger` that uses the `Radix` type.
public enum FormattingPrefix {
    /// No prefix will be used
    case none
    /// Use the default prefix for the `Radix` in the formatting
    case `default`
    /// Use the provided custom prefix in the final product.
    case custom(String)
    
    func getPrefix(for radix: Radix) -> String {
        switch self {
        case .none:
            return ""
        case .default:
            return radix.prefix
        case .custom(let custom):
            return custom
        }
    }
}


