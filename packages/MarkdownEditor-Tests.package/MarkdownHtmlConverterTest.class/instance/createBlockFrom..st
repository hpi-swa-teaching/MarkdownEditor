as yet unclassified
createBlockFrom: aMarkdownString

	^ (MarkdownLine newFrom: aMarkdownString with: MarkdownStyleSettings default) asMarkdownBlock