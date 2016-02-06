DOCS = docs/proposal.md

all: buildocs

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf
