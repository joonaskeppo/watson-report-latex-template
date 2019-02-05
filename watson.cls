% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% watson.cls
% LaTeX class file for typesetting Watson reports
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


% Base definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{watson}
\LoadClass[titlepage,12pt]{article}


% Package imports (excl. BibTeX ones)
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[
textheight=22cm,
top=2.5cm,
left=2cm,
right=2cm,
footskip=2cm
]{geometry}
\RequirePackage[toc,page]{appendix}
\RequirePackage[nottoc, notlof, notlot]{tocbibind}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tocstyle}
\RequirePackage{lmodern}
\RequirePackage{setspace}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{afterpage}


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
\definecolor{lighter}{rgb}{0.3, 0.3, 0.3}
\cfoot{\textcolor{lighter}{Business Finland -hanke: WHC}}


% Front matter
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title page
\renewcommand{\maketitle}{
\begin{titlepage}
  \centering
  \newgeometry{margin=2cm}
  \vspace*{3cm}
  \Huge\@title\\
  \vspace*{-0.8cm}
  \rule{\linewidth}{0.5pt}\\
  \vspace{0.5cm}
  \LARGE\@author
  \vfill
  \normalsize
  Tämä julkaisu on toteutettu osana WHC-hanketta, johon Jyväskylän yliopisto
  on saanut\\
  rahoituksen Business Finlandilta.
  \restoregeometry
\end{titlepage}
}
% Table of contents
\newtocstyle{watson}{
  \settocfeature[1]{entryhook}{\bfseries}
  \settocfeature[2]{entryvskip}{0pt}
}
\usetocstyle{watson}
% Define front matter command to make main tex file less cluttered
\newcommand{\watsonfrontmatter}{
  \pagenumbering{roman}
  \setcounter{page}{1}
  \maketitle
  % \newpage
  \clearpage % end title page
  \begingroup
    \pagestyle{fancy}
    \null
    \newpage
  \endgroup
  % \afterpage{
  %   \null
  %   \thispagestyle{fancy}
  %   \newpage
  % }
  \listoffigures
  \newpage
  \listoftables
  \newpage
  \tableofcontents
  \newpage
  \pagenumbering{arabic}
  \setcounter{page}{1}
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
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}
% Change line spacing
\setstretch{1.15}
