#' @title Create tabularx tables using stargazer
#'
#' @description Transforms stargazer output into textwidth tabularx and adds a wrapping table note
#'
#' @param dta save_loc tablenote colnumber
#'
#' @return .tex file
#'
#' @examples TBD
#'
#' @export


# starnote <- function(dta = "", save_loc = "", tablenote = "", colnumber = 6, width_col1 = 0.15){
#   nx <- paste(replicate(colnumber, "X"), collapse = "")
#   nc <- paste(replicate(colnumber, "c"), collapse = "")
#   dta %>%
#     str_replace("begin\\{tabular\\}",
#                 "begin\\{tabularx\\}") %>%
#     str_replace("end\\{tabular\\}",
#                 sprintf("end\\{tabularx\\} \\\\\\\\ \\\\parbox[]{\\\\textwidth}\\{\\\\textit\\{Note:\\} %s \\}",tablenote)) %>%
#     str_replace(sprintf("\\{@\\{\\\\extracolsep\\{5pt\\}\\}l%s\\}",nc),
#                 sprintf("\\{\\\\textwidth\\}{p\\{%s\\\\textwidth\\}%s}",width_col1, nx)) %>%
#     cat(file = save_loc)
# }


starnote <- function(dta = "", save_loc = "", tablenote = "", colnumber = 6, width_col1 = 0.15){
  nx <- paste(replicate(colnumber, "X"), collapse = "")
  nc <- paste(replicate(colnumber, "c"), collapse = "")
  dta %>%
    str_replace("begin\\{tabular\\}",
                "begin\\{tabularx\\}") %>%
    str_replace("end\\{tabular\\}",
                sprintf("end\\{tabularx\\} \\\\\\\\ \\\\parbox[]{\\\\textwidth}\\{\\\\textit\\{Note:\\} %s \\}",tablenote)) %>%
    str_replace(sprintf("\\{@\\{\\\\extracolsep\\{5pt\\}\\}l%s\\}",nc),
                sprintf("\\{\\\\textwidth\\}{p\\{%s\\\\textwidth\\}%s}",width_col1, nx)) %>%
    cat(file = save_loc)
}
