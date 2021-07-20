as yet unclassified
setUp

	| editor toolbuilder |
	editor := MarkdownEditor new.
	toolbuilder := ToolBuilder default.
	window := toolbuilder open: editor.
	editor textStyler document: self sampleDocument.
	outlineWindow := MarkdownOutlineView openFor: editor.
	outlineModel := outlineWindow model