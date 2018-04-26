#!/bin/sh
echo "NV P4 Decoder test"
echo "times $1"

for i in `seq $1`
do
ffmpeg -vsync 0 -c:v h264_cuvid -i 1080p_h264.h264 -f rawvideo output_${i}.yuv &
#ffmpeg -c:v h264_cuvid -i input_file -f rawvideo -an -y /dev/null
done
