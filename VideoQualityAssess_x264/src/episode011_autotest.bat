###############################################split0011##################################################

#转码得到不同码率的文件

ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v 18000k -bufsize 18000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_18000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v 16000k -bufsize 16000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_16000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v 12000k -bufsize 12000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_12000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v 10000k -bufsize 10000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_10000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v  8000k -bufsize  8000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_08000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_06000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v  4000k -bufsize  4000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_04000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -b:v  2000k -bufsize  2000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y out_split0011_02000K.mp4

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0011.mp4 -f rawvideo -pix_fmt yuv420p out_split0011_99000K.yuv
 ffmpeg -i out_split0011_20000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_20000K.yuv
 ffmpeg -i out_split0011_18000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_18000K.yuv
 ffmpeg -i out_split0011_16000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_16000K.yuv
 ffmpeg -i out_split0011_14000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_14000K.yuv
 ffmpeg -i out_split0011_12000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_12000K.yuv
 ffmpeg -i out_split0011_10000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_10000K.yuv
 ffmpeg -i out_split0011_08000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_08000K.yuv
 ffmpeg -i out_split0011_06000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_06000K.yuv
 ffmpeg -i out_split0011_04000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_04000K.yuv
 ffmpeg -i out_split0011_02000K.mp4      -f rawvideo -pix_fmt yuv420p out_split0011_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0011
 del out_split0011_20000K.yuv
 del out_split0011_18000K.yuv
 del out_split0011_16000K.yuv
 del out_split0011_14000K.yuv
 del out_split0011_12000K.yuv
 del out_split0011_10000K.yuv
 del out_split0011_08000K.yuv
 del out_split0011_06000K.yuv
 del out_split0011_04000K.yuv
 del out_split0011_02000K.yuv

 del out_split0011_99000K.yuv

