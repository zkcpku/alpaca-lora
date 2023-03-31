# python finetune.py \
#     --base_model 'decapoda-research/llama-7b-hf' \
#     --data_path '/code/alpaca-lora-main/dataset/CSN_python_func_code_string.json' \
#     --output_dir './lora-csn_python' \
#     --batch_size 128 \
#     --micro_batch_size 32 \
#     --num_epochs 2 \
#     --learning_rate 1e-3 \
#     --cutoff_len 512 \
#     --val_set_size 2000 \
#     --lora_r 8 \
#     --lora_alpha 16 \
#     --lora_dropout 0.05 \
#     --lora_target_modules '[q_proj,v_proj]' \
#     --train_on_inputs \
#     --group_by_length


deepspeed --num_gpus=1 finetune.py \
    --deepspeed tests/deepspeed/ds_config_zero2.json \
    --base_model 'decapoda-research/llama-7b-hf' \
    --data_path '/code/alpaca-lora-main/dataset/CSN_python_func_code_string.json' \
    --output_dir './lora-csn_python' \
    --batch_size 8 \
    --micro_batch_size 2 \
    --num_epochs 1 \
    --learning_rate 1e-3 \
    --cutoff_len 512 \
    --val_set_size 2000 \
    --lora_r 8 \
    --lora_alpha 16 \
    --lora_dropout 0.05 \
    --lora_target_modules '[q_proj,v_proj]' \
    --train_on_inputs \
    --group_by_length
    
# OMP_NUM_THREADS=4 WORLD_SIZE=2 CUDA_VISIBLE_DEVICES=0,1 torchrun --nproc_per_node=2 --master_port=1234 finetune.py
# export CUDA_HOME=/home/cuda117
# WORLD_SIZE=1 CUDA_VISIBLE_DEVICES=0 torchrun --nproc_per_node=1 --master_port=1234 finetune.py \