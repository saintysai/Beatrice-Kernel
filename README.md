# Beatrice-Kernel

`android14-6.1` (`6.1.162`) GKI patchset and config, built with AOSP Clang `r487747c` (Full LTO). Tested on Xiaomi 14T (`degas`).

- Base: `android14-6.1-2026-03` (`6.1.162`)
- Root: KSU, BakaSU, KowSU, KernelSU-Next + SuSFS v2.4.0
- Latest: `v20261122`

## Changes

- `CONFIG_HZ=500`, `-mtune=cortex-a715`
- TEO cpuidle governor as default
- CFS tuning (`min_granularity`, `wakeup_granularity`, `migration_cost`, `sched_nr_migrate=16`)
- `vmstat` interval raised to 10s on `system_power_efficient_wq`
- Proactive compaction off, `page_cluster=0`, `vfs_cache_pressure=65`
- F2FS `DEF_MIN_FSYNC_BLOCKS=20` and UTF-8 empty decomposition fix
- BBRv3, PLB, TFO, `tcp_slow_start_after_idle=0`, `tcp_notsent_lowat=131072`, WireGuard
- ARM64 CE crypto (`AES-CCM`, `SHA1`, `SHA2`, `SHA512`, `GHASH`, `POLYVAL`)

## Changelog

See [commits](https://github.com/saintysai/Beatrice-Kernel/commits/main) or tag diffs like [v20261121...v20261122](https://github.com/saintysai/Beatrice-Kernel/compare/v20261121...v20261122).

## Credits

AOSP `android14-6.1`, Google BBRv3, KernelSU / BakaSU / KowSU / KernelSU-Next, simonpunk (SuSFS), osm0sis (AnyKernel3).
