

create_envir <- function(name, options = NULL, arguments = NULL){
    check_envir_options(options)
    check_envir_arguments(arguments)
    if (!is_single_string(name)) {
        rlang::abort(c(
            "`name` is not a single string!",
            "Parameter `name` should be a single string with the name of the new environment!"
        ))
    }
    
    attrs <- list(
        name = name,
        options = options,
        arguments = arguments
    )
    structure(attrs, class = "latex_environment")
}


check_envir_options <- function(options){
    if (is.null(options)) {
        return()
    }
    not_a_list <- !is.list(options)
    if (not_a_list) {
        rlang::abort(
            "Parameter `options` should be a list, or, a NULL value!"
        )
    }
}


check_envir_arguments <- function(arguments){
    if (is.null(arguments)) {
        return()
    }
    not_a_list <- !is.list(arguments)
    if (not_a_list) {
        rlang::abort(
            "Parameter `arguments` should be a list, or, a NULL value!"
        )
    }
}


