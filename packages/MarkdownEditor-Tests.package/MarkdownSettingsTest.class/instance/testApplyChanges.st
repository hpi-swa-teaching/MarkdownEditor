tests - apply cancel
testApplyChanges

	| originalTextColor expectedRuns text |
	editor textMorph changeText: 'hello' asText.
	text := editor textMorph text deepCopy.
	originalTextColor := self colorOfFirstCharInText.
	
	settings newStyleSettings fontColors at: 'Paragraph' put: originalTextColor negated.
	settings change: settings newStyleSettings.
	expectedRuns := (text addAttribute: (TextColor color: originalTextColor negated)) runs.
	
	self assert: originalTextColor negated equals: self colorOfFirstCharInText.
	self assert: expectedRuns equals: editor textMorph text runs.
	
	settings handleApply.
	self assert: expectedRuns equals: (editor textMorph text runs)