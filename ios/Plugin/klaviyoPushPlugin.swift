import Foundation
import Capacitor
import KlaviyoSwift

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(klaviyoPushPlugin)
public class klaviyoPushPlugin: CAPPlugin {
    private let implementation = klaviyoPush()

    @objc func api(_ call: CAPPluginCall) {
        let value = call.getString("apikey") ?? ""
        Klaviyo.setupWithPublicAPIKey(apiKey: value)
        call.resolve()
    }

    @objc func identify(_ call: CAPPluginCall) {
        let value = call.getString("email") ?? ""
        Klaviyo.sharedInstance.setUpUserEmail(userEmail: value)
        call.resolve()
    }

    @objc func assignToken(_ call: CAPPluginCall) {

        func jsonToData(json: Any) -> Data? {
            do {
                return try JSONSerialization.data(withJSONObject: json, options: JSONSerialization.WritingOptions.prettyPrinted)
            } catch let myJSONError {
                print(myJSONError)
            }
            return nil;
        }

        let value = call.getObject("token") ?? [:]
        if let data = jsonToData(json:value) {
            Klaviyo.sharedInstance.addPushDeviceToken(deviceToken: data)
            call.resolve()
        } else {
            call.reject("Error")
        }
    }
}
