% myclass.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{postermaps}[2025/05/13 Postermaps]

% Load a base class
\LoadClass[11pt]{article}  % could also be book, report, etc.
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{calc}
\RequirePackage{atbegshi}
\RequirePackage{adjustbox}
\pagestyle{empty}
\newcommand\myfill{\vspace*{\fill}}

\makeatletter
\newcommand{\vfilll}{\vskip 0pt plus 1filll}
\makeatother


\newenvironment{page}[2]{%
  \pdfpagewidth=#2
  \pdfpageheight=#1
  \setlength{\textwidth}{#2-4mm}
  \setlength{\textheight}{#1-4mm}  
  \setlength{\oddsidemargin}{-1in + 1mm}
  \setlength{\evensidemargin}{-1in + 1mm}
  \setlength{\topmargin}{-1in + 1mm}\par
  \setlength{\headheight}{0mm}
  \setlength{\headsep}{0mm}
  \setlength{\footskip}{0mm}
  \setlength{\parindent}{0mm}
  \hsize=\textwidth
  \vsize=\textheight
  \pagegoal=\textheight
  \typeout{\the\pagegoal}
  \pagetotal=0pt
  \lineskiplimit=0pt
  \lineskip=0pt
  \clearpage
  this page will be removed
  \AtBeginShipoutNext{\AtBeginShipoutDiscard}
  \clearpage
  \centering
  \par
\begin{samepage}
  \vspace*{\fill}
}{%
  \par
  \vspace*{\fill}\par
  \end{samepage}
  
  \clearpage
}%
