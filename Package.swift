// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GoogleMobileAdsMediationAppLovin",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "GoogleMobileAdsMediationAppLovin", targets: ["GoogleMobileAdsMediationAppLovin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "12.7.0")
    ],
    targets: [
        .target(
            name: "GoogleMobileAdsMediationAppLovin",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                "AppLovinAdapter",
            ],
            path: "Sources/GoogleMobileAdsMediationAppLovin"
        ),
        .binaryTarget(
            name: "AppLovinAdapter",
            url: "https://github.com/guvenemirhan/GoogleMobileAdsMediationAppLovin-SPM/releases/download/13.0.0.2/AppLovinAdapter.xcframework.zip",
            checksum: "511c1bb793ec80b1baa22185df767e2f8d7ab72b81edc7a901923b26346e491e"
        ),
    ]
)
