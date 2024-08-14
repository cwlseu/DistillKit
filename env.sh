TAG=distillkit-torch2.4-flashattnv2-deepspeed:latest
NAME=just_do_it

docker build -f Dockerfile -t $TAG .

docker run -itd --cap-add=SYS_ADMIN \
        --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --gpus all \
        -v $HOME:$HOME \
        --name $NAME \
        $TAG

docker exec -it $NAME /bin/bash