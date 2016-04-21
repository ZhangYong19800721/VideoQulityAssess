###############################################episode001##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001.mp4 -f rawvideo -pix_fmt yuv420p out_episode001_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-20000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-18000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-16000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-14000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-12000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-10000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-08000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-06000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-04000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-02000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_02000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0001-arc-x265-01000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode001_01000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode001
 del out_episode001_20000K.yuv
 del out_episode001_18000K.yuv
 del out_episode001_16000K.yuv
 del out_episode001_14000K.yuv
 del out_episode001_12000K.yuv
 del out_episode001_10000K.yuv
 del out_episode001_08000K.yuv
 del out_episode001_06000K.yuv
 del out_episode001_04000K.yuv
 del out_episode001_02000K.yuv
 del out_episode001_01000K.yuv


