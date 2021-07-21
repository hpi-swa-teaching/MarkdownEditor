running
setUp

	| editor toolbuilder |
	sampleDocument := self configureSampleDocument.
	editor := MarkdownEditor new.
	toolbuilder := ToolBuilder default.
	window := toolbuilder open: editor.
	editor textStyler document: sampleDocument.
	outlineWindow := MarkdownOutlineView openFor: editor.
	outlineModel := outlineWindow model