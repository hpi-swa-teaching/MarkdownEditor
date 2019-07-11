testing
isExtendableWith: aMarkdownLine

	^ self lastLine containsOnlyWhitespaces ==> aMarkdownLine containsOnlyWhitespaces
		and: [aMarkdownLine interruptsParagraph not]