# 🦙🌲🤏 Alpaca-LoRA-fp16-deepspeed

## Train with DeepSpeed-fp16

```bash
bash main.sh
```

Run on one V100-32GB GPU for nearly 18 hours

> V100 may have a bad performance on int8 training, and Deepspeed may not support int8 training

```bash
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 470.57.02    Driver Version: 470.57.02    CUDA Version: 11.4     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  Tesla V100-SXM3...  On   | 00000000:59:00.0 Off |                    0 |
| N/A   65C    P0   320W / 350W |  30740MiB / 32510MiB |     95%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
+-----------------------------------------------------------------------------+
```

## Original README

See [ORIGINAL_README.md](ORIGINAL_README.md)