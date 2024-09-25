TEXI2PDF?=texi2pdf
PDFOPENER?=gs

RESUME_PATH=resume
OUTPUT_PDF=$(RESUME_PATH)/cv.pdf

render-cv:
	$(TEXI2PDF) $(RESUME_PATH)/cv.tex --output=$(OUTPUT_PDF)

open-pdf:
	gs $(OUTPUT_PDF)