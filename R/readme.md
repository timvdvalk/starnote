# starnote
Create tabularx tables using stargazer

Requires the definition of a Z column in your latex file: 

\newcolumntype{Z}{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}X}

This ensures all columns (except for the first) to be right-aligned. 
