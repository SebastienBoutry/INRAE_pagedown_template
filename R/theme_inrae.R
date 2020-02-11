# couleurs
couleurs_inrae<-rgb(red=c(102,0,39,0,255,157,158,66,121,196), 
                    green=c(193,140,86,0,255,197,214,48,120,192), 
                    blue=c(191,86,98,0,255,68,227,137,112,179),
                    names=c("vert_inrae_clair","vert_inrae","vert_inrae_fonce","noir","blanc","vert","bleu_clair","bleu_fonce","gris_fonce","gris_clair"),
                    max= 255)


# theme INRAE

theme_inrae <- function(){theme(
  axis.title = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662",
    face = "bold"
  ),
  legend.title = element_text(
    family = "Raleway",
    size = 13,
    color = "#275662",
    face = "bold"
  ),
  axis.text = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662"
  ),
  legend.text = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662"
  ),
  legend.position = "top",
  strip.text = element_text(
    family = "Avenir Next Pro",
    size = 13,
    color = "#275662"
  ),
  plot.title = element_text(
    family = "Raleway",
    size = 20,
    color = "#275662"
  ),
  plot.subtitle = element_text(
    family = "Raleway",
    size = 16,
    color = "#275662"
  ),
  plot.caption = element_text(
    family = "Avenir Next Pro",
    size = 10,
    color = "#275662",
    hjust = -0.12
  ),
  panel.background = element_rect(
    color = "#275662",
    fill = "white"
  ),
  panel.grid.major.y = element_line(
    color = "grey",
    size = 0.3
  ),
  panel.grid.minor.y = element_line(
    color = "grey",
    size = 0.3,
    linetype = "dashed"
  ),
  panel.grid.minor.x = element_line(
    color = "grey",
    size = 0.3,
    linetype = "dashed"
  )
)
}




theme_inrae_1 <- function(base_size = 10, base_family = "Avenir Next Pro") {
  theme_gray(base_size = base_size, base_family = base_family) %+replace%
    theme(
      plot.title = element_text(
        color = couleurs_inrae["vert_inrae_fonce"],
        family = "Raleway",
        face = "bold",
        size = rel(1.2),
        hjust = 0,
        vjust = 1
      ),
      plot.subtitle = element_text(
        color = couleurs_inrae["vert_inrae"],
        family = "Avenir Next Pro",
        # face = 'bold',
        size = rel(0.8),
        hjust = 0,
        vjust = 1
      ),
      plot.caption = element_text(
        color = couleurs_inrae["vert_inrae"],
        family = "Avenir Next Pro",
        hjust = 1,
        # face = 'bold',
        size = rel(0.8)
      ),
      legend.text = element_text(colour = couleurs_inrae["vert_inrae"]),
      legend.title = element_text(
        colour = couleurs_inrae["vert_inrae_fonce"],
        face = "bold",
        hjust = 0
      ),
      legend.background = element_rect(
        fill = "transparent",
        colour = NA
      ),
      legend.key = element_rect(
        fill = "transparent",
        colour = NA
      ),
      axis.ticks = element_line(color = couleurs_inrae["vert_inrae_fonce"]),
      axis.text = element_text(colour = couleurs_inrae["vert_inrae"]),
      axis.title.x = element_text(
        colour = couleurs_inrae["vert_inrae_fonce"],
        hjust = 1,
        face = "bold"
      ),
      axis.title.y = element_text(
        colour = couleurs_inrae["vert_inrae_fonce"],
        angle = 90,
        hjust = 1,
        face = "bold"
      ),
      panel.background = element_rect(
        fill = couleurs_inrae["blanc"],
        colour = couleurs_inrae["vert_inrae_fonce"]
      ),
      panel.grid.minor = element_line(
        colour = couleurs_inrae["vert_inrae_clair"],
        linetype = "dotted"
      ),
      panel.grid.major = element_line(
        colour = couleurs_inrae["vert_inrae_clair"],
        linetype = "dashed"
        ),
      plot.background = element_rect(
        fill = NA,
        colour = couleurs_inrae["vert_inrae_fonce"]
      )
    )
}


scale_fill_inrae <- function(...){
  library(scales)
  discrete_scale("fill","inrae",manual_pal(values = c("#00a3a6","#275662","#66c1bf","#008c8e")), ...)
}

scale_color_inrae <- function(...){
  library(scales)
  discrete_scale("color","inrae",manual_pal(values = c("#00a3a6","#275662","#66c1bf","#008c8e")), ...)
}

scale_colour_inrae <- function(...){
  library(scales)
  discrete_scale("colour","inrae",manual_pal(values = c("#00a3a6","#275662","#66c1bf","#008c8e")), ...)
}


scale_fill_inrae_n5 <- function(...){
  library(scales)
  discrete_scale("fill","inrae",manual_pal(values = c("#275662","#008C56","#66C1BF","#9ED6E3","#C4C0B3")), ...)
}

scale_color_inrae_n5 <- function(...){
  library(scales)
  discrete_scale("color","inrae",manual_pal(values = c("#275662","#008C56","#66C1BF","#9ED6E3","#C4C0B3")), ...)
}

scale_colour_inrae_n5 <- function(...){
  library(scales)
  discrete_scale("colour","inrae",manual_pal(values = c("#275662","#008C56","#66C1BF","#9ED6E3","#C4C0B3")), ...)
}
