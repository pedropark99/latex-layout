

is_single_string <- function(x){
    length(x) == 1 && is.character(x) && !is.na(x)
}