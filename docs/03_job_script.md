The `initiate_pipe.sh` script may be used to initiate an ampliseq run. It will run based on the paths set to the parameter files.

A run must also have a unique run name.

You can optionally add the `--email` flag to get get a notification if the run fails. As such:
```shell
nextflow run nf-core/ampliseq \
    -c $configPath \
    -r 2.14.0 \
    -profile singularity \
    -name $runName \
    -params-file $paramsPath \
    --email "email@tamu.edu"
```

You can also optionally add the `-resume` flag to cache the results if the pipeline fails to complete. Allowing you to rerun from the same job script. As such:
```shell
nextflow run nf-core/ampliseq \
    -c $configPath \
    -r 2.14.0 \
    -profile singularity \
    -name $runName \
    -params-file $paramsPath \
    -resume
```

#### Other possible edits
- You may change the job name and std.err and std.out names (located in the sbatch header of the job script)
- You may reduce or extend the master ampliseq job time depending on number of samples. (24hrs should be more than necessary for most runs)