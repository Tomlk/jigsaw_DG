#resnet jitter 0.4

#art_painting
#python train_jigsaw.py --batch_size 128 --n_classes 7 --learning_rate 0.001 --network resnet18 --val_size 0.1 --folder_name test --jigsaw_n_classes 30 --train_all True  --image_size 225 --nesterov True --min_scale 0.8 --max_scale 1.0 --random_horiz_flip 0.5 --jitter 0.4 --tile_random_grayscale 0.1 --source cartoon sketch photo --target art_painting --jig_weight 0.9 --bias_whole_image 0.6 --image_size 222 --gpu 0

python train_jigsaw.py --batch_size 128 --n_classes 7 --learning_rate 0.001 --network resnet18 --val_size 0.1 --folder_name test --jigsaw_n_classes 30 --train_all True  --image_size 225 --nesterov True --min_scale 0.8 --max_scale 1.0 --random_horiz_flip 0.5 --jitter 0.4 --tile_random_grayscale 0.1 --source cartoon sketch photo --target art_painting --jig_weight 0 --bias_whole_image 1 --image_size 222 --gpu 0
