package is_webp_cj

import std.fs.*
import std.io.*
import std.unittest.*
import std.unittest.testmacro.*

@Test
class TestByteArray {
    @TestCase
    func testWebp() {
        let filePath: String = "fixture.webp"
        let bytes: Array<Byte> = File.readFrom(filePath)
        @Assert(true, isWebp(bytes))
    }

    @TestCase
    func testPng() {
        let filePath: String = "fixture.png"
        let bytes: Array<Byte> = File.readFrom(filePath)
        @Assert(false, isWebp(bytes))
    }

    @TestCase
    func testEmptyArray() {
        let bytes : Array<Byte> = []
        @Assert(false, isWebp(bytes))
    }
}
