package is_webp_cj

private let MAGIC_NUMBER_WEBP : Array<?Byte> = [0x52, 0x49, 0x46, 0x46, None, None, None, None, 0x57, 0x45, 0x42, 0x50]

public func isWebp(bytes: Array<Byte>): Bool {
    return StartWith(bytes, MAGIC_NUMBER_WEBP)
}