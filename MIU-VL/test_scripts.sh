config_file=configs/glip_Swin_T_O365_GoldG_polyp_kvasir.yaml
odinw_configs=configs/glip_Swin_T_O365_GoldG_polyp_kvasir.yaml
output_dir=/datasets/YXSummerInterns/cs598/MIU-VL/OUTPUTS
model_checkpoint=/datasets/YXSummerInterns/cs598/MIU-VL/MODEL/glip_tiny_model_o365_goldg.pth
jsonFile=autoprompt_json/hybrid_kvasir_path_prompt_top1.json

python test.py --json ${jsonFile} \
      --config-file ${config_file} --weight ${model_checkpoint} \
      --task_config ${odinw_configs} \
      OUTPUT_DIR ${output_dir}\
      TEST.IMS_PER_BATCH 2 SOLVER.IMS_PER_BATCH 2 \
      TEST.EVAL_TASK detection \
      DATASETS.TRAIN_DATASETNAME_SUFFIX _grounding \
      DATALOADER.DISTRIBUTE_CHUNK_AMONG_NODE False \
      DATASETS.USE_OVERRIDE_CATEGORY True \
      DATASETS.USE_CAPTION_PROMPT True\
