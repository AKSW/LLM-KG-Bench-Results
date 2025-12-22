#!/bin/bash

## commands to run the benchmark for all the algorithms

## run benchmark on commercial models
poetry run LlmKgBench --config=configuration.yml --modelFilter "Claude-3.5-haiku" --iterations=20 --resultFileSuffix="_Claude35Haiku-202410_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "Claude-3.5-sonnet 2024-10" --iterations=20 --resultFileSuffix="_Claude35Sonnet-202410_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "Gemini-1.5-Flash-002" --iterations=20 --resultFileSuffix="_Gemini15Flash002_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "Gemini-1.5-Pro-002" --iterations=20 --resultFileSuffix="_Gemini15Pro002_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "Gemini-2.0-Flash-exp" --iterations=20 --resultFileSuffix="_Gemini20FlashExp_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "GPT-3.5t 2024-01" --iterations=20 --resultFileSuffix="_Gpt35-202401_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "GPT-4o-mini 2024-07" --iterations=20 --resultFileSuffix="_Gpt4oMini-202407_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "GPT-4o-2024-11" --iterations=20 --resultFileSuffix="_Gpt4o-202411_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "GPT-o1-mini-2024-09" --iterations=20 --resultFileSuffix="_GptO1Mini-202409_all_20x"
poetry run LlmKgBench --config=configuration.yml --modelFilter "GPT-o1-2024-09p" --iterations=20 --resultFileSuffix="_GptO1p-202409_all_20x"