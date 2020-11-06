MODEL_TYPE=nemotracker # baseline nemotracker
DATASET_NAME=dst_6454042 # dstc8-schema-guided-dialogue dst_9a52026 dst_6454042
TASK_NAME=lisa # dstc8_single_domain lisa

python dialogue_state_tracking_sgd.py \
    --task_name $TASK_NAME \
    --data_dir ~/projects/dst/datasets/$DATASET_NAME \
    --schema_embedding_dir ~/projects/dst/datasets/$DATASET_NAME/embeddings/ \
    --dialogues_example_dir ~/projects/dst/datasets/$DATASET_NAME/dialogue_example_dir \
    --work_dir ~/projects/dst/models/$MODEL_TYPE \
    --eval_dataset dev_test \
    --tracker_model=$MODEL_TYPE \
    --train_batch_size 32 \
    --eval_batch_size 64 \
    --num_epochs 40 \
    --max_seq_length 128 \
    --loss_reduction mean \
    --checkpoints_to_keep 0 \
    --no_overwrite_dial_files \

    # --checkpoint_dir ~/projects/dst/models/nemotracker/2020-11-02_19-28-05/checkpoints \
