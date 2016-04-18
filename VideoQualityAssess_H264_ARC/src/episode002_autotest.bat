###############################################episode002##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.mp4 -f rawvideo -pix_fmt yuv420p out_episode002_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x264-20000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x264-15000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_15000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x264-10000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-arc-x264-05000K.mp4      -f rawvideo -pix_fmt yuv420p out_episode002_05000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_episode002
 del out_episode002_20000K.yuv
 del out_episode002_15000K.yuv
 del out_episode002_10000K.yuv
 del out_episode002_05000K.yuv
 del out_episode002_99000K.yuv

