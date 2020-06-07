as yet unclassified
testCancelChaningMarkdownOptions

	| options currentStyleSettings expectedStyleSettings |
	
	currentStyleSettings := nil.
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:aStyleSettings | currentStyleSettings := aStyleSettings].
	
	self assert: currentStyleSettings isNil.
	
	options handleSliderChangeFor: 2 with: 40.
	expectedStyleSettings := MarkdownStyleSettings default.
	expectedStyleSettings headingFontSizes at: 2 put: 40.
	self assert: currentStyleSettings = expectedStyleSettings.
	
	options handleCancel.
	self assert: currentStyleSettings = MarkdownStyleSettings default.