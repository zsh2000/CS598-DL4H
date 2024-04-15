config_file=path/to/config/file.yaml
odinw_configs=path/to/config/file.yaml
output_dir=output/path
model_checkpoint=MODEL/glip_tiny_model_o365_goldg.pth
jsonFile=autoprompt_json/lama_kvasir_path_prompt_top1.json

python test_vqa.py --json ${jsonFile} \
      --config-file ${config_file} --weight ${model_checkpoint} \
      --task_config ${odinw_configs} \
      OUTPUT_DIR ${output_dir}\
      TEST.IMS_PER_BATCH 2 SOLVER.IMS_PER_BATCH 2 \
      TEST.EVAL_TASK detection \
      DATASETS.TRAIN_DATASETNAME_SUFFIX _grounding \
      DATALOADER.DISTRIBUTE_CHUNK_AMONG_NODE False \
      DATASETS.USE_OVERRIDE_CATEGORY True \
      DATASETS.USE_CAPTION_PROMPT True\
