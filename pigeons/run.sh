# usage: pigeon --input <pigeon path> --dart_out <dart path> [option]*

# options:
# --input                                 REQUIRED: Path to pigeon file.
# --dart_out                              Path to generated Dart source file (.dart). Required if one_language is not specified.
# --dart_test_out                         Path to generated library for Dart tests, when using @HostApi(dartHostTestHandler:).
# --objc_source_out                       Path to generated Objective-C source file (.m).
# --java_out                              Path to generated Java file (.java).
# --java_package                          The package that generated Java code will be in.
# --[no-]java_use_generated_annotation    Adds the java.annotation.Generated annotation to the output.
# --experimental_swift_out                Path to generated Swift file (.swift).
# --experimental_cpp_header_out           Path to generated C++ header file (.h). (experimental)
# --experimental_cpp_source_out           Path to generated C++ classes file (.cpp). (experimental)
# --cpp_namespace                         The namespace that generated C++ code will be in.
# --objc_header_out                       Path to generated Objective-C header file (.h).
# --objc_prefix                           Prefix for generated Objective-C classes and protocols.
# --copyright_header                      Path to file with copyright header to be prepended to generated code.
# --[no-]one_language                     Allow Pigeon to only generate code for one language.
# --ast_out                               Path to generated AST debugging info. (Warning: format subject to change)
# --[no-]debug_generators                 Print the line number of the generator in comments at newlines.

NativeFileName="SystemBootTime"

flutter pub run pigeon \
  --input pigeons/api.dart \
  --dart_out lib/system_boot_time.dart \
  --objc_header_out ios/Classes/$NativeFileName.h \
  --objc_source_out ios/Classes/$NativeFileName.m \
  --java_package cn.stormyang.system_boot_time \
  --java_out android/src/main/java/cn/stormyang/system_boot_time/$NativeFileName.java