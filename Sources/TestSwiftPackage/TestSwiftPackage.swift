// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
import Amplify
import TestFramework

public class SourceTest {
    static public func testAmplify() {
        do {
            try Amplify.configure()
            print("Success")
        } catch {
            print("Failure: \(error)")
        }
    }

    static public func printConfiguration() {
        let configData = XCFrameworkTest.getConfiguration()
        print(String(data: configData, encoding: .utf8)!)
    }

    static public func callXCFrameworkFunction () {
        XCFrameworkTest.printTest()
    }
}
