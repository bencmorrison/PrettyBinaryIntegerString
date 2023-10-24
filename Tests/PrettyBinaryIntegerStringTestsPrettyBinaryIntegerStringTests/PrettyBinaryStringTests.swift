import XCTest
@testable import PrettyBinaryIntegerString

final class PrettyBinaryStringTests: XCTestCase {
    func testBinary() {
        let value: Int8 = 0b01010101
        let pretty = String(value, radix: .binary)
        XCTAssertEqual("0b01010101", pretty)
    }
    
    func testBinaryNoLeadingZeros() {
        let value: Int8 = 0b00000001
        let pretty = String(value, radix: .binary, showLeadingZeros: false)
        XCTAssertEqual("0b1", pretty)
    }
    
    func testOctal() {
        let value: Int8 = 0o154
        let pretty = String(value, radix: .octal)
        XCTAssertEqual("0o154", pretty)
    }
    
    func testOctalNoLeadingZeros() {
        let value: Int8 = 0o067
        let pretty = String(value, radix: .octal, showLeadingZeros: false)
        XCTAssertEqual("0o67", pretty)
    }
    
    func testHexadecimal() {
        let value: Int32 = 0x1A2B3C4D
        let pretty = String(value, radix: .hexadecimal)
        XCTAssertEqual("0x1A2B3C4D", pretty)
    }
    
    func testHexadecimalNoLeadingZeros() {
        let value: Int32 = 0x0000F9D3
        let pretty = String(value, radix: .hexadecimal, showLeadingZeros: false)
        XCTAssertEqual("0xF9D3", pretty)
    }
    
    func testNoPrefix() {
        let value: UInt32 = 0xFFFFFFFF
        let pretty = String(value, radix: .hexadecimal, prefix: .none)
        XCTAssertEqual("FFFFFFFF", pretty)
    }
    
    func testCustomPrefix() {
        let value: UInt32 = 0xFFFFFFFF
        let prefix = "CUSTOM"
        let pretty = String(value, radix: .hexadecimal, prefix: .custom(prefix))
        XCTAssertEqual("\(prefix)FFFFFFFF", pretty)
    }
    
    func testLowercased() {
        let value: Int32 = 0x1A2B3C4D
        let pretty = String(value, radix: .hexadecimal, uppercase: false)
        XCTAssertEqual("0x1a2b3c4d", pretty)
    }
}


