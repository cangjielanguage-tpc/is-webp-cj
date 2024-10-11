package is_webp_cj

import std.io.*

protected enum Rule {
    // 匹配一位特定字节
    | ByteMatch(Byte)
    // 匹配一位任意字节
    | AnyByte
}

protected type Pattern = Array<Rule>

protected func startsWith(input: InputStream, pattern: Pattern): Bool {
    let buf = Array<Byte>(pattern.size, repeat: 0)
    var pos = 0
    while (pos < pattern.size) {
        let n = input.read(buf)
        if (n == 0) {
            return false
        }
        for (i in 0..n) {
            match (pattern[i + pos]) {
                case ByteMatch(b) => 
                    if (buf[i] != b) {
                        return false
                    }
                case AnyByte => continue
            }
        }
        pos += n
    }
   return true
}

protected func startsWith(src: Iterable<Byte>, pattern: Pattern): Bool {
    let iterator = src.iterator()

    for (i in 0..pattern.size) {
        if (let Some(next) <- iterator.next()) {
            match (pattern[i]) {
                case ByteMatch(b) => 
                    if (next != b) {
                        return false
                    }
                case AnyByte => continue
            }
        } else {
            return false
        }
    }
    return true
}