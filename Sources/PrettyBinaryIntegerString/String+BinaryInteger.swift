// Copyright © 2023 Ben Morrison. All rights reserved.

import Foundation

extension String {
    /// Creates a pretty `String` that displays the value of a `BinaryInteger` using the
    /// supplied `Radix` and other formatting options.
    /// - Parameters:
    ///   - value: The `BinaryInteger` that you wish to have formatted
    ///   - radix: The `Radix` that the fomatting should use on the `value``
    ///   - uppercase: If the formatting will have letters, this will require them to be uppercase
    ///   - prefix: The `FormattingPrefix` to show in the string to denote the type of `Radix` used
    ///   - showLeadingZeros: When true, leading zeros are added for the zeroed out parts of the number.
    ///             Example: `UInt16` that equals 0x00FF will print out as 0x00FF instead of 0xFF
    public init<V: BinaryInteger>(
        _ value: V,
        radix: Radix,
        uppercase: Bool = true,
        prefix: FormattingPrefix = .default,
        showLeadingZeros: Bool = true
    ) {
        let value = String(value, radix: radix.value, uppercase: uppercase)
        let prefix = prefix.getPrefix(for: radix)
        guard showLeadingZeros else { self = prefix + value; return }
        
        let digitCount = MemoryLayout<V>.size * radix.byteMultiplier
        let leadingZerosCount = digitCount - value.count
        let leadingZeros: String = (0..<leadingZerosCount).map({ _ in "0" }).joined()
        
        self = prefix + leadingZeros + value
    }
}
