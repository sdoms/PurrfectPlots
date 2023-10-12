#' Get the cat colored palette
#'
#' This function loads the respective palette and applies the colour to the ggplot.
#'
#' @param n name of the colour palette. Defaults to lily
#' @return The color palette of choice (catlette)
#' @export
purrs.colours <- function(n="lily") {
  if (n=="lily"){
    pal=c("#cfc9bd","#29231e","#9e8772","#b0b0a6","#7e796e","#765f4c","#5c5953","#a3a3a4","#6d6b6c","#bc7c6c")
  } else if(n=="binky"){
    pal= c("#805C5C", "#3A291B","#374D4D", "#496749")
  } else if(n=="teddy"){
    pal=c("#BFB6A4", "#F2ECE4", "#35312D", "#8C8279", "#B4746C")
  } else if (n=="ginger"){
    pal=c("#232F40", "#F2B680", "#260F01", "#A65526", "#732002")
  } else if (n=="grumpyCat"){
    pal=c("#292759", "#8896BF", "#A69485", "#593E34", "#DFD7CD")
  } else if (n=="caliente"){
    pal= c("#C8A7AA", "#69595D", "#E2BEA0", "#595854", "#0B0C0E", "#732002", "#A65221", 
           "#7E622D","#292759", "#8896BF","#BFB6A4", "#F2ECE4", "#35312D", "#8C8279", "#B4746C","#374D4D", "#496749")
  } else if (n=="disney"){
    pal=c(  "#197330","#94B3F2","#F2A71B", "#D9731A", "#E4CCEC","#58088C","#170C59","#72D9E0", "#ffcc33", "#A62121","#F2C4C4","#591902", "#F2D5BB", "#1E0C26", "#8C7EB9", "#BBB0C0",  "#D769AA", 
            "#A33BBF","#942E31","#849B19","#F22738", "#A17A5B","#DAAD8E" )
  } else {
    cat("You have supplied a non-exsisting cat")
  }
  return(pal)
  
}
#' Color your ggplot graphs with colors based on cats
#'
#' This function loads the respective palette and applies the color scale to the ggplot.
#'
#' @param palette_name name of the colour palette
#' @return ggplot colored graph
#' @export
scale_color_purrs <- function(palette_name="lily", ...) {
  ggplot2::scale_color_manual(values = purrs.colours(palette_name), ...)
}

#' Fill your ggplot graphs with colors based on cats
#'
#' This function loads the respective palette and applies the fill color to the ggplot.
#'
#' @param palette_name name of the colour palette
#' @return ggplot colored graph
#' @export
scale_fill_purrs <- function(palette_name="lily", ...) {
  ggplot2::scale_fill_manual(values = purrs.colours(palette_name), ...)
}
