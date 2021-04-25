import UIKit
import Flutter
import GoogleMaps
import UserNotifications
import Braintree

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        GMSServices.provideAPIKey("AIzaSyBuno_inBflmQJjSrHWvkwpUwexZ8W-FLw")
        GeneratedPluginRegistrant.register(with: self)
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self
        }
        BTAppSwitch.setReturnURLScheme("vn.di4l.glinkpay.braintree")
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    override func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }
    
}
