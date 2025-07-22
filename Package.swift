// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GoogleMobileAdsMediationAppLovin",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "GoogleMobileAdsMediationAppLovin", targets: ["GoogleMobileAdsMediationAppLovin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0")
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
            checksum: "GERÇEK-CHECKSUM-BURAYA"
        ),
    ]
)
