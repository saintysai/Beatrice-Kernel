### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
properties() { '
kernel.string=Beatrice-Kernel v20261121 (6.1.162 | Cool & Stable | Full LTO | 500Hz | Multi-Manager | SuSFS v2.4.0)
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
block=boot;
is_slot_device=auto;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;
no_block_display=1;

. tools/ak3-core.sh;

ui_print "================================================";
ui_print "  Beatrice-Kernel 6.1.162 (v20261121)";
ui_print "  Universal GKI android14-6.1 | Cool & Stable";
ui_print "  Full LTO | 500Hz | BBRv3 | SuSFS v2.4.0";
ui_print "================================================";

split_boot;
flash_boot;
