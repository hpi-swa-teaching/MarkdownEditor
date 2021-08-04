tests - apply cancel
testApplyChanges

	| originalTextColor expectedRuns text |
	editor pluggableTextMorph changeText: 'hello' asText.
	text := editor pluggableTextMorph text deepCopy.
	originalTextColor := self colorOfFirstCharInText.
	
	settings newStyleSettings fontColors at: 'Paragraph' put: originalTextColor negated.
	settings change.
	expectedRuns := (text addAttribute: (TextColor color: originalTextColor negated)) runs.
	
	self assert: originalTextColor negated equals: self colorOfFirstCharInText.
	self assert: expectedRuns equals: editor pluggableTextMorph text runs.
	
	settings handleApply.
	self assert: expectedRuns equals: (editor pluggableTextMorph text runs)