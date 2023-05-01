

boxplot_with_violin = function(data, x){

  data %>%
    ggplot(aes(x = .data[[x]])) +
    geom_violin(aes(y = 0), fill = "pink", color = NA) +
    geom_boxplot(width = .1, fill = NA, lwd = 1.1, fatten = 1.1) +
    theme_apa() +
    theme(axis.text.y = element_blank(),
          axis.ticks.y = element_blank(),
          axis.title.y = element_blank(),
          axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
}



scatter = function(data, x, y){
  
  data %>%
    ggplot(aes(x = .data[[x]], y = .data[[y]])) +
    geom_point(color = "grey32") +
    theme_apa()
  
}
