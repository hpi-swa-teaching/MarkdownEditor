attributes
attributeDelimiterLengthWith: aMarkdownEmphasisDelimiter

	^ {self length. aMarkdownEmphasisDelimiter length. self boldLength} min
