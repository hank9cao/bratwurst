#### FrobError
# Getter
setGeneric("FrobError", function(x, ...) standardGeneric("FrobError"))

# Setter
setGeneric("setFrobError", function(nmfExperiment, FrobError)
  standardGeneric("setFrobError"))

#### H-Matrix List
# Getter
setGeneric("HMatrixList", function(x, k = NULL, ...)
  standardGeneric("HMatrixList"))

# Setter
setGeneric("setHMatrixList", function(nmfExperiment, HMatrixList)
  standardGeneric("setHMatrixList"))


#### W-Matrix
# Getter
setGeneric("WMatrixList", function(x, k = NULL, ...)
  standardGeneric("WMatrixList"))

# Setter
setGeneric("setWMatrixList", function(nmfExperiment, WMatrixList)
  standardGeneric("setWMatrixList"))


#### H-Matrix (H-Matrix with smallest frobError)
# Getter
#' H-Matrix (H-Matrix with smallest frobError)
#'
#' Return a list of H-Matrices or an H-Matrix for the indicaded rank
#'
#' @param x an nmfExperiment or a nmfExperiment_lite object
#' @param k numeric  - factorization rank
#'
#' @return list of H-Matrices or an H-Matrix for the indicaded rank
#' @export
#' @docType methods
#' @rdname HMatrix-methods
#'
#' @examples
#' HMatrix(nmf_exp)
#' HMatrix(nmf_exp, k = 2)
setGeneric("HMatrix", function(x, k = NULL, ...)
  standardGeneric("HMatrix"))



#### W-Matrix (W-Matrix with smallest frobError)
# Getter
#' W-Matrix (W-Matrix with smallest frobError)
#'
#' Return a list of W-Matrices or a W-Matrix for the indicaded rank
#'
#' @param x an nmfExperiment or a nmfExperiment_lite object
#' @param k numeric  - factorization rank
#'
#' @return list of W-Matrices or a W-Matrix for the indicaded rank
#' @export
#' @docType methods
#' @rdname WMatrix-methods
#'
#' @examples
#' WMatrix(nmf_exp)
#' WMatrix(nmf_exp, k = 2)
setGeneric("WMatrix", function(x, k = NULL, ...) standardGeneric("WMatrix"))



#### Optimal K Statistics
# Getter
setGeneric("OptKStats", function(x, ...) standardGeneric("OptKStats"))

# Setter
setGeneric("setOptKStats", function(nmfExperiment, OptKStats)
  standardGeneric("setOptKStats"))



#### Optimal K
# Getter
setGeneric("OptK", function(x, ...) standardGeneric("OptK"))

# Setter
setGeneric("setOptK", function(nmfExperiment, OptK) standardGeneric("setOptK"))




#### Feature Statistics
# Getter
setGeneric("FeatureStats", function(x, ...) standardGeneric("FeatureStats"))

# Setter
setGeneric("setFeatureStats", function(nmfExperiment, FeatureStats)
  standardGeneric("setFeatureStats"))



#### Signature specfific features
# Getter
setGeneric("SignatureSpecificFeatures",
           function(x, ...) standardGeneric("SignatureSpecificFeatures"))

# Setter
setGeneric("setSignatureSpecificFeatures",
           function(nmfExperiment, SignatureSpecificFeatures){
             standardGeneric("setSignatureSpecificFeatures")
           })


#==============================================================================#
#                               NMF Normalization                              #
#==============================================================================#
#' Normalize the signatures matrix (W)
#'
#' After column normalization of the matrix W, the inverse factors are
#' mutiplied with the rows of H in order to keep the matrix product W*H
#' constant.
#'
#' @param nmf_exp an nmfExperiment or a nmfExperiment_lite object
#'
#' @return an nmfExperiment or a nmfExperiment_lite object normalized by W
#' @export
#' @docType methods
#' @rdname normalizeW-methods
#'
#' @examples
#' normalizeW(nmf_exp)
setGeneric("normalizeW", function(nmf_exp, ...) standardGeneric("normalizeW"))

#' Normalize the signatures matrix (H)
#'
#' After row normalization of the matrix H, the inverse factors are
#' mutiplied with the columns of W in order to keep the matrix product W*H
#' constant.
#'
#' @param nmf_exp an nmfExperiment or a nmfExperiment_lite object
#'
#' @return an nmfExperiment or a nmfExperiment_lite object normalized by W
#' @export
#' @docType methods
#' @rdname normalizeH-methods
#'
#' @examples
#' normalizeH(nmf_exp)
setGeneric("normalizeH", function(nmf_exp, ...) standardGeneric("normalizeH"))

#' Regularize the signatures matrix (H)
#'
#' After row regularization of the matrix H, the inverse factors are
#' mutiplied with the columns of W in order to keep the matrix product W*H
#' constant.
#'
#' @param nmf_exp
#'
#' @return an nmfExperiment or a nmfExperiment_lite object normalized by W
#'
#' @export
#' @docType methods
#' @rdname regularizeH-methods
#'
#' @examples
#' regularizeH(nmf_exp)
setGeneric("regularizeH", function(nmf_exp, ...) standardGeneric("regularizeH"))