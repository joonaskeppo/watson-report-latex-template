\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{watson}
\LoadClass[titlepage]{article}

\RequirePackage[margin=3cm]{geometry}
\RequirePackage[toc,page]{appendix}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[utf8]{inputenc}
\RequirePackage{etoolbox}
\RequirePackage{lmodern}
\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup{font=footnotesize}
\renewcommand{\baselinestretch}{1.2}
\patchcmd{\maketitle}{\let\footnoterule\relax}{}{}{}
\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}
