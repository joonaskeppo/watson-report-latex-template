% ~~~~~~~~~~~~~~~~~~~~~~~~~
% watson.cls
% LaTeX class file for typesetting Watson reports
% ~~~~~~~~~~~~~~~~~~~~~~~~~


% Base definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{watson}
\LoadClass[titlepage]{article}


% Package imports (excl. BibTeX ones)
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[margin=3cm]{geometry}
\RequirePackage[toc,page]{appendix}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{setspace}
\RequirePackage{caption}
\RequirePackage{fancyhdr}

% Headers and footers
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Style from `fancyhdr` package
\pagestyle{fancy}
% Reset header and footer
\fancyhf{}
% Get rid of header line
\renewcommand{\headrulewidth}{0pt}
% Headers
\rhead{\thepage}
% Footers
\cfoot{Business Finland -hanke: WHC}


% Title page
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define horizontal rule
\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
% Redefine `\maketitle`
\renewcommand{\maketitle}{
\begin{titlepage}
  \centering
  \newgeometry{margin=1cm, voffset=8cm}
  % Vertical centering
  % \topskip0pt
  % \vspace*{\fill}
  % Report title
  \Huge\@title
  \vspace*{-15px}
  \HRule{0.5pt} \\
  \vspace*{15px}
  % Report authors
  \Large\@author
  % Fill remainder of page space
  % \vspace*{\fill}
\end{titlepage}
}


% Bibliography management
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Use the Chicago citation style
\RequirePackage[backend=biber,authordate]{biblatex-chicago}
% The `url` package is already utilized by `biblatex-chicago`
\PassOptionsToPackage{hyphens}{url}


% Various tweaks
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Change URL style from monospaced to sans serif
\urlstyle{sf}
% Differentiate caption text from body text
\captionsetup{font=footnotesize}
% Change line spacing
\setstretch{1.2}
