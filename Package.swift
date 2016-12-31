import PackageDescription

let package = Package(
    name: "SwiftBGFX",
    dependencies: [
        .Package(url: "https://github.com/troughton/SwiftMath", majorVersion: 2),
        .Package(url: "https://github.com/troughton/Cbgfx.git", majorVersion: 1)
    ]
)
