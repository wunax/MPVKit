// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libmpv-GPL.xcframework.zip",
            checksum: "7dcbc9c6049ff9db19890acc49d940d529efde8ca08a07fbf0fa1e7f3ac9b089"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavcodec-GPL.xcframework.zip",
            checksum: "70b3ebe7e0fa964597673c687ece06961aedad101c1d68e759c45f764289aaef"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavdevice-GPL.xcframework.zip",
            checksum: "369e009eb9fbdbdacdf42e4b8fe19431f472487b91e127b0794ae58168674918"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavformat-GPL.xcframework.zip",
            checksum: "02b8652e9014fbe4549b7de5b6b48cc3d455ab98b8e7c624bf09d371c47cd68e"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavfilter-GPL.xcframework.zip",
            checksum: "8175918bf26af8353f073cf94ca104350d49d423609e0540aca13f4f7b883176"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavutil-GPL.xcframework.zip",
            checksum: "b02e40c15011b6147343791ac56d056e4e4ab10ac25a89b3c60c7f303dbe174a"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libswresample-GPL.xcframework.zip",
            checksum: "4debdce6bfeb7dc880c67762db49bfc08dcd993dbca5f45bd6a674bd71274289"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libswscale-GPL.xcframework.zip",
            checksum: "e4aadbc44a1fd3d0738dbaa676814a80c1df80675d79a2643d29f7193baa6e8a"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libcrypto.xcframework.zip",
            checksum: "593283be2a90f7fd66f6e6ed331b2f099cf403e0926fe3b4ac09a7062b793965"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libssl.xcframework.zip",
            checksum: "ff5ffd43d015d7285fd37e4a3145b25cbd8d2842740bd629a711c299a20e226a"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gmp.xcframework.zip",
            checksum: "ad33c7a08f4cdcb9924c8f0e6d9a054dad33d7794b97667bf8b6fb2b236ae585"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/nettle.xcframework.zip",
            checksum: "0fdf3ebf8bd7b8bc8eee837cf27261cb4c52ae520b6576a2f468656aa1691e02"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/hogweed.xcframework.zip",
            checksum: "25727c9fa67287fa0a4f4722f88bb8be669b23cd7e837e2d00870eb8a25d3f27"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gnutls.xcframework.zip",
            checksum: "3dbec5809339189bf9679e218c6cff387ebf8fb72745927835afc2678f5c9f4d"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libunibreak.xcframework.zip",
            checksum: "001087c0e927ae00f604422b539898b81eb77230ea7700597b70393cd51e946c"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfreetype.xcframework.zip",
            checksum: "f2840aba1ce35e51c0595557eee82c908dac8e32108ecc0661301c06061e051c"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfribidi.xcframework.zip",
            checksum: "4a55513792ef7a17893875f74cc84c56f3657e8768c07a7a96f563a11dc4b743"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libharfbuzz.xcframework.zip",
            checksum: "91558d8497d9d97bc11eeef8b744d104315893bfee8f17483d8002e14565f84b"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libass.xcframework.zip",
            checksum: "1e41f5a69c74f6c6407aab84a65ccd0b34e73fa44465f488f99bf22bd61b070d"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-2512/Libsmbclient.xcframework.zip",
            checksum: "3a53375fab11bc888cc553664ea5dd902208d04f0cc21ec746302bf356246b6f"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/mpvkit/libbluray-build/releases/download/1.4.0/Libbluray.xcframework.zip",
            checksum: "bc037d34e2b0b5ab7f202fb371f5fb298136cc66fdf406c2172185d06f53f18d"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1-xcode/Libuavs3d.xcframework.zip",
            checksum: "1e69250279be9334cd2f6849abdc884c8e4bb29212467b6f071fdc1ac2010b6b"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.2/Libdovi.xcframework.zip",
            checksum: "e693e239808350868e79c5448ef9f02e2716bc822dd8632a41a368a1eae5ca7d"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.1/MoltenVK.xcframework.zip",
            checksum: "9bd1ca1e4563bacd25d6e55d37b10341d50b2601bc2684bc332188e79daa2b79"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.5.0/Libshaderc_combined.xcframework.zip",
            checksum: "758047b615708575b580eb960a2d083f760a29dc462d6eaa360416c946ce433b"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.17.0/lcms2.xcframework.zip",
            checksum: "dc0dce0606f6ab6841a8ec5a6bd4448e2f3ef00661a050460f806c9393dc6982"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.351.0-2512/Libplacebo.xcframework.zip",
            checksum: "3b2bd57b82549566963effadf0891a141448d9f89c7d48fca0b8f823b854bac6"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.5.2-xcode/Libdav1d.xcframework.zip",
            checksum: "8a8b78e23e28ecc213232805f3c1936141fc9befe113e87234f4f897f430a532"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavcodec.xcframework.zip",
            checksum: "1d11c38c6f07c4acae5055b04cb18a2f7265721be0a58100ae84bd726c0a4502"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavdevice.xcframework.zip",
            checksum: "28155fc2b9fbade1ae77097b97d780ee1cee60c8c38c2cb009e66d3bceada93b"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavformat.xcframework.zip",
            checksum: "39bb93f0f91040524ad803c84a27478a6ef062390d152e02fa9548163747bf8a"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavfilter.xcframework.zip",
            checksum: "bea1de109dd712e58522715eb45e6457ac79b815d7ccc1390246d5881b7f3f74"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libavutil.xcframework.zip",
            checksum: "3b0f2aae95c3b70cdb0f318997a9ff60ddd666a0aa46b080cf5380e75c589b12"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libswresample.xcframework.zip",
            checksum: "bed4fb1571b7a432e23e03067ea3d3fd51eba698051a93524072ac2ea0f76dcb"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libswscale.xcframework.zip",
            checksum: "bf051b8832bbfb54da7cf9d3746b8909fdfb86cfd1894dce7c27c227823bf998"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8-xcode/Libuchardet.xcframework.zip",
            checksum: "503202caa0dafb6996b2443f53408a713b49f6c2d4a26d7856fd6143513a50d7"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/wunax/MPVKit/releases/download/0.41.2/Libmpv.xcframework.zip",
            checksum: "919df6bc1006cbb306c65bae3c507ace04161f5ec6d2f8266a4435ee21c3f481"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
