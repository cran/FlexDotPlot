## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>", 
  echo = TRUE,
  fig.width = 16, fig.height = 6
)

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("Simon-Leonard/FlexDotPlot")
#  

## ----message=FALSE------------------------------------------------------------
library(FlexDotPlot)

## -----------------------------------------------------------------------------
data(PBMC3K_example_data)

## -----------------------------------------------------------------------------
head(PBMC3K_example_data)

## -----------------------------------------------------------------------------
summary(PBMC3K_example_data)

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, size_var = "pct.exp", shape.scale = 8)

## ---- eval=F------------------------------------------------------------------
#  # Same results
#  dot_plot(data.to.plot = PBMC3K_example_data, size_var = 3, shape.scale = 8) # Third column = pct.exp
#  dot_plot(data.to.plot = PBMC3K_example_data, size_var = PBMC3K_example_data$pct.exp, shape.scale = 8)

## ---- eval=F------------------------------------------------------------------
#  class(PBMC3K_example_data$pval_symb)
#  dot_plot(data.to.plot = PBMC3K_example_data, size_var ="pval_symb") # Error ; size_var column has to be numeric

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, col_var = "pct.exp", shape.scale = 20)

## ---- eval=F------------------------------------------------------------------
#  # Same results
#  dot_plot(data.to.plot = PBMC3K_example_data, col_var = 3, shape.scale = 20) # Third column = pct.exp
#  dot_plot(data.to.plot = PBMC3K_example_data, col_var = PBMC3K_example_data$pct.exp, shape.scale = 20)

## -----------------------------------------------------------------------------
class(PBMC3K_example_data$pval_symb)
dot_plot(data.to.plot = PBMC3K_example_data, col_var ="pval_symb", shape.scale=20) 

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, col_var = "pct.exp", cols.use = c("yellow","blue"), shape.scale = 20)

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, shape_var = "pct.exp", shape.scale = 8)

## ---- eval=F------------------------------------------------------------------
#  # Same results
#  dot_plot(data.to.plot = PBMC3K_example_data, shape_var = PBMC3K_example_data$pct.exp, shape.scale = 8)

## -----------------------------------------------------------------------------
class(PBMC3K_example_data$pval_symb)
dot_plot(data.to.plot = PBMC3K_example_data, shape_var ="pval_symb", shape.scale=20) 

## -----------------------------------------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, shape_var ="pval_symb", shape_use=c("\u2605","\u2736","\u25CF","\u2737","\u2726"),
         shape.scale=20) 

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, text_var = "pct.exp2", text.size = 3, shape.scale = 20)

## ---- eval=F------------------------------------------------------------------
#  # Same results
#  dot_plot(data.to.plot = PBMC3K_example_data, text_var = 4, , text.size = 3, shape.scale = 20)
#  dot_plot(data.to.plot = PBMC3K_example_data, text_var = PBMC3K_example_data$pct.exp2, , text.size = 3, shape.scale = 20)

## ----message=FALSE, warning=FALSE, fig.height= 4------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pct.exp",
         col_var = "avg_logFC"
         )

dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= ifelse(PBMC3K_example_data$avg_logFC>0, "Up","Down"), 
         col_var = "avg_logFC", cols.use = c("yellow","blue")
         )

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pct.exp",
         col_var = "avg_logFC",
         dend_x_var = c("pct.exp","avg_logFC"),
         dist_method="euclidean", hclust_method="ward.D"
         )

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pct.exp",
         col_var = "avg_logFC",
         dend_x_var = c("pct.exp","avg_logFC"),
         dend_y_var = c("pct.exp","avg_logFC"),
         dist_method="euclidean", hclust_method="ward.D"
         )

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8, size_legend="My size legend",
         shape_var= "pval_symb", shape_legend="My shape legend",
         col_var = "avg_logFC", col_legend="My col legend"
         )

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pval_symb",
         col_var = "avg_logFC",
         plot.legend=F
         )

## -----------------------------------------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, size_var = "pct.exp", shape.scale = 8, size.breaks.number = 3)

## -----------------------------------------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, size_var = "pct.exp", shape.scale = 8, size.breaks.values = c(0,0.25,0.5,0.75,1))

## -----------------------------------------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, col_var = "pct.exp", shape.scale = 20, color.breaks.number = 3)

## -----------------------------------------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, col_var = "pct.exp", shape.scale = 20, color.breaks.values = c(0,0.3,0.6,0.9))

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pct.exp",
         col_var = "avg_logFC",
         x.lab.pos="bottom",
         y.lab.pos="left"
         )

## ---- fig.width=6, fig.height=12----------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pct.exp",
         col_var = "avg_logFC",
         transpose=TRUE
         )

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pct.exp",
         col_var = "avg_logFC",
         vertical_coloring=c(NA, "gray80")
         )

## ----message=FALSE, warning=FALSE---------------------------------------------
dot_plot(data.to.plot = PBMC3K_example_data, 
         size_var = "pct.exp", shape.scale = 8,
         shape_var= "pct.exp",
         col_var = "avg_logFC",
         horizontal_coloring=c(NA, "gray80")
         )

## ----eval=FALSE---------------------------------------------------------------
#  ggplot_object <- dot_plot(data.to.plot = PBMC3K_example_data,
#                            size_var = "pct.exp", shape.scale = 8,
#                            shape_var= "pct.exp",
#                            col_var = "avg_logFC",
#                            do.return = TRUE
#                            )

## ----eval=FALSE---------------------------------------------------------------
#  Shiny_dot_plot()

## -----------------------------------------------------------------------------
### Import data + create the exp.type column
data(CBMC8K_example_data)

### Dotplot
dotplot = dot_plot( 
  data.to.plot=CBMC8K_example_data, 
  size_var="RNA.avg.exp.scaled",col_var="ADT.avg.exp.scaled", text_var="ADT.pct.exp.sup.cutoff",
  shape_var="canonical_marker", shape_use = c("\u25CF","\u2737"),
  x.lab.pos="bottom",y.lab.pos="left", 
  cols.use=c("lightgrey","orange","red", "darkred"),size_legend="RNA", col_legend="ADT", shape_legend="Canonical marker ?", 
  shape.scale =12, text.size=3, 
  plot.legend = TRUE,x.lab.rot = TRUE, 
  size.breaks.number=4, color.breaks.number=4, shape.breaks.number=5
  , dend_x_var=c("RNA.avg.exp.scaled","ADT.avg.exp.scaled"), dend_y_var=c("RNA.avg.exp.scaled","ADT.avg.exp.scaled"), dist_method="euclidean",
  hclust_method="ward.D", do.return = TRUE)

 

## ----echo=FALSE---------------------------------------------------------------
sessionInfo()

