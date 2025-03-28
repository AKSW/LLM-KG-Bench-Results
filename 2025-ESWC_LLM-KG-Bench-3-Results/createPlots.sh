#!/bin/bash
echo "this script should be executed in the root folder of LLM-KG-Bench"
echo "this script expects the unencrypted results of the benchmark to be in the folder results-2024-12"

## create the task plots:
poetry run python -m LlmKgBench.plotResults --in ./results-2024-12/*/*result*.json --modelNameMapFile LlmKgBench/modelnames-map.json --taskScoreMapFiles LlmKgBench/taskScoreMapping.json --plotFileNamePrefix ./plots/2024-12_ --fixedYScale --wide

## create the capability compass:
bash LlmKgBench/createCapabilityCompass.sh results-2024-12

## create the t-statistics table:
poetry run python -m LlmKgBench.t_statistics --outPrefix plots-2024-12/model_ --modelNameMapFile=LlmKgBench/modelnames-map.json results-2024-12/*/*result*.json