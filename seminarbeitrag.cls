% !TEX encoding = UTF-8 Unicode
% seminarbeitrag.cls
% einspaltiges Format (zum zweispaltigen siehe seminarvorlage.cls)
% LG Kooperative Systeme, FernUni Hagen, April 2025

\NeedsTeXFormat{LaTeX2e}
\def\fileversion{V0.2}
\def\filedate{Apr 1, 2025}
\ProvidesClass{seminarbeitrag}[\filedate, \fileversion]
\LoadClass[twoside,10pt]{scrartcl}% Abgeleitet von scrartcl (KOMA)

% Fonts
\RequirePackage[T1]{fontenc} % Moderne Fonts, Trennung von Woertern mit Umlauten
\RequirePackage{lmodern} % Latin Modern
\RequirePackage[babel]{microtype} % typographical refinements, recommended

% Mathe
\RequirePackage{amssymb} % American Mathematical Society
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{latexsym}

\RequirePackage{babel}% automatische Sprachunterstuetzung, auch \addto

% Seitenformat, A4-Papier, Seitenzahlen
\RequirePackage[a4paper, left=3cm, right=3cm, top=2.5cm, bottom=3cm]{geometry}
\pagenumbering{arabic}
\pagestyle{empty}
\addto\maketitle{\thispagestyle{empty}}

% Bilder
\RequirePackage{graphicx} % \includegraphics
\RequirePackage{color}
\RequirePackage[margin=2em,font=normalsize,labelfont={sf,bf}]{caption} % Bildunterschriften
\renewcommand{\topfraction}{.9}  %%%%% mehr Freiheit bei
\renewcommand{\textfraction}{.1} %%%%% der Platzierung
\renewcommand{\floatpagefraction}{.8}% von Bildern
\renewcommand{\bottomfraction}{0.8}%%%
\renewcommand{\dbltopfraction}{0.8}%%%
\renewcommand{\dblfloatpagefraction}{.8}
\setcounter{topnumber}{3}        %%%%%
\setcounter{bottomnumber}{2}     %%%%%
\setcounter{totalnumber}{4}      %%%%%
\setcounter{dbltopnumber}{2}     %%%%%

% Referenzen, Links
\RequirePackage[pdftex,pdfpagelabels=false]{hyperref}
\hypersetup{%
    bookmarksnumbered,
    pdfstartview={FitH},
    colorlinks,
    citecolor=blue,
    filecolor=blue,
    linkcolor=blue,
    urlcolor=blue,
    breaklinks=true,
}
\RequirePackage{cleveref}% bequeme Referenzen mit \cref
%%%\RequirePackage{embrac}% Klammern nicht kursiv, () und [] % inkompatibel mit biblatex

\RequirePackage{datetime}
\date{\large\monthname~\the\year}

\addto\captionsenglish{\def\keywordsname{Keywords}}
\addto\captionsgerman{\def\keywordsname{Stichw\"orter}}
\addto\captionsngerman{\def\keywordsname{Stichw\"orter}}

\providecommand{\keywords}[1]
{\par\smallskip\noindent\normalsize{\sffamily\textbf{\keywordsname:}} #1\par
}
