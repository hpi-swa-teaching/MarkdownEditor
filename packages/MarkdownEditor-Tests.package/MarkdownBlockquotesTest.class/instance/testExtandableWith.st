tests
testExtandableWith

	| line line2 blockquote |
	line := (MarkdownLine newFrom: '> Quote' with: MarkdownStyleSettings default).
	line2 := (MarkdownLine newFrom: '> Quote 2nd lint' with: MarkdownStyleSettings default).
	blockquote := MarkdownBlockquote newFrom: line.
	self assert: (blockquote isExtendableWith: line2)