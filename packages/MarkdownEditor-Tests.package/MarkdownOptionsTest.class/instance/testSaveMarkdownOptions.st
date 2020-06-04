as yet unclassified
testSaveMarkdownOptions

	| options savedData |
	
	savedData := nil.
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:aStyleSettings | savedData := aStyleSettings].
	options handleApply.
	self assert: savedData = MarkdownStyleSettings default.