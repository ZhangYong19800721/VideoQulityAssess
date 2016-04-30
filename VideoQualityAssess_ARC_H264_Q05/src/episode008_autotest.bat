###############################################split0008##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008.mp4 -f rawvideo -pix_fmt yuv420p origin_split0008_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-20000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-18000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-16000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-14000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-12000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-10000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-08000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-06000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-04000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0008-ARC-h264-Q05-02000K.ts -f rawvideo -pix_fmt yuv420p arc_split0008_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0008
 del arc_split0008_20000K.yuv
 del arc_split0008_18000K.yuv
 del arc_split0008_16000K.yuv
 del arc_split0008_14000K.yuv
 del arc_split0008_12000K.yuv
 del arc_split0008_10000K.yuv
 del arc_split0008_08000K.yuv
 del arc_split0008_06000K.yuv
 del arc_split0008_04000K.yuv
 del arc_split0008_02000K.yuv
 
 del origin_split0008_99000K.yuv


