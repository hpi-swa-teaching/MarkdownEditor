accessing
blockClasses

	^ { MarkdownBlockquote.
		MarkdownList.
		MarkdownATXHeading.
		MarkdownFencedCodeBlock.
		MarkdownParagraph.
		MarkdownThematicBreak } asOrderedCollection