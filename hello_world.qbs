import qbs

Project {
    minimumQbsVersion: "1.7.1"

    CppApplication {
        consoleApplication: true
        cpp.cxxLanguageVersion: "c++11"

        cpp.warningLevel: 'all'
        files: [
            "src/*",
        ]

        cpp.includePaths: [
        ]

        cpp.assemblerFlags: [
            "-mcpu=arm926ej-s",
            "-g",
            "-o0"
        ]

        cpp.cppFlags: [
            "-mcpu=arm926ej-s",
        ]

        cpp.commonCompilerFlags: [
            "-mcpu=arm926ej-s",
         ]

        cpp.driverFlags: [
            "-mcpu=arm926ej-s",
            "-mthumb",
            "-Xlinker",
            "--gc-sections",
            "-specs=nosys.specs",
            "-specs=nano.specs",
            "-Wl,-Map=" + path + "/proj.map",
        ]

        cpp.linkerFlags: [
            "--start-group",
            "-T" + path + "/hello_world.ld",

        ]

        Group {     // Properties for the produced executable
            fileTagsFilter: "application"
            qbs.install: true
        }
    }
}
