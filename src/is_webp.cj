package is_webp_cj

import std.io.*

private let MAGIC_NUMBER_WEBP: Array<Rule> = [ByteMatch(0x52), ByteMatch(0x49), ByteMatch(0x46), ByteMatch(0x46),
    AnyByte, AnyByte, AnyByte, AnyByte, ByteMatch(0x57), ByteMatch(0x45), ByteMatch(0x42), ByteMatch(0x50),
    ByteMatch(0x56), ByteMatch(0x50), ByteMatch(0x38)]

/**
 * 判断输入流是否为 WEBP 文件
 * @param inputStream 待判断的输入流。执行后该函数会对传入输入流进行读取，需要注意处理。
 * @return 如果是 WEBP 文件则返回 true，否则返回 false
 */
public func isWebp(inputStream: InputStream): Bool {
    return startsWith(inputStream, MAGIC_NUMBER_WEBP)
}

/**
 * 判断输入流是否为 WEBP 文件
 * @param iter 待判断的 Iterable 实例
 * @return 如果是 WEBP 文件则返回 true，否则返回 false
 */
public func isWebp(iter: Iterable<Byte>): Bool {
    return startsWith(iter, MAGIC_NUMBER_WEBP)
}
