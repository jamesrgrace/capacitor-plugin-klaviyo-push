import Foundation

@objc public class klaviyoPush: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
