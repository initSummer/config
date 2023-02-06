#!/bin/bash
# countfile = "./count/translator.cnt"
# wordBook = "~/wordBook"
for i in "$*"; do
  time1=$(date)
  cat ~/MyConfig/count/translator.cnt | read word
  n=$word
  echo $time1 >> ~/wordBook
  echo "----------------------------" >>  ~/wordBook
  trans  -show-translation-phonetics n -show-languages n -show-prompt-message n :zh $i | tee -a ~/wordBook 
#   trans -p -show-translation-phonetics n -show-languages n -show-prompt-message n :zh $i | tee -a ~/wordBook 
  echo "" >>  ~/wordBook
  m=$(($n+1))
  cat /dev/null > ~/MyConfig/count/translator.cnt 
  echo $m >> ~/MyConfig/count/translator.cnt 
done

