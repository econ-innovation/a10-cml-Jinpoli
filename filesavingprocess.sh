{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww13780\viewh9180\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
\
# \uc0\u25991 \u20214 \u22841 \u35745 \u25968 \u22120 \
dirCount=1\
\
# \uc0\u19978 \u32423 \u25991 \u20214 \u22841 \u35745 \u25968 \u22120 \
superDirCount=1\
\
# \uc0\u22522 \u26412 \u36335 \u24452 \
basePath=\'93bigdata/Googlepatent/patenttext\'94\
\
# \uc0\u24403 \u21069 \u24037 \u20316 \u30446 \u24405 \
currentDir="$basePath/super$superDirCount/dir$dirCount"\
\
# \uc0\u21019 \u24314 \u31532 \u19968 \u20010 \u30446 \u24405 \
mkdir -p $currentDir\
\
# \uc0\u26681 \u25454 \u19987 \u21033 \u21495 \u25490 \u24207 \u20449 \u24687 \u65292 \u27599 \u19968 \u34892 \u20195 \u34920 \u19968 \u20010 \u19987 \u21033 \u25991 \u20214 \
\
while IFS= read -r line; do\
  # \uc0\u26356 \u26032 \u24403 \u21069 \u30446 \u24405 \
  currentDir="$basePath/super$superDirCount/dir$dirCount"\
  \
  # \uc0\u26816 \u26597 \u26159 \u21542 \u38656 \u35201 \u21019 \u24314 \u26032 \u30340 \u19978 \u32423 \u30446 \u24405 \u25110 \u23376 \u30446 \u24405 \
  if [ $((dirCount % 100)) -eq 0 ] && [ $dirCount -ne 0 ]; then\
    ((superDirCount++))\
    dirCount=1\
    currentDir="$basePath/super$superDirCount/dir$dirCount"\
    mkdir -p $currentDir\
  fi\
  \
  # \uc0\u25991 \u20214 \u36335 \u24452 \
  filePath="$currentDir/file_$\{line\}.txt"\
  \
  # \uc0\u33719 \u21462 \u24182 \u20445 \u23384 \u19987 \u21033 \u25991 \u26412 \u25968 \u25454 \u21040 \u25991 \u20214 \
  echo "Saving patent $\{line\} to $filePath"\
  # \uc0\u36825 \u37324 \u26367 \u25442 \u20026 \u33719 \u21462 \u21644 \u20445 \u23384 \u25968 \u25454 \u30340 \u21629 \u20196 \
  echo "Patent data for patent $\{line\}" > "$filePath"\
  \
  # \uc0\u26356 \u26032 \u23376 \u30446 \u24405 \u35745 \u25968 \u22120 \
  ((dirCount++))\
done < \'93pubnr_cn.txt"}