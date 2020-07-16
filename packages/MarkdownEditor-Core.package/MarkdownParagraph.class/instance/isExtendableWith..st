testing
isExtendableWith: aMarkdownLine

	^ self lastLine containsOnlyWhitespaces not and: aMarkdownLine containsOnlyWhitespaces not
		and: [aMarkdownLine interruptsParagraph not]