###############################################split0009##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009.mp4 -f rawvideo -pix_fmt yuv420p origin_split0009_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-20000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-18000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-16000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-14000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-12000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-10000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-08000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-06000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-04000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0009-ARC-h264-Q05-02000K.ts -f rawvideo -pix_fmt yuv420p arc_split0009_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0009
 del arc_split0009_20000K.yuv
 del arc_split0009_18000K.yuv
 del arc_split0009_16000K.yuv
 del arc_split0009_14000K.yuv
 del arc_split0009_12000K.yuv
 del arc_split0009_10000K.yuv
 del arc_split0009_08000K.yuv
 del arc_split0009_06000K.yuv
 del arc_split0009_04000K.yuv
 del arc_split0009_02000K.yuv
 
 del origin_split0009_99000K.yuv


