###############################################split0002##################################################

#提取YUV文件

 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002.ts -f rawvideo -pix_fmt yuv420p origin_split0002_99000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-20000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_20000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-18000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_18000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-16000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_16000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-14000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_14000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-12000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_12000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-10000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_10000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-08000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_08000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-06000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_06000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-04000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_04000K.yuv
 ffmpeg -i NETFLIX_4096x2160_30fps_420p_200000K.split0002-ARC-h265-Q10-02000K.ts -f rawvideo -pix_fmt yuv420p arc_split0002_02000K.yuv
 
 matlab -nosplash -nodesktop -logfile log.txt -r main_split0002
 del arc_split0002_20000K.yuv
 del arc_split0002_18000K.yuv
 del arc_split0002_16000K.yuv
 del arc_split0002_14000K.yuv
 del arc_split0002_12000K.yuv
 del arc_split0002_10000K.yuv
 del arc_split0002_08000K.yuv
 del arc_split0002_06000K.yuv
 del arc_split0002_04000K.yuv
 del arc_split0002_02000K.yuv
 
 del origin_split0002_99000K.yuv


