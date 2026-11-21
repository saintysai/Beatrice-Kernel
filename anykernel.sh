### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
properties() { '
kernel.string=Beatrice-Kernel v20261122 (6.1.162 | Cool & Stable | Full LTO | 500Hz | TEO | SuSFS v2.4.0)
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=14-17
supported.patchlevels=
supported.vendorpatchlevels=
'; }

### AnyKernel install
BLOCK=boot;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;
NO_BLOCK_DISPLAY=1;

. tools/ak3-core.sh;

ui_print "================================================";
ui_print "  Beatrice-Kernel 6.1.162 (v20261122)";
ui_print "  Universal GKI android14-6.1 | Cool & Stable";
ui_print "  Full LTO | 500Hz | TEO | BBRv3 | SuSFS v2.4.0";
ui_print "================================================";

split_boot;
flash_boot;
