testing
isExtendableWith: aMarkdownLine

	^ (self class mayBeginWith: aMarkdownLine) or: aMarkdownLine containsOnlyWhitespaces