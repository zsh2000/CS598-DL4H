# CS598-DL4H

This is the public repository of Shuhong Zheng's (szheng36) DL4H course project.

The environment can be installed according to the instructions in https://github.com/MembrAI/MIU-VL.

The MIU-VL directory is the main directory for the experiments. 

Running the following scripts generates the medical prompts automatically:
```bash
cd MIU-VL
bash RUN/autoprompt/make_auto_mlm.sh
```

Running the following scripts start the evaluation on the detection task:
```bash
cd MIU-VL
bash RUN/polyp_test/zero_shot_lama.sh
```
