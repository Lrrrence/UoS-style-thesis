\LoadClass[twoside, openright]{report}
\usepackage[T1]{fontenc}
\usepackage[british]{babel}
\usepackage[style=numeric,sorting=none]{biblatex}
\usepackage{csquotes}
\usepackage{gensymb}
\usepackage{color,soul}
\usepackage{graphicx}
\usepackage{xcolor}
\usepackage{amssymb}
\usepackage{tabu}
\usepackage{tabulary}
\usepackage{booktabs} %better tables
\usepackage{moreverb}
\usepackage{xurl} %break urls at alphanumeric characters
\usepackage{textcomp}
\usepackage{siunitx}
\usepackage{tabularx}
\usepackage{amsmath}
\usepackage[raggedright]{titlesec} % stops headings from hyphenating
\usepackage{geometry} % to change margins
\usepackage{pdflscape}
\usepackage{pgfgantt}
\usepackage{standalone}
\usepackage{typearea} 
\usepackage[skip=3pt plus1pt, indent=33pt]{parskip}
\usepackage{notoccite} % fix citation order
\usepackage{pdfpages}
\usepackage[margin=10pt,font=small,labelfont=bf,labelsep=endash]{caption}
\usepackage{fancyhdr} %headings
\usepackage{lastpage} %find last page
\usepackage{adjustbox} %for resizing tables
\usepackage{makecell} %new lines within table cells
\usepackage{wasysym} %for diameter symbol
\usepackage{microtype}%fix kerning etc.
\usepackage{libertinus}%change font
\usepackage[list=true]{subcaption}
\usepackage{matlab-prettifier} %for matlab code in appendix
\usepackage{afterpage}
\usepackage{enumitem}
\usepackage{emptypage}%to force blank pages
\usepackage{url}%break urls
\usepackage[en-GB]{datetime2}%set date for title page
\urlstyle{same}%set url font to main font
\usepackage{acro} %for acronyms
\usepackage{lipsum}
\usepackage[breaklinks,colorlinks,bookmarksopen,bookmarksnumbered,citecolor=sotonRed,urlcolor=sotonMarineBlue,linkcolor=sotonRed]{hyperref}%load hyperref last
\usepackage[all]{hypcap}
\usepackage[capitalize,noabbrev]{cleveref} % for linking multiple tables
\usepackage[nodisplayskipstretch]{setspace}
\setstretch{1.5}


%don't count page number for blank pages
\newcommand\blankpage{%
    \null
    \thispagestyle{empty}%
    %\addtocounter{page}{-1}%
    \newpage}

\setcounter{secnumdepth}{4}%adjust depth of section numbering

%to reduce hyphenation
\pretolerance=5000
\tolerance=9000
\emergencystretch=0pt
\hyphenpenalty=10000
\exhyphenpenalty=100
\righthyphenmin=4
\lefthyphenmin=4
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

% make macro for adding units to equations
\makeatletter
\providecommand\add@text{}
\newcommand\tagaddtext[1]{%
  \gdef\add@text{#1\gdef\add@text{}}}% 
\renewcommand\tagform@[1]{%
  \maketag@@@{\llap{\add@text\quad}(\ignorespaces#1\unskip\@@italiccorr)}%
}
\makeatother

%adjust chapter titles
\usepackage{titlesec}
\titleformat{\chapter}[display]
{\bfseries\Large}
{\filleft\MakeUppercase{\chaptertitlename} \Huge\thechapter}
{4ex}
{\titlerule
\vspace{1.5ex}%
\filright}
[\vspace{2ex}%
\titlerule]

%define colours
\definecolor{barblue}{RGB}{153,204,254}
\definecolor{groupblue}{RGB}{51,102,254}
\definecolor{linkred}{RGB}{165,0,33} 
\definecolor{sotonMarineBlue}{RGB}{1,67,89} % Soton marine blue (P 7469C)
\definecolor{sotonGrey}{RGB}{153,153,166} % Soton grey (P 443C)
\definecolor{sotonRed}{RGB}{171,18,16} % Soton Red (P 484C)

\geometry{a4paper, left=38.1mm, right=25.4mm, top=32.5mm, bottom=30mm}

%define new acronym layout
\input{nomenclature.tex}
\newlength\myitemwidth
\setlength\myitemwidth{5em} % <<< choose what you need here
\newlist{myacronymlist}{description}{1}
\setlist[myacronymlist]{
  labelindent = 0pt ,
  labelsep    = 0pt ,
  leftmargin  = \myitemwidth ,
  labelwidth  = \myitemwidth ,
  itemindent  = 0pt ,
  format      = \textbf{\normalfont}
}
\SetupAcroTemplate[list]{description}{%
  \let\description\myacronymlist
  \let\enddescription\endmyacronymlist
}

%set main page style
\fancypagestyle{fancy}{
  \fancyhf{}
  \fancyhead[LE]{\textrm\thepage}
  \fancyhead[LO]{\nouppercase{\textit{\rightmark}}}
  \fancyhead[RE]{\nouppercase{\textit{\leftmark}}}
  \fancyhead[RO]{\textrm\thepage}
  \chead{}\lfoot{}\rfoot{}\cfoot{}
  \renewcommand{\headrulewidth}{0.5pt}
}
%define simple page style with page number only
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[OR]{\thepage}
  \fancyhead[EL]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

