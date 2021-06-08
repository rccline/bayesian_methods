library("rstudioapi") 
setwd(dirname(getActiveDocumentContext()$path)) 


set.seed(42)
library(MASS)
## be careful to load dplyr after MASS
library(dplyr)
library(tidyr)
library(purrr)
library(readr)
library(extraDistr)
library(ggplot2)
library(loo)
library(bridgesampling)
library(brms)
library(rstan)
## Save compiled models
rstan_options(auto_write=TRUE)

## Parallelize the chains using all of hte cores:

options(mc.cores = parallel::detectCores())
library(bayesplot)
library(tictoc)
library(hypr)
library(afex)

## Warning:  package 'Matrix' was build under R version 4.0.5 

# To solve some confilcts between packages 

select <- dplyr::select
extract <- rstan::extract

# Solves a problem with V8
rstan_options(javascript = FALSE)