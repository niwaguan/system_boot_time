import Flutter
import UIKit

public class SwiftSystemBootTimePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "system_boot_time", binaryMessenger: registrar.messenger())
    let instance = SwiftSystemBootTimePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    guard call.method == "getSystemBootTime" else {
      return
    }
    result(SystemBootTimeFetcher.fetch())
  }
}
