###############################################episode012##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012.mp4 -f rawvideo -pix_fmt yuv420p out_episode012_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-arc-x264-20000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode012_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-arc-x264-15000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode012_15000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-arc-x264-10000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode012_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-arc-x264-05000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode012_05000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode012
 del out_episode012_20000K.yuv
 del out_episode012_15000K.yuv
 del out_episode012_10000K.yuv
 del out_episode012_05000K.yuv
 del out_episode012_99000K.yuv

