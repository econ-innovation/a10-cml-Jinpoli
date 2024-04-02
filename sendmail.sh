{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
\
# \uc0\u35774 \u32622 \u25910 \u20214 \u20154 \u37038 \u31665 \u22320 \u22336 \
recipient="idealab2022@163.com\'94\
\
# \uc0\u35774 \u32622 \u37038 \u20214 \u20027 \u39064 \
subject="\uc0\u37038 \u20214 \u20027 \u39064 "\
\
# \uc0\u35774 \u32622 \u21457 \u20214 \u20154 \u37038 \u31665 \u22320 \u22336 \
from=\'93jinpoli1995@gmail.com"\
\
# \uc0\u37038 \u20214 \u27491 \u25991 \
body="\uc0\u36825 \u26159 \u37038 \u20214 \u27491 \u25991 \u20869 \u23481 \u12290 "\
\
# \uc0\u21457 \u36865 \u37038 \u20214 \
echo -e "Subject: $subject\\nFrom: $from\\nTo: $recipient\\n\\n$body" | msmtp -a default $recipient}