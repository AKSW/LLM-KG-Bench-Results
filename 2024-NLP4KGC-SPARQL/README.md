# LLM-KG-Bench SPARQL Results 2024
Results for SPARQL tasks of [LLM-KG-Bench framework](https://github.com/AKSW/LLM-KG-Bench) as described in the article "Assessing SPARQL capabilities of Large Language Models" by L.-P. Meyer et al. in proceedings of the NLP4KGC workshop at SEMANTICS 2024.

## Results for 4 SPARQL SELECT query related task types:

* [SparqlSyntaxFixing](SparqlSyntaxFixing/README.md): Fixing syntax errors in SPARQL SELECT queries
* [Text2Sparql](Text2Sparql/README.md): Generate SPARQL SELECT queries from textual questions
* [Text2Answer](Text2Answer/README.md): Generate the answer for a textual question with a given knowledge graph
* [Sparql2Answer](Sparql2Answer/README.md): Generate the answer for a SPARQL SELECT query with a given knowledge graph

Overview on the task types and their input and output:

![Overview on the task types](SPARQL-Task-Overview.drawio.svg)


## Files generated for each run:

* result files generated, different serialization formats containing same information:
    * `*_run-[YYYY-mm-DD_HH-MM-ss]_result.json`
    * `*_run-[YYYY-mm-DD_HH-MM-ss]_result.yaml`
    * `*_run-[YYYY-mm-DD_HH-MM-ss]_result.txt`
* model log containing all text sent between benchmark framework an LLM models: `*_run-[YYYY-mm-DD_HH-MM-ss]_modelLog.jsonl`
* debug log with extensive log messages: `*_run-[YYYY-mm-DD_HH-MM-ss]_debug-log.log`

## stats and plots generated per task
* csv/xlsx summary of all results for a task: `*.csv`/`*.xlsx`
* boxplot of all results for a task: `*boxplots*.png`

## other files:
* Benchmark framework configuration file used: `configuration-2024-05-sparql.yml`
* Count for all experiments per task and model combinations present in result files: `sparql6-boxplots__stats.csv`
* Logs of Matrix-Run executions generating the given result files: [`MatrixRun-Logs/`](MatrixRun-Logs/)

## repetition of evaluation with given result files:
* The Benchmarking framework supports the reevaluation of given result files via the `--reeval` parameter
