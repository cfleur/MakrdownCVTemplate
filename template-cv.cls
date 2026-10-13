\LoadClass[a4paper,10pt]{article}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{parskip}
\RequirePackage[colorlinks=true, linkcolor=black, urlcolor=blue]{hyperref}
\RequirePackage{fontawesome} % Import FontAwesome for icons

\geometry{margin=2.0cm}

\providecommand{\tightlist}{\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}} % Fix for tightlist error

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
\newcommand{\cvsection}[1]{\section*{#1}}
\newcommand{\cvsubsection}[1]{\subsection*{#1}}
\newcommand{\cvsubsubsection}[1]{\subsubsection*{#1}}

\newcommand{\cvparagraph}[1]{\paragraph*{#1}}
\newcommand{\cvsubparagraph}[1]{\subparagraph*{#1}}

\newcommand{\cvitem}[2]{\textbf{#1:} #2}

\newcommand{\cvjobtitle}[3]{%
  \noindent\textbf{#1} @ #2\hfill\textbf{#3}\par
}
