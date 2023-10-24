# PrettyBinaryIntegerString

This small swift package adds a `String` initializer that allows easy printing of a `BinaryInteger` as a binary, octal, or hexadecimal. There is also an extension on `BinaryInteger` that adds prettyStrings for each radix.

## String Initializer

```swift
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
)
```

## Example

Creating a `String` from the `BinaryInteger`
```swift
let value: Int32 = 0x1A2B3C4D
let pretty = String(value, radix: .hexadecimal)
// Pretty is a string that contains "0x1A2B3C4D"
```
