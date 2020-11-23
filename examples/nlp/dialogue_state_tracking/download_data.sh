DATASET_NAME=dst_46351df
S3_PATH=s3://dynasty-brain/dialog_state_tracking/datasets/$DATASET_NAME
LOCAL_DIR=~/projects/dst/datasets/$DATASET_NAME

aws s3 cp --recursive $S3_PATH $LOCAL_DIR
