import PackageDescription

let package = Package(
    name: "SwiftBGFX",
    dependencies: [
        .Package(url: "https://github.com/troughton/SwiftMath", majorVersion: 2),
    ]
)

#if CYGWIN
package.dependencies.append(
    Package.Dependency.Package(url: "https://github.com/troughton/Cbgfx-Cygwin.git", majorVersion: 1)
)
#else
package.dependencies.append(
    Package.Dependency.Package(url: "https://github.com/troughton/Cbgfx.git", majorVersion: 1)
)
#endif