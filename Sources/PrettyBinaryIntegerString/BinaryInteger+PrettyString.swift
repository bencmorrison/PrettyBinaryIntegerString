// Copyright © 2023 Ben Morrison. All rights reserved.

import Foundation

extension BinaryInteger {
    /// Provides a string that is a pretty binary represenation of the value
    public var prettyBinaryString: String { String(self, radix: .binary) }
    /// Provides a string that is a pretty octal represenation of the value
    public var prettyOctalString: String { String(self, radix: .octal) }
    /// Provides a string that is a pretty hexadecimal represenation of the value
    public var prettyHexadecimalString: String { String(self, radix: .hexadecimal) }
}
