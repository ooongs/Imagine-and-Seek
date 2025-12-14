
# GPU 0: Process layout_0
CUDA_VISIBLE_DEVICES=0 python generate_proxy_migc_elite.py \
    --layout_file /home/jinzhenxiong/Imagine-and-Seek/output/output_proxy_layout_0.json \
    --image_source /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO/COCO2017_unlabeled/unlabeled2017 \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output/proxy_images \
    --aug_caption "high quality image" \
    --img_per_mode 3 \
    --MIGCsteps 25 \
    --guidance_scale 7.5 \
    --NaiveFuserSteps 50 \
    --mode circo \
    --idx 0 \
    --gpu_num 4 &

# GPU 1: Process layout_1
CUDA_VISIBLE_DEVICES=1 python generate_proxy_migc_elite.py \
    --layout_file /home/jinzhenxiong/Imagine-and-Seek/output/output_proxy_layout_1.json \
    --image_source /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO/COCO2017_unlabeled/unlabeled2017 \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output/proxy_images \
    --aug_caption "high quality image" \
    --img_per_mode 3 \
    --MIGCsteps 25 \
    --guidance_scale 7.5 \
    --NaiveFuserSteps 50 \
    --mode circo \
    --idx 1 \
    --gpu_num 4 &

# GPU 2: Process layout_2
CUDA_VISIBLE_DEVICES=2 python generate_proxy_migc_elite.py \
    --layout_file /home/jinzhenxiong/Imagine-and-Seek/output/output_proxy_layout_2.json \
    --image_source /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO/COCO2017_unlabeled/unlabeled2017 \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output/proxy_images \
    --aug_caption "high quality image" \
    --img_per_mode 3 \
    --MIGCsteps 25 \
    --guidance_scale 7.5 \
    --NaiveFuserSteps 50 \
    --mode circo \
    --idx 2 \
    --gpu_num 4 &

# GPU 3: Process layout_3
CUDA_VISIBLE_DEVICES=3 python generate_proxy_migc_elite.py \
    --layout_file /home/jinzhenxiong/Imagine-and-Seek/output/output_proxy_layout_3.json \
    --image_source /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO/COCO2017_unlabeled/unlabeled2017 \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output/proxy_images \
    --aug_caption "high quality image" \
    --img_per_mode 3 \
    --MIGCsteps 25 \
    --guidance_scale 7.5 \
    --NaiveFuserSteps 50 \
    --mode circo \
    --idx 3 \
    --gpu_num 4 &

# Wait for all processes to complete
wait
echo "All proxy generation processes completed!"
