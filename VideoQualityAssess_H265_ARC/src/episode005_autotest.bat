###############################################episode005##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0005.mp4 -f rawvideo -pix_fmt yuv420p out_episode005_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0005-arc-x265-20000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode005_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0005-arc-x265-15000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode005_15000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0005-arc-x265-10000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode005_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0005-arc-x265-05000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode005_05000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode005
 del out_episode005_20000K.yuv
 del out_episode005_15000K.yuv
 del out_episode005_10000K.yuv
 del out_episode005_05000K.yuv
 del out_episode005_99000K.yuv

