###############################################split0006##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006.mp4 -f rawvideo -pix_fmt yuv420p origin_split0006_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-20000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-18000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-16000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-14000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-12000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-10000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-08000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-06000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-04000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0006-arc-x264-02000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0006_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0006
 del arc_split0006_20000K.yuv
 del arc_split0006_18000K.yuv
 del arc_split0006_16000K.yuv
 del arc_split0006_14000K.yuv
 del arc_split0006_12000K.yuv
 del arc_split0006_10000K.yuv
 del arc_split0006_08000K.yuv
 del arc_split0006_06000K.yuv
 del arc_split0006_04000K.yuv
 del arc_split0006_02000K.yuv
 
 del origin_split0006_99000K.yuv


