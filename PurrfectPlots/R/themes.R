#' This function redefines the ggplot theme. 
#' It is based on theme_test(), with Raleway Medium as a title font and IBM Plex Sans as the main font. 
#'
#' @param base_size Base size of the font
#' @param dark_text The darkest color of the text. The function will define two lighter colors based on this. 
#' @param title_font The name of the title font
#' @param main_font The name of the main font
#' @importFrom ggplot2 %+replace% theme_test theme element_text element_blank element_rect margin rel
#' @export
theme_cat <- function(base_size = 12, 
                            dark_text = "#1A242F", title_font="Raleway Medium", main_font="IBM Plex Sans") {
  
  # extrafont::loadfonts()
  
  mid_text <-  monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[2]
  light_text <-  monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[3]
  
  ggplot2::theme_test(base_size = base_size) %+replace% 
    theme(text = element_text(colour = mid_text, family = main_font, lineheight = 1.1),
          plot.title = element_text(colour = dark_text, family = title_font, size = rel(1.6), margin = margin(12, 0, 8, 0)),
          plot.subtitle = element_text(size = rel(1.1), family = title_font, margin = margin(4, 0, 0, 0)),
          axis.text.y = element_text(colour = light_text, size = rel(0.8)),
          axis.title.y = element_text(size = base_size, margin = margin(0, 4, 0, 0), angle = 90),
          axis.text.x = element_text(colour = mid_text, size = base_size),
          legend.position = "right",
          legend.justification = 1,
          legend.margin = margin(6, 6, 6, 6),
          legend.background = element_blank(),
          legend.box.background = element_rect(colour = light_text),
          plot.caption = element_text(size = rel(0.8), margin = margin(8, 0, 0, 0)),
          plot.margin = margin(0.25, 0.25, 0.25, 0.25,"cm"), 
          panel.grid.minor = element_blank(),
          panel.grid.major = element_blank(),
          strip.background =element_rect(fill="#EEECF0"),
          complete=TRUE)
}
