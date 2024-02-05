// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
import Amplify
import TestFramework

public class SourceTest {
    public func testAmplify() {
        do {
            try Amplify.configure()
            print("Success")
        } catch {
            print("Failure: \(error)")
        }
    }

    public func callXCFrameworkFunction () {
        XCFrameworkTest.printTest()
    }
}
