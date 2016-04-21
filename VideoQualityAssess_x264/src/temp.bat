ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode001_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode001_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode001_06000K.mp4

ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode002_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode002_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode002_06000K.mp4

ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode003_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode003_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v h264 -x264opts force-cfr=1:bframes=3:ref=3 -pix_fmt yuv420p -y x264_episode003_06000K.mp4


ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode001_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode001_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode001_06000K.mp4

ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode002_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode002_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode002_06000K.mp4

ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode003_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode003_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y x265_episode003_06000K.mp4