SHELL := bash

XXX = ===================================

test: .testml test-perl test-python test-bash

test-perl:
	@echo $(XXX) Testing Perl $(XXX)
	source .testml/.rc && \
	TESTML_RUN=perl5 \
	prove -lv test/*.tml
	@echo

test-python:
	@echo $(XXX) Testing Python $(XXX)
	source .testml/.rc && \
	TESTML_RUN=python \
	PYTHONPATH=lib \
	testml test/*.tml
	@echo

test-bash:
	@echo $(XXX) Testing Bash $(XXX)
	source .testml/.rc && \
	TESTML_RUN=bash \
	PATH="./lib:$$PATH" \
	prove -lv test/*.tml
	@echo

clean:
	rm -fr .testml/ test/.testml/
	rm -f test/testml-bridge.pyc

.testml:
	git clone https://github.com/testml-lang/testml/ $@
