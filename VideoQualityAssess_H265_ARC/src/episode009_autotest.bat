###############################################episode009##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009.mp4 -f rawvideo -pix_fmt yuv420p out_episode009_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-arc-x265-20000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode009_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-arc-x265-15000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode009_15000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-arc-x265-10000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode009_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-arc-x265-05000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode009_05000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode009
 del out_episode009_20000K.yuv
 del out_episode009_15000K.yuv
 del out_episode009_10000K.yuv
 del out_episode009_05000K.yuv
 del out_episode009_99000K.yuv

