

import Foundation

class Node {
    let name: String
    var child: [Node]
    var root: Node?
    
    init(child: [Node] = [], root: Node? = nil) {
        self.name = randomString(length: 42)
        self.child = child
        self.root = root
    }
    
}

func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
func generateRandomString(length: Int) -> String {
    // each hexadecimal character represents 4 bits, so we need 2 hex characters per byte
    let byteCount = 20
    
    let bytes = [UInt8](repeating: 0, count: byteCount)
    // convert to hex string
    let hexString = bytes.map { String(format: "%02x", $0) }.joined()
    let paddedHexString = hexString.padding(toLength: length, withPad: "0", startingAt: 0)
    return paddedHexString
}

