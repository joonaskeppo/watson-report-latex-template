% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% watson.cls
% LaTeX class file for typesetting Watson reports
%
% Authors: Joonas Keppo and Petri Vähäkainu
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
\RequirePackage{enumitem}


% Base definitions for headers and footers
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\definecolor{lighter}{rgb}{0.3, 0.3, 0.3}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}


% Front matter
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title page command redefinition
\renewcommand{\maketitle}{
\begin{titlepage}
  \centering
  \newgeometry{margin=2cm, includefoot}
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

% Front matter command definition
\newcommand{\watsonfrontmatter}{
  % Title page
  \fancyhf{}
  \cfoot{\textcolor{lighter}{Business Finland -hanke: WHC}\vspace{.05cm}\linebreak\thepage}
  \pagenumbering{roman}
  \setcounter{page}{1}
  \renewcommand{\headrulewidth}{0pt}
  \maketitle % tekee kansilehden
  \clearpage\mbox{}\clearpage % lisää tyhjän sivun kansilehden jälkeen

  % List of figures, tables, and contents
  \listoffigures \thispagestyle{fancy}
  \newpage
  \listoftables \thispagestyle{fancy}
  \newpage
  \setstretch{1.5}
  \renewcommand{\contentsname}{Sisällysluettelo}
  \tableofcontents \thispagestyle{fancy}
  \newpage

  % Header, footer styles following front matter
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \fancyhead[R]{\thepage\ifodd\value{page}\else\hfill\fi}
  \cfoot{\textcolor{lighter}{Business Finland -hanke: WHC}}
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
% Tweak spacing, indentation options
\setstretch{1.15}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}
\setlist{nosep}
