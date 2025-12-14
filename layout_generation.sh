# GPU 0: Process 1/4 of data
CUDA_VISIBLE_DEVICES=0 python generate_layout.py \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output \
    --llm_path Qwen/Qwen1.5-32B-Chat-GPTQ-Int4 \
    --model_type qwen \
    --batch_size 10 \
    --mode circo_test \
    --dataset_path /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO \
    --idx 0 \
    --gpu_num 4 &

# GPU 1: Process 2/4 of data
CUDA_VISIBLE_DEVICES=1 python generate_layout.py \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output \
    --llm_path Qwen/Qwen1.5-32B-Chat-GPTQ-Int4 \
    --model_type qwen \
    --batch_size 10 \
    --mode circo_test \
    --dataset_path /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO \
    --idx 1 \
    --gpu_num 4 &

# GPU 2: Process 3/4 of data
CUDA_VISIBLE_DEVICES=2 python generate_layout.py \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output \
    --llm_path Qwen/Qwen1.5-32B-Chat-GPTQ-Int4 \
    --model_type qwen \
    --batch_size 10 \
    --mode circo_test \
    --dataset_path /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO \
    --idx 2 \
    --gpu_num 4 &

# GPU 3: Process 4/4 of data
CUDA_VISIBLE_DEVICES=3 python generate_layout.py \
    --output_path /home/jinzhenxiong/Imagine-and-Seek/output \
    --llm_path Qwen/Qwen1.5-32B-Chat-GPTQ-Int4 \
    --model_type qwen \
    --batch_size 10 \
    --mode circo_test \
    --dataset_path /home/jinzhenxiong/Imagine-and-Seek/data/CIRCO \
    --idx 3 \
    --gpu_num 4 &

# Wait for all processes to complete
wait
echo "All GPU processes completed!"