###############################################episode002##################################################

#转码得到不同码率的文件

ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 20000k -bufsize 20000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_20000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 18000k -bufsize 18000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_18000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 16000k -bufsize 16000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_16000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 14000k -bufsize 14000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_14000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 12000k -bufsize 12000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_12000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v 10000k -bufsize 10000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_10000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  9000k -bufsize  9000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_09000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  8000k -bufsize  8000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_08000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  7000k -bufsize  7000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_07000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  6000k -bufsize  6000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_06000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  5000k -bufsize  5000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_05000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  4500k -bufsize  4500k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_04500K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  4000k -bufsize  4000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_04000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  3500k -bufsize  3500k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_03500K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  3000k -bufsize  3000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_03000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  2500k -bufsize  2500k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_02500K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  2000k -bufsize  2000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_02000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  1500k -bufsize  1500k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_01500K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v  1000k -bufsize  1000k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_01000K.mp4
ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -b:v   500k -bufsize   500k -r 30 -g 30  -c:v hevc -pix_fmt yuv420p -y out_episode002_00500K.mp4

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -f rawvideo -pix_fmt yuv420p out_episode002_99000K.yuv
 ffmpeg -i out_episode002_20000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_20000K.yuv
 ffmpeg -i out_episode002_18000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_18000K.yuv
 ffmpeg -i out_episode002_16000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_16000K.yuv
 ffmpeg -i out_episode002_14000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_14000K.yuv
 ffmpeg -i out_episode002_12000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_12000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode002_part1
 del out_episode002_20000K.yuv
 del out_episode002_18000K.yuv
 del out_episode002_16000K.yuv
 del out_episode002_14000K.yuv
 del out_episode002_12000K.yuv
 
 ffmpeg -i out_episode002_10000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_10000K.yuv
 ffmpeg -i out_episode002_09000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_09000K.yuv
 ffmpeg -i out_episode002_08000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_08000K.yuv
 ffmpeg -i out_episode002_07000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_07000K.yuv
 ffmpeg -i out_episode002_06000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_06000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode002_part2
 del out_episode002_10000K.yuv
 del out_episode002_09000K.yuv
 del out_episode002_08000K.yuv
 del out_episode002_07000K.yuv
 del out_episode002_06000K.yuv
 
 ffmpeg -i out_episode002_05000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_05000K.yuv
 ffmpeg -i out_episode002_04500K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_04500K.yuv
 ffmpeg -i out_episode002_04000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_04000K.yuv
 ffmpeg -i out_episode002_03500K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_03500K.yuv
 ffmpeg -i out_episode002_03000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_03000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode002_part3
 del out_episode002_05000K.yuv
 del out_episode002_04500K.yuv
 del out_episode002_04000K.yuv
 del out_episode002_03500K.yuv
 del out_episode002_03000K.yuv
 
 ffmpeg -i out_episode002_02500K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_02500K.yuv
 ffmpeg -i out_episode002_02000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_02000K.yuv
 ffmpeg -i out_episode002_01500K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_01500K.yuv
 ffmpeg -i out_episode002_01000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_01000K.yuv
 ffmpeg -i out_episode002_00500K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_00500K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode002_part4
 del out_episode002_02500K.yuv
 del out_episode002_02000K.yuv
 del out_episode002_01500K.yuv
 del out_episode002_01000K.yuv
 del out_episode002_00500K.yuv
 
 del out_episode002_99000K.yuv

