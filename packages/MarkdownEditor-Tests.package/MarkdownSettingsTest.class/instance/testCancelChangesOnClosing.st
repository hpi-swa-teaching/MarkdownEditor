tests - apply cancel
testCancelChangesOnClosing

	| expectedRuns originalTextColor newRuns text closeBox |
	editor pluggableTextMorph changeText: 'hello' asText.
	expectedRuns := editor textStyler text runs.
	text := editor pluggableTextMorph text deepCopy.
	originalTextColor := self colorOfFirstCharInText.
	
	settings newStyleSettings fontColors at: 'Paragraph' put: originalTextColor negated.
	settings change.
	newRuns := (text addAttribute: (TextColor color: originalTextColor negated)) runs.
	
	self assert: originalTextColor negated equals: self colorOfFirstCharInText.
	self assert: newRuns equals: editor pluggableTextMorph text runs.
	
	closeBox := self closeBoxOfSettings.
	closeBox doButtonAction.
	self assert: expectedRuns equals: (editor textStyler text runs)