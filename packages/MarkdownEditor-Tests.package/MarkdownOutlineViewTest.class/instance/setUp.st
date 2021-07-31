running
setUp

	| editorWindow |
	sampleDocument := self configureSampleDocument.
	editorWindow := MarkdownEditor open.
	editor := editorWindow model.
	editor textMorph changeText: self defaultText.
	outlineWindow := MarkdownOutlineView openFor: editor.
	outlineModel := outlineWindow model