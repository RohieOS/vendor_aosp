# SDClang Environment Variables
export SDCLANG_CONFIG=$(pwd)/vendor/aosp/sdclang/sdclang.json
export CAF_REVISION_TAG=$(grep "revision" ".repo/manifests/default.xml" | awk -F '/' '{print $3}' | awk -F '"' '{print $1}')
