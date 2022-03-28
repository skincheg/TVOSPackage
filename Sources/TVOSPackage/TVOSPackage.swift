import SwiftUI
import Alamofire

@available(iOS 14, macOS 11.0, tvOS 13.0, *)
public struct TVOSPackage : View {
    public init() {}
    public var body: some View {
        Text("Package Text")
            .onTapGesture {
                AF.request("https://httpbin.org/get").response { response in
                    debugPrint(response)
                }
            }
    }
}
