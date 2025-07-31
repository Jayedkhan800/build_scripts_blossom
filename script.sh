#Lineage-22 build_script_blossom

# Remove some stuffs
rm -rf .repo/local_manifests/ 
rm -rf  vendor/xiaomi
rm -rf  kernel/xiaomi
rm -rf  device/xiaomi
rm -rf  device/mediatek
rm -rf  hardware/mediatek
echo "===================================="
echo "Removing stuffs success..."
echo "===================================="

# Clone local_manifests repository
git clone https://github.com/Jayedkhan800/local_manifests_blossom.git -b lineage-21 .repo/local_manifests
echo "===================================="
echo "Cloning local_manifests was success..."
echo "===================================="

# Initialize Lineage-22 repo
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 14
echo "===================================="
echo "Initializing Lineage-22 repo was success..."
echo "===================================="

# Sync the repositories
/opt/crave/resync.sh || repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "===================================="
echo "Syncing the repositories was success..."
echo "===================================="

# Exports
echo "===================================="
echo "Adding exports..."
echo "===================================="
export BUILD_USERNAME=Jayed Khan
export BUILD_HOSTNAME=crave

# Set up build environment
echo "===================================="
echo "Setting up build environment..."
echo "===================================="
source build/envsetup.sh

#Building Lineage-20
echo "===================================="
echo "Building Lineage-20..."
echo "===================================="
lunch derp_blosson-userdebug || mka derp
