###############################################split0012##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012.ts -f rawvideo -pix_fmt yuv420p origin_split0012_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-20000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-18000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-16000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-14000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-12000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-10000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-08000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-06000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-04000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0012-ARC-h264-Q05-02000K.ts -f rawvideo -pix_fmt yuv420p arc_split0012_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0012
 del arc_split0012_20000K.yuv
 del arc_split0012_18000K.yuv
 del arc_split0012_16000K.yuv
 del arc_split0012_14000K.yuv
 del arc_split0012_12000K.yuv
 del arc_split0012_10000K.yuv
 del arc_split0012_08000K.yuv
 del arc_split0012_06000K.yuv
 del arc_split0012_04000K.yuv
 del arc_split0012_02000K.yuv
 
 del origin_split0012_99000K.yuv


