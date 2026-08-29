pdflatex := "pdflatex"
pdfopener := "open"

resume_path := "resume"
cv_pdf := resume_path / "Chudov_Sergei_CV.pdf"
render-cv:
    {{pdflatex}} -output-directory={{resume_path}} -jobname=Chudov_Sergei_CV {{resume_path}}/cv.tex

open-cv:
    {{pdfopener}} {{cv_pdf}}
