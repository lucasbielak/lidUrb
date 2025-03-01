% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_graph.R
\name{plot_graph}
\alias{plot_graph}
\title{Plot a graph.}
\usage{
plot_graph(las, graph, graph_color = "white", ...)
}
\arguments{
\item{las}{a LAS file.}

\item{graph}{a graph produced with the \code{\link{knn_graph}} or \code{\link{delaunay_graph}} functions.}

\item{graph_color}{the color of the graph edges to plot.}

\item{...}{additionnal parameters to pass to the lidR \code{\link[lidR]{plot}} function.}
}
\value{
plot the graph.
}
\description{
Plot a graph.
}
\examples{
\donttest{
# import data
file = system.file("extdata", "tree_no_leaves.las", package="lidUrb")
las = lidR::readLAS(file)

# build a knn graph
KNN = lidUrb::knn_graph(las, k = 5L)

# plot the graph
lidUrb::plot_graph(las = las, graph = KNN)

# change the size of the nodes
lidUrb::plot_graph(las = las, graph = KNN, size = 5)
}
}
