# Title: RNA-seq-C43
# Created by: Juan Martinez-Villalobos
# Created on: March 24, 2025

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Load libraries
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++
library(data.table)
library(ggplot2)
library(dplyr)
library(ggpubr)
library(readr)
library(GGally)
library(DESeq2)
library(pheatmap)
library(RColorBrewer)
library(corrplot)
library(ggforce)
library(EnhancedVolcano)
library(BiocParallel)
library(tidyr)
library(rtracklayer)
library(ComplexHeatmap)
library(circlize)
library(scales)
library(ggstatsplot)
library(tibble)
library(rrcov)
library(hrbrthemes)
library(viridis)
library(msigdbr)
library(svglite)
library(sva)
library(limma)
library(pheatmap)
library(MASS)
library(matrixStats)
library(gridExtra)
library(ggrepel)
library(limma)
library(edgeR)
library(ggVolcano)
library(ggstatsplot)
register(MulticoreParam(8))
library(parallel)
library(clusterProfiler)
library(org.Mm.eg.db)
library(magrittr)