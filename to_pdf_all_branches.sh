#!/usr/bin/env bash

branches=(master cv_research)

for branch in ${branches[@]}; do
git checkout "$branch"
weasyprint for_pdf/cv_en.html pdf/EZakharova_cv_en.pdf
weasyprint for_pdf/cv_ru.html pdf/EZakharova_cv_ru.pdf
git add pdf/
git commit -m "update pdf"
git push
done

exit
