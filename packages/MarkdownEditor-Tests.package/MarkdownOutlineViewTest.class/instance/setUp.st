running
setUp

	| editorWindow |
	sampleDocument := self configureSampleDocument.
	editorWindow := MarkdownEditor open.
	editor := editorWindow model.
	editor textMorph changeText: 'hello' asText.
	"editor textStyler document: sampleDocument."
	outlineWindow := MarkdownOutlineView openFor: editor.
	outlineModel := outlineWindow model