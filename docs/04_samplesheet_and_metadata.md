The samplesheet and metadata act as the input files to the ampliseq pipeline.

# Samplesheet
The sample sheet lists all samples in your run and the location of the raw fastq files associated with each sample. An example samplesheet can be found in `inputs/samplesheet.txt`.

For a typical paired end run the samplesheet will have a column for sampleID, ForwardReads, and ReverseReads.

The sampleID column must not contain any special characters, excluding underscores.

# Metadata
The metadata lists any relavant sample information needed for the pipeline run. This will typically include the sampleID and the groups of interest.

The column name of the group of interest and the reference level (for ANCOMBC) is denoted in the `params.json` file.