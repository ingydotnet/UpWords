SHELL := bash

INFO = ===================================

test: .testml test-perl test-python

test-perl:
	@echo $(INFO) Testing Perl:
	source .testml/.rc && \
	TESTML_RUN=perl5 \
	prove -lv test/*.tml
	@echo

test-python:
	@echo $(INFO) Testing Python:
	source .testml/.rc && \
	TESTML_RUN=python \
	PYTHONPATH=lib \
	testml test/*.tml
	@echo

clean:
	rm -fr .testml/ test/.testml/
	rm -f test/testml-bridge.pyc

.testml:
	git clone https://github.com/testml-lang/testml/ $@
