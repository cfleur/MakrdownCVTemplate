\LoadClass[a4paper,10pt]{article}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{parskip}
\RequirePackage[colorlinks=true, linkcolor=black, urlcolor=blue]{hyperref}
\RequirePackage{fontawesome} % Import FontAwesome for icons
\RequirePackage{fancyhdr}
\RequirePackage{datetime}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{hyperref}

% configure pdf document title
\def\@cvpdftitle{Curriculum Vitae} % default title for pdf document
\newcommand{\cvpdftitle}[1]{\gdef\@cvpdftitle{#1}}

% configure date
\newdateformat{simpledate}{\THEDAY.\THEMONTH.\THEYEAR}

% configure header and footer
\pagestyle{fancy}
\fancyhead{} % clears header formatting
\renewcommand{\headrulewidth}{0pt} %removes the horizontal rule that fancyhdr normally draws

% configure page
\geometry{margin=2.0cm}

 % Fix for tightlist error
\providecommand{\tightlist}{\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

% Adjust section formatting
\titleformat{\section}
  {\Large\bfseries\centering} % Tamaño más grande y negrita
  {}{0em}{}[\titlerule] % línea debajo

\titleformat{\subsection}
  {\large\bfseries\itshape\centering} % un poco más grande que el texto normal, negrita+itálica
  {}{0em}{}

\titleformat{\subsubsection}
  {\normalsize\bfseries} % igual al texto pero en negrita
  {}{0em}{}

% Custom commands for CV
\newcommand{\cvname}[1]{\huge \textbf{#1}}
\newcommand{\cvtitle}[1]{\LARGE \textbf{#1}}

% contact style
\newcommand{\cvcontact}[1]{#1}

\newcommand{\cvsection}[1]{\section*{#1}}
\newcommand{\cvsubsection}[1]{\subsection*{#1}}
\newcommand{\cvsubsubsection}[1]{\subsubsection*{#1}}

\newcommand{\cvparagraph}[1]{\paragraph*{#1}}
\newcommand{\cvsubparagraph}[1]{\subparagraph*{#1}}

\newcommand{\cvitem}[2]{\textbf{#1:} #2}

% item titles with left aligned dates
% use this in cv.md to enter job/education titles
\newcommand{\cvitemleftdate}[3]{%
  \noindent \textbf{#1} @ #2\hfill\textbf{#3} \par
}

% custom footer
\newcommand{\cvfooter}[2]{%
  \cfoot{\makebox[\textwidth][c]{%
    \footnotesize
    Page \thepage\ \textbar\ Updated \simpledate\today\
    \textbar\ Made with \href{#1}{#2}%
  }}
}

% set up document properties (links and pdf metadata)
\AtBeginDocument{%
    \hypersetup{%
        colorlinks=true,%
        urlcolor=blue,%
        pdftitle={\@cvpdftitle}%
    }%
}
