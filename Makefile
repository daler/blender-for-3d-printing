SPHINXOPTS    =
PAPER         =
SPHINXBUILD   = sphinx-build
BUILDDIR      = build

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d "$(BUILDDIR)/doctrees" $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) manual
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) manual

# full paths
CHAPTERS_FULL:=$(filter %/, $(wildcard manual/*/))
# names only
CHAPTERS:=$(notdir $(sort $(CHAPTERS_FULL:%/=%)))
# intersect make goals and possible chapters
QUICKY_CHAPTERS=$(filter $(MAKECMDGOALS),$(CHAPTERS))


# -----------------------
# for echoing output only
ifeq ($(QUICKY_CHAPTERS), )
	CONTENTS_HTML="contents.html"
else
	CONTENTS_HTML="contents_quicky.html"
endif

# os specific
ifeq ($(OS), Darwin)
	# OSX
	OPEN_CMD="open"
else
	# Linux/FreeBSD
	OPEN_CMD="xdg-open"
endif
# end output for echoing
# ----------------------


ifneq "$(findstring singlehtml, $(MAKECMDGOALS))" ""
	.DEFAULT_GOAL := singlehtml
else ifneq "$(findstring pdf, $(MAKECMDGOALS))" ""
	.DEFAULT_GOAL := pdf
else
	.DEFAULT_GOAL := html
endif


$(CHAPTERS): $(.DEFAULT_GOAL)


html: FORCE
	# './' (input), './html/' (output)
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	$(SPHINXBUILD) -b html $(SPHINXOPTS) ./manual "$(BUILDDIR)/html"

	@echo "To view, run:"
	@echo "  "$(OPEN_CMD) $(shell pwd)"/$(BUILDDIR)/html/$(CONTENTS_HTML)"

singlehtml: FORCE
	# './' (input), './html/' (output)
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	$(SPHINXBUILD) -b singlehtml $(SPHINXOPTS) ./manual "$(BUILDDIR)/singlehtml"

	@echo "To view, run:"
	@echo "  "$(OPEN_CMD) $(shell pwd)"/$(BUILDDIR)/singlehtml/$(CONTENTS_HTML)"

pdf: FORCE
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	sphinx-build -b latex ./manual "$(BUILDDIR)/latex"
	make -C "$(BUILDDIR)/latex" LATEXOPTS="-interaction nonstopmode"
	@echo "  "$(OPEN_CMD)" $(BUILDDIR)/latex/blender_manual.pdf"

readme: FORCE
	rst2html readme.rst > readme.html

check_syntax: FORCE
	- python3 tools/rst_check_syntax.py --long > rst_check_syntax.log
	- @echo "Lines:" `cat rst_check.log  | wc -l`
	- gvim --nofork -c "cfile rst_check_syntax.log" -c "cope" -c "clast"
	- rm rst_check_syntax.log

check_structure: FORCE
	- python3 tools/rst_check_structure.py --image --locale

#	- python3 tools/rst_check_structure.py --image > rst_check_structure.log
#	- @echo "Lines:" `cat rst_check.log  | wc -l`
#	- gvim --nofork -c "cfile rst_check_structure.log" -c "cope" -c "clast"
#	- rm rst_check_structure.log

update_po: FORCE
	- ./tools/maintenance/update_po.sh

gettext: FORCE
	$(SPHINXBUILD) -b gettext $(I18NSPHINXOPTS) $(BUILDDIR)/locale
	@echo
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/locale."


clean: FORCE
	rm -rf "$(BUILDDIR)/html" "$(BUILDDIR)/singlehtml" "$(BUILDDIR)/latex" "$(BUILDDIR)/locale"


# -----------------------------------------------------------------------------
# Help for build targets
help:
	@echo ""
	@echo "Documentation"
	@echo "============="
	@echo ""
	@echo "Convenience targets provided for building docs"
	@echo "- html       - create HTML pages (default)"
	@echo "- singlehtml - create a single (huge) HTML file"
	@echo "- pdf        - create a PDF with latex"
	@echo "               warning: this currently has some problems,"
	@echo "               though the PDF generates, there are various unresolved issues."
	@echo "- readme     - create 'readme.html'"
	@echo "  ... otherwise defaults to HTML"
	@echo ""
	@echo "Chapters - for quickly building a single chapter"
	@echo ""

	@$(foreach ch,$(CHAPTERS),echo "- "$(ch);)
	@echo ""
	@echo ""
	@echo "Checking"
	@echo "========"
	@echo ""
	@echo "- check_syntax       Check the syntax of all .rst files."
	@echo "- check_structure    Check the structure of all .rst files."
	@echo ""
	@echo ""
	@echo "Maintenance"
	@echo "==========="
	@echo ""
	@echo "- update_po          Update the PO translations files from the RST source."
FORCE:
