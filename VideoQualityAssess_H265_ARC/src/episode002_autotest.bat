###############################################episode002##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -f rawvideo -pix_fmt yuv420p out_episode002_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-20000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-18000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-16000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-14000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-12000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-10000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-08000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-06000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-04000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-02000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_02000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x265-01000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_01000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode002
 del out_episode002_20000K.yuv
 del out_episode002_18000K.yuv
 del out_episode002_16000K.yuv
 del out_episode002_14000K.yuv
 del out_episode002_12000K.yuv
 del out_episode002_10000K.yuv
 del out_episode002_08000K.yuv
 del out_episode002_06000K.yuv
 del out_episode002_04000K.yuv
 del out_episode002_02000K.yuv
 del out_episode002_01000K.yuv

