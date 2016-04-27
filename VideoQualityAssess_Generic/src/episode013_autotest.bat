###############################################split0013##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013.mp4 -f rawvideo -pix_fmt yuv420p origin_split0013_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-20000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-18000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-16000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-14000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-12000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-10000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-08000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-06000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-04000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0013-arc-x264-02000K.mp4 -f rawvideo -pix_fmt yuv420p arc_split0013_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0013
 del arc_split0013_20000K.yuv
 del arc_split0013_18000K.yuv
 del arc_split0013_16000K.yuv
 del arc_split0013_14000K.yuv
 del arc_split0013_12000K.yuv
 del arc_split0013_10000K.yuv
 del arc_split0013_08000K.yuv
 del arc_split0013_06000K.yuv
 del arc_split0013_04000K.yuv
 del arc_split0013_02000K.yuv
 
 del origin_split0013_99000K.yuv


