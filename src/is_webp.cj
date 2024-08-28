package is_webp_cj

import std.io.*
import std.fs.*

private func checkMagicNumberWebp(bytes : Array<Byte>) : Bool {
    return bytes[0] == 0x52 && bytes[1] == 0x49 && bytes[2] == 0x46 && bytes[3] == 0x46 && bytes[8] == 0x57 && bytes[9] == 0x45 &&
        bytes[10] == 0x42 && bytes[11] == 0x50
}

public func isWebp(bytes: Array<Byte>): Bool {
    if (bytes.size < 12) {
        return false
    }
    return checkMagicNumberWebp(bytes)
    
}

public func isWebp(filePath: String): Bool {
    let bytes: Array<Byte> = File.readFrom(filePath)
    return isWebp(bytes)
}
