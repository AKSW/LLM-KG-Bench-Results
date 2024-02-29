# Results of LLM-KG-Bench runs for ESWC 2024

Results and log of [LLM-KG-Bench](https://github.com/AKSW/LLM-KG-Bench) runs described in article "Assessing the Evolution of LLM capabilities for
Knowledge Graph Engineering in 2023", Frey et al. to [ESWC 2024](https://2024.eswc-conferences.org)

We collected data in multiple runs, each resulting in files with date and time of experiment start in filename:
* result files `(`.json`, `.txt`, `.yaml`, same info in different serializations) containing task, response and evaluation data
* model log files (`.jsonl`) containing details on LLM interaction
* full debug-log files (`.log`) containing debug log for runs

This dataset is published at zenodo: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10572907.svg)](https://doi.org/10.5281/zenodo.10572907)
  
## Replication Study
Folder [Q3vsQ4](Q3vsQ4/) contains the result files used for the comparison of Q3 and Q4 results.
We evaluated whether we could replicate results from the DL4KG experiments obtained in the beginning of the third quarter 2023 (Q3) in the forth quarter of 2023 (early December - Q4).
These experiments used version 1.1 of the LLM-KG bench code.

Although we see some differences, the results remain in the same interval. As such this study verifys and reinforces the original research outcomes and the soundness of the benchmark setup and tasks used in LLM-KG bench. 

![friends-f1-claude-Q3VSQ4 (1)](https://github.com/AKSW/LLM-KG-Bench-Results/assets/2630603/dc31c701-0f6a-4145-82d2-8bbb55066fee)
![friends-f1-gpt-Q3VSQ4](https://github.com/AKSW/LLM-KG-Bench-Results/assets/2630603/91a6113a-5c96-4c0d-a3a3-3ed27821bcea)
![generation-MPE-claude-Q3VSQ4 (1)](https://github.com/AKSW/LLM-KG-Bench-Results/assets/2630603/9eeb0e9b-0c52-49f9-a2b3-78b7998a1af4)
![generation-MPE-gpt-Q3VSQ4](https://github.com/AKSW/LLM-KG-Bench-Results/assets/2630603/b7aba90b-647f-4737-9f7a-aea2f802d3b6)
