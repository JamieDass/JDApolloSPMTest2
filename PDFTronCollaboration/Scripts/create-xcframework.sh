#!/bin/sh

warn() {
    >&2 echo "warning: $@"
}

error() {
    >&2 echo "error: $@"
    exit 1
}

parse_args() {
    while [ $# -gt 0 ]; do
        case "$1" in
        --framework-name)
            FRAMEWORK_NAME="$2"
            shift
            ;;
        --output)
            XCFRAMEWORK_OUTPUT="$2"
            shift
            ;;
        *)
            error "unknown option \"$1\""
            ;;
        esac
        
        if [ $# -gt 0 ]; then
            shift
        fi
    done
}

create_xcframework() {
    if [ -z "${FRAMEWORK_NAME}" ]; then
        error "framework name unspecified"
    fi
    if [ -z "${XCFRAMEWORK_OUTPUT}" ]; then
        error "XCFramework output path unspecified"
    fi
    
    if [ -e "${XCFRAMEWORK_OUTPUT}" ]; then
        rm -rf "${XCFRAMEWORK_OUTPUT}"
    fi
    
    echo "PLATFORM_NAME: ${PLATFORM_NAME}"
    
    if [ "${ONLY_ACTIVE_ARCH:-NO}" = "YES" ]; then
        case "${PLATFORM_NAME}" in
        "iphoneos")
            CURRENT_PLATFORM_NAME="iphoneos"
        ;;
        "iphonesimulator")
            CURRENT_PLATFORM_NAME="iphonesimulator"
        ;;
        "macosx")
            if [ "${IS_MACCATALYST:-NO}" = "YES" ]; then
                CURRENT_PLATFORM_NAME="maccatalyst"
            else
                CURRENT_PLATFORM_NAME="macosx"
            fi
        ;;
        esac
        
        PLATFORMS="${CURRENT_PLATFORM_NAME}"
    else
        PLATFORMS="iphoneos iphonesimulator"
    fi

    if [ -z "${PLATFORMS}" ]; then
        error "could not determine platforms"
    fi
    
    XCODEBUILD_ARGUMENTS=""
    
    for platform in $PLATFORMS; do
        PLATFORM_CONFIGURATION_BUILD_DIR="${BUILD_DIR}/${CONFIGURATION}-${platform}"

        PLATFORM_FRAMEWORK_PATH="${PLATFORM_CONFIGURATION_BUILD_DIR}/${FRAMEWORK_NAME}"
        
        # Append PLATFORM_FRAMEWORK_PATH to xcodebuild arguments.
        XCODEBUILD_ARGUMENTS="${XCODEBUILD_ARGUMENTS} -framework ${PLATFORM_FRAMEWORK_PATH}"
    done
    
    xcodebuild -create-xcframework \
        ${XCODEBUILD_ARGUMENTS} \
        -output "${XCFRAMEWORK_OUTPUT}"
}

main() {
    # Fail on all errors.
	set -e
	set -o pipefail

	# Debugging
	set -x
 
    parse_args "$@"

    echo "Creating XCFramework..."
    create_xcframework "$@"
}

main "$@"
