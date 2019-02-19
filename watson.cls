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
\RequirePackage[nottoc,notlof,notlot]{tocbibind}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tocstyle}
\RequirePackage{lmodern}
\RequirePackage{setspace}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{csquotes}
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
% TITLE PAGE
\renewcommand{\maketitle}{
  \fancyhf{}
  \cfoot{\textcolor{lighter}{Business Finland -hanke: WHC}\vspace{.05cm}\linebreak\thepage}
  \pagenumbering{roman}
  \setcounter{page}{1}
  % \renewcommand{\headrulewidth}{0pt}
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
    \begin{center}
      \includegraphics[scale=0.6]{img/jyu-logo.png}
    \end{center}
    % \vspace{0.15cm}
    \normalsize
    Tämä julkaisu on toteutettu osana WHC-hanketta, johon Jyväskylän yliopisto
    on saanut\\
    rahoituksen Business Finlandilta.
    \restoregeometry
  \end{titlepage}
  \clearpage\mbox{}\clearpage % lisää tyhjän sivun kansilehden jälkeen
}
% LIST OF FIGURES
\newcommand{\makelistoffigures}{
    \listoffigures \thispagestyle{fancy}
    \newpage
}
% LIST OF TABLES
\newcommand{\makelistoftables}{
    \listoftables \thispagestyle{fancy}
    \newpage
}
% TABLE OF CONTENTS
\newcommand{\maketableofcontents}{
  \setstretch{1.5}
  \renewcommand{\contentsname}{Sisällysluettelo}
  \tableofcontents \thispagestyle{fancy}
  \newpage
}
% HEADING, FOOTER STYLES IMMEDIATELY AFTER FRONT MATTER
\newcommand{\setreportstyles}{
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
