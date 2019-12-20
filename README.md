# Analyzing the Differences between NYU Prince Cluster and Google Cloud

## Contributors

* Alankrith Krishnan

* Ruining Sun

* Xifei Li

## Steps to run

* Copy the necessary folders to Prince or Google Cloud based on the name

* On both clouds, first install the Anaconda environment

```bash
conda env create -f environment.yml
```

* On Prince, submit batch jobs with the corresponding files (please make necessary edits to batch files for the current user)

```bash
sbatch <test>-<GPU>.s
```

* On Google Cloud, run the script after giving permissions

```bash
chmod +x <test>.sh
./<test>.sh
```
