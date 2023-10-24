// Copyright © 2023 Ben Morrison. All rights reserved.

import Foundation

/// Defines the different types of Radixes supported in the custom `String` ininitaliser
/// that pretty prints the defined radix types in this enum
public enum Radix {
    case binary
    case octal
    case hexadecimal
    
    /// The prefix notation for the base
    var prefix: String {
        switch self {
        case .binary:
            return "0b"
        case .octal:
            return "0o"
        case .hexadecimal:
            return "0x"
        }
    }

    /// This is the base for the radix
    var value: Int {
        switch self {
        case .binary:
            return 2
        case .octal:
            return 8
        case .hexadecimal:
            return 16
        }
    }
    
    /// Defines how many many times to divide a byte by for the calculations
    var byteMultiplier: Int {
        switch self {
        case .binary:
            return 8
        case .octal:
            return 3
        case .hexadecimal:
            return 2
        }
    }
}
