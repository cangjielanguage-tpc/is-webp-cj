package is_webp_cj

import std.fs.*
import std.io.*
import std.unittest.*
import std.unittest.testmacro.*

@Test
class TestFile {
    @TestCase
    func testWebp() {
        let filePath: String = "fixture.webp"
        @Assert(true, isWebp(filePath))
    }

    @TestCase
    func testPng() {
        let filePath: String = "fixture.png"
        @Assert(false, isWebp(filePath))
    }
}

@Test
class TestByteArray {
    @TestCase
    func testWebp() {
        let bytes: Array<Byte> = [0x52, 0x49, 0x46, 0x46, 0x0, 0x0, 0x0, 0x0, 0x57, 0x45, 0x42, 0x50]
        @Assert(true, isWebp(bytes))
    }

    @TestCase
    func testPng() {
        let bytes: Array<Byte> = [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A]
        @Assert(false, isWebp(bytes))
    }

    @TestCase
    func testEmptyArray() {
        let bytes : Array<Byte> = []
        @Assert(false, isWebp(bytes))
    }
}
