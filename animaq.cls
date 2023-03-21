% Author: Nia Schlegel
% Date: 2023/03/21
% Version: 1.0

% This is based on article used to typeset Animalibus Aquae notes

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{animaq}[2023/03/21 v1.0 Animalibus Aquae class]
\LoadClass[11pt]{article}
\RequirePackage[a6paper,landscape]{geometry}
\RequirePackage{adforn}
\RequirePackage{ifthen}
\RequirePackage{ebgaramond}
\RequirePackage{letterspace}

\DeclareRobustCommand{\org}[1]{%
	\newcommand{\@org}{#1}%
}

% declare new command place, defaulting to Haan
\newcommand{\@place}{Haan}
\DeclareRobustCommand{\place}[1]{%
	\renewcommand{\@place}{#1}%
}

\DeclareRobustCommand{\person}[1]{%
\ifthenelse{\equal{#1}{}}{}{
\flushright --- {#1}}
}

\renewcommand{\maketitle}{%
	\begin{center}
		{\Large \adforn{19} \hspace{0.25em} \textsc{\@org} \hspace{0.25em} \adforn{47}} \\
		{\textit{\ifthenelse{\equal{\@place}{}}{}{\@place, }\@date}}
	\end{center}
}

% declare environment
\newenvironment{content}{
	\vfill
}{
	\vfill
}

% disable page numbers
\renewcommand{\thepage}{}

