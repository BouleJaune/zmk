#!/bin/bash
#### build sweep firmware ####

cd /workspace/app
west build  -d /workspace/zmk-config/right -b nice_nano_v2 -p -o=-j6 -- -DSHIELD=cradio_right -DZMK_CONFIG=/workspace/zmk-config/config 
cp /workspace/zmk-config/right/zephyr/zmk.uf2 /workspace/zmk-config/right-zmk.uf2
cp /workspace/zmk-config/right/zephyr/zmk.uf2 /mnt/
rm -rf /workspace/zmk-config/right/
