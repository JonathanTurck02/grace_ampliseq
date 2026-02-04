# Setting up nf-core/ampliseq on GRACE

1. Edit your `.bashrc` or `.bashprofile` located in your `$HOME` directory.

**Add the following lines to the top of your `.bashrc`**
```shell
export NXF_SINGULARITY_CACHEDIR="$SCRATCH/.singularity"

export NXF_HOME="$SCRATCH/.nextflow"

export NXF_ASSETS="$SCRATCH/.nextflow/assets"

export NXF_WORK="$SCRATCH/.nextflow_work"

export NXF_OPTS="-Xms1g -Xmx4g"
```

Then save your .bashrc and source it:
```shell
source ~/.bashrc
```

This will set the save location of the singularity containers that Nextflow uses to be in your scratch directory. The default is to save images to your home directory which will quickly reach quota due to the large sizes of the images.

The latest version of Nextflow on GRACE is `25.04.06`. It can be loaded using
```shell
module load Nextflow/25.04.6
```

*Note*: Anytime that Nextflow is being used in a job script, and it needs to pull singularity images you will need to enable WebProxy using
```shell
module load WebProxy/0000
```

It is recommended to pull ampliseq in the login node interactively to allow all singularity images to install before using them within a job script.

The latest version of ampliseq compatible with Nextflow v25.04.6 is version 2.14.0

It can be pulled using the command:
```shell
nextflow pull nf-core/ampliseq -r 2.14.0
```

Then you can test and ensure environment is properly setup by running:
```shell
nextflow run nf-core/ampliseq -r 2.14.0 -profile test,singularity  --outdir $SCRATCH
```

Once the test run completes without errors you can download the `nextflow.config` file to allow ampliseq to run on a compute node through a job script. Once the `nextflow.config` has been downloaded it can be reused for every pipeline run on GRACE.

