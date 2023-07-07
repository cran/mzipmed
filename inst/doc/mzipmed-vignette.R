## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=TRUE, message=FALSE, warning=FALSE,eval=TRUE------------------------
library(mzipmed)

## ----echo=TRUE----------------------------------------------------------------
test=mzip(y=mzipmed_data$ziY1, pred=cbind(X=mzipmed_data$X,C1=mzipmed_data$C1,C2=mzipmed_data$C2), offset=NULL, print=TRUE)

## ----echo=TRUE----------------------------------------------------------------
ziout=zioutlmmed(outcome=mzipmed_data$ziY1,mediator=mzipmed_data$lmM,exposure=mzipmed_data$X, confounder=cbind(mzipmed_data$C1,mzipmed_data$C2), error="Delta", robust=FALSE,X=1,Xstar=0,n=1000, zioff=NULL)

## -----------------------------------------------------------------------------
zioutb=zioutbinmed(outcome=mzipmed_data$ziY2,mediator=mzipmed_data$binM,  exposure=mzipmed_data$X, confounder=cbind(mzipmed_data$C1,mzipmed_data$C2), error="Delta",  robust=FALSE,X=1, Xstar=0, n=1000, C=NULL, zioff=NULL)


## -----------------------------------------------------------------------------
zimed=lmoutzimed(outcome=mzipmed_data$lmY,mediator=mzipmed_data$ziM, exposure=mzipmed_data$X, confounder=cbind(mzipmed_data$C1,mzipmed_data$C2),error="Delta", robust=FALSE,X=1,Xstar=0,C=NULL, zioff=NULL)


## -----------------------------------------------------------------------------
zimedb=binoutzimed(outcome=mzipmed_data$binY,mediator=mzipmed_data$ziM, exposure=mzipmed_data$X, confounder=cbind(mzipmed_data$C1,mzipmed_data$C2),error="Delta", robust=FALSE,X=1,Xstar=0,C=NULL, zioff=NULL, OFF=NULL, rare=FALSE)


## ----echo=TRUE----------------------------------------------------------------
zimout=zioutlmmedint(outcome=mzipmed_data$ziY1,mediator=mzipmed_data$lmM, exposure=mzipmed_data$X, confounder=cbind(mzipmed_data$C1,mzipmed_data$C2),error="Delta", robust=FALSE,X=1,Xstar=0,M=NULL,C=NULL)

