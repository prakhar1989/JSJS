DOCS = docs/proposal.md

all:
	echo "Hello from JSJS"

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf
