% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kanjistat-package.R
\encoding{UTF-8}
\name{strokeEditDistance}
\alias{strokeEditDistance}
\title{Stroke Edit Distance}
\format{
\code{strokeEditDistance} is a sparse matrix containing
the stroke edit distance according to Yencken and Baldwin (2008) for
its ten nearest neighbors. All pre-2010 jouyou kanji that are also post-2010
jouyou kanji are included. The indices are those from \code{\link{kbase}}.
}
\source{
Dataset from at \url{https://lars.yencken.org/datasets} under
Creative Commons Attribution 3.0 Unported, as part of "Yencken, Lars (2010)
Orthographic support for passing the reading hurdle in Japanese.
PhD Thesis, University of Melbourne, Melbourne, Australia".
}
\description{
Stroke Edit Distance
}
\examples{
# Look up characters with smallest stroke edit distance to 部.
bu_index <- match("部", kanjistat::kbase$kanji)
non_zero <- which(strokeEditDistance[bu_index,] != 0)
rbind(kbase[non_zero,]$kanji, strokeEditDistance[non_zero,bu_index])

}
