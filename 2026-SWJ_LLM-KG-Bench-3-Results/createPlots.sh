#!/bin/bash
echo "this script should be executed in the root folder of LLM-KG-Bench"
echo "this script expects the unencrypted results of the benchmark to be in the folder results-2025-04"
echo "plots are written to the folder 'plots' which is expected to exist"

## create the task plots:
poetry run python -m LlmKgBench.plotResults --in ./results-2025-04/*/*result*.json --modelNameMapFile LlmKgBench/modelnames-map.json --taskScoreMapFiles LlmKgBench/taskScoreMapping.json --plotFileNamePrefix ./plots/task_ --fixedYScale --wide=8

## create the capability compass:
poetry run python -m LlmKgBench.helper.capabilityCompass
--aggrConfig LlmKgBench/capabilityCompassConfig.yaml --plotFileNamePrefix plots/model-sparql_ --modelNameMapFiles LlmKgBench/modelnames-map.json --input results-2025-04/*/*.json;
bash LlmKgBench/createCapabilityCompass.sh results-2024-12

## create the t-statistics table:
poetry run python -m LlmKgBench.t_statistics --outPrefix plots/ --modelNameMapFile=LlmKgBench/modelnames-map.json results-2025-04/*/*result*.json