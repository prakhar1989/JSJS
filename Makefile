DOCS = docs/proposal.md

all: buildocs

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf
	pandoc -s -c pandoc.css $(DOCS) -o index.html
