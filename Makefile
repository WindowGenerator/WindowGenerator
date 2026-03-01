TEXI2PDF?=texi2pdf
PDFOPENER?=gs

RESUME_PATH=resume
CV_PDF=$(RESUME_PATH)/Chudov_Sergei_CV.pdf
RESUME_PDF=$(RESUME_PATH)/Chudov_Sergei_Resume.pdf

render-cv:
	$(TEXI2PDF) $(RESUME_PATH)/cv.tex --output=$(CV_PDF) --pdf

render-resume:
	$(TEXI2PDF) $(RESUME_PATH)/resume.tex --output=$(RESUME_PDF) --pdf

open-cv:
	gs $(CV_PDF)

open-resume:
	gs $(RESUME_PDF)
