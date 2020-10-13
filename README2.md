# HOWTO

    python main.py viz_model_preds v1.0-trainval --modelf=demo/model525000.pt --dataroot=/data/datasets/nuscene --map_folder=/data/datasets/nuscene/nuScenes-map-expansion-v1.2
    python main.py lidar_check v1.0-trainval --dataroot=/data/datasets/nuscene --viz_train=False

    ffmpeg -r 30 -s 1056x784 -pattern_type glob -i '*.jpg' -vcodec libx264 -crf 25  -pix_fmt yuv420p eval.mp4
    ffmpeg -r 30 -s 1056x784 -pattern_type glob -i '*.jpg' -c:v h264_nvenc eval_nvenc.mp4