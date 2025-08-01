repo init -u https://github.com/Evolution-X/manifest -b bka --git-lfs
/opt/crave/resync.sh
repo sync -c -j4 --force-sync --no-clone-bundle --no-tags
git clone https://github.com/Jayedkhan800/local_manifests_blossom.git -b lineage-22.2 .repo/local_manifests
repo sync
source build/envsetup.sh
lunch lineage_blossom-bp2a-userdebug
m evolution
