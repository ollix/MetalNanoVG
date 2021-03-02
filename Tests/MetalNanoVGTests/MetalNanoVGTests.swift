import XCTest
@testable import MetalNanoVG

final class MetalNanoVGTests: XCTestCase {
    func testCreateContext() {

        let layer = CAMetalLayer()
        let nvg = nvgCreateMTL(Unmanaged.passUnretained(layer).toOpaque(), Int32(NVG_ANTIALIAS.rawValue))

        XCTAssertNotNil(nvg)

        nvgDeleteMTL(nvg)
    }
}
