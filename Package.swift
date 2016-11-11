import PackageDescription

let package = Package(
    name: "SwiftBGFX",
    dependencies: [
        .Package(url: "https://github.com/SwiftGFX/SwiftMath", majorVersion: 2),
        .Package(url: "https://github.com/troughton/Cbgfx.git", majorVersion: 1)
    ]
)
