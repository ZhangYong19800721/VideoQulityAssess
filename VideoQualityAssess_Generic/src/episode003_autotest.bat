###############################################split0003##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003.mp4 -f rawvideo -pix_fmt yuv420p origin_split0003_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-20000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-18000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-16000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-14000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-12000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-10000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-08000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-06000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-04000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0003-arc-x264-02000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0003_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0003
 del arc_split0003_20000K.yuv
 del arc_split0003_18000K.yuv
 del arc_split0003_16000K.yuv
 del arc_split0003_14000K.yuv
 del arc_split0003_12000K.yuv
 del arc_split0003_10000K.yuv
 del arc_split0003_08000K.yuv
 del arc_split0003_06000K.yuv
 del arc_split0003_04000K.yuv
 del arc_split0003_02000K.yuv
 
 del origin_split0003_99000K.yuv


