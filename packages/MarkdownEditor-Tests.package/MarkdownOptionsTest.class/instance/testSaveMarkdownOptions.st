as yet unclassified
testSaveMarkdownOptions

	| options savedData |
	
	savedData := nil.
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onSave: [:aStyleSettings | savedData := aStyleSettings].
	options handleSave.
	self assert: savedData = MarkdownStyleSettings default.