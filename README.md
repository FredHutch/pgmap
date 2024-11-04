# pgmap - (paired guide RNA MAPper) Pipeline

We developed pgMAP, an analysis pipeline to map gRNA sequencing reads from dual-targeting CRISPR screens. pgMAP output includes a dual gRNA read counts table and quality control metrics including the proportion of correctly-paired reads and CRISPR library sequencing coverage across all time points and samples.

It is based off of the original code and research from the Berger Lab stored in this repository: [https://github.com/FredHutch/GI_mapping](https://github.com/FredHutch/pgMAP_pipeline)

## Prerequisites

In order to run this pipeline you will need R and to install the `pgmap` package and its dependencies. In R you can run this to install the package:
```
install.packages("remotes")
remotes::install_github("FredHutch/pgmap")
```

## Getting Started Tutorial

Now you can [go to our tutorial to get started!](https://fredhutch.github.io/pgmap/articles/getting_started.html)

Follow the steps there that will walk you through the example data. Then you can tailor that tutorial to use your own data.

### Run the tutorial

Clone the repo:
```
git clone https://github.com/FredHutch/pgmap
```

Change your working directory to the top of this repository you cloned.
```
cd pgmap
```

Start up a docker container within this:
```
docker run -v $PWD:/home cansav09/pgmap
```

Get the container ID
```
docker ps
```

```
docker exec -it <CONTAINER_ID> bash Rscript -e "rmarkdown::render('/home/vignettes/getting_started.Rmd')"
```

Run the tutorial
```
Rscript -e "rmarkdown::render('vignettes/getting_started.Rmd')"
```

### Running on a cluster

This is assuming you are running this on something like the Fred Hutch Rhino cluster, but if you are not a Fred hutch employee results will vary.

1. ssh login with your username
```
ssh username@rhino
```

This will ask you for your password.

2. Start up the Apptainer module (this is a container system like Docker)
