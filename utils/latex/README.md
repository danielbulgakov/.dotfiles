# Как использовать скрипт

В основной документ `main.tex` добавить это

```
\usepackage{listings}
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\lstset{
    language=Python,
    basicstyle=\ttfamily\small,
    keywordstyle=\color{blue},
    commentstyle=\color{dkgreen},
    stringstyle=\color{mauve},
    stepnumber=1,
    breaklines=true,
    breakatwhitespace=true,
    tabsize=4,
    captionpos=tl,
}
```

Для того, чтобы создать файл с `.py` файлами нужно использовать скрипт `file_content_to_latex.py` следующим образом

```
python3 ./file_content_to_latex.py /path/to/dir output_file_latex.tex
```

Если используется `overleaf`, то загрузить `output_file_latex.tex` на сайт и добавить его в `main.tex`, 
используя команду 

```
\input{out}
```
