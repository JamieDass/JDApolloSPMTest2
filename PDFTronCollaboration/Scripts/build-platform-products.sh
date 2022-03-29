#!/bin/sh

parse_args() {
    while [ $# -gt 0 ]; do
        case "$1" in
        --scheme)
            SCHEME_NAME="$2"
            shift
            ;;
        *)
            ;;
        esac
        
        if [ $# -gt 0 ]; then
            shift
        fi
    done
}

build_platform() {
    BUILD_PLATFORM_NAME="$1"
    if [ -z "${BUILD_PLATFORM_NAME}" ]; then
        echo "\"BUILD_PLATFORM_NAME\" must be set"
        exit 1
    fi
    
    case "${BUILD_PLATFORM_NAME}" in
    "iphoneos")
        DESTINATION_NAME="generic/platform=iOS"
    ;;
    "iphonesimulator")
        DESTINATION_NAME="generic/platform=iOS Simulator"
    ;;
    "maccatalyst")
        DESTINATION_NAME="generic/platform=macOS,variant=Mac Catalyst"
    ;;
    *)
        echo "Unknown platform \"${BUILD_PLATFORM_NAME}\""
        exit 1
    ;;
    esac
    
    xcodebuild build \
        -scheme "${SCHEME_NAME}" \
        -destination "${DESTINATION_NAME}" \
        -configuration "${CONFIGURATION}" \
        SYMROOT="${SYMROOT}" \
        OBJROOT="${OBJROOT}/DependentBuilds" \
        VERSION_INFO_PREFIX="${VERSION_INFO_PREFIX}" \
        PROJECT_CLASS_PREFIX="${PROJECT_CLASS_PREFIX}" \
        PRODUCT_NAME="PDFTronCollaboration" \
        BUILD_LIBRARY_FOR_DISTRIBUTION=YES # Needed for binary Swift module
}

build_platform_products() {
    parse_args "$@"
    
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
    
    for platform in ${PLATFORMS}; do
        build_platform "${platform}"
    done
}

main() {
    # Fail on all errors.
	set -e
	set -o pipefail

	# Debugging
	set -x
    
    echo "Building platform product(s)..."
    build_platform_products "$@"
}

main "$@"
