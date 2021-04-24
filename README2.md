# HOWTO

    docker build . -t cudagl_python

    # https://curioso365.tistory.com/136 메모리 에러
    docker run --gpus all --ipc=host -it -v /data/datasets:/data/datasets -v $(pwd):/work cudagl_python bash

    cd /work
    python3 main.py viz_model_preds v1.0-mini --modelf=demo/model525000.pt --dataroot=/data/datasets/nuscene --map_folder=/data/datasets/nuscene/nuScenes-map-expansion-v1.2

    python main.py lidar_check v1.0-trainval --dataroot=/data/datasets/nuscene --viz_train=False

    python3 main.py train v1.0-mini --dataroot=/data/datasets/nuscene --logdir=./runs --gpuid=0 --logdir=./runs --bind_all
    python main.py train v1.0-trainval --dataroot=/data/datasets/nuscene --logdir=./runs --gpuid=0 tensorboard --logdir=./runs --bind_all

    ffmpeg -r 30 -s 1056x784 -pattern_type glob -i '*.jpg' -vcodec libx264 -crf 25  -pix_fmt yuv420p eval.mp4
    ffmpeg -r 30 -s 1056x784 -pattern_type glob -i '*.jpg' -c:v h264_nvenc eval_nvenc.mp4