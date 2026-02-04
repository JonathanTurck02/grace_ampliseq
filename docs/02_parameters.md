Below is a basic template of the `params.json` file which stores the parameters that the ampliseq run will use.
```json
{
    "input": "samplesheet.txt",
    "FW_primer": "GTGYCAGCMGCCGCGGTAA",
    "RV_primer": "GGACTACNVGGGTWTCTAAT",
    "metadata": "metadata.txt",
    "outdir": "$SCRATCH/project/results",
    "filter_ssu": "bac,arc",
    "metadata_category": "Group",
    "metadata_category_barplot": "Group",
    "qiime_adonis_formula": "Group",
    "ancombc": true,
    "ancombc_formula": "Group",
    "ancombc_formula_reflvl": "'Group::Control'",
    "save_intermediates": true,
    "report_title": "Default Ampliseq Run"
}
```

# Creating a custom `params.json`
The `params.json` file can either be edited directly or it can be interactively created [here](https://nf-co.re/launch/?pipeline=ampliseq&release=2.14.0).


## Other notes
The reference taxonomy being used in the pipeline can be edited with the parameter `"dada_ref_taxonomy"`

