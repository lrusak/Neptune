set(SOURCES NptAppleAutoreleasePool.mm
            NptAppleLogConfig.mm)

core_add_library(Apple)
add_compile_options("-fno-objc-arc")
