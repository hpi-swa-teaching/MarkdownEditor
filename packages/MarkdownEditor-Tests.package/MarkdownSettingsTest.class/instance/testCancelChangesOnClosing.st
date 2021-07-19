tests - apply cancel
testCancelChangesOnClosing

	| expectedRuns originalTextColor newRuns text closeBox |
	editor textMorph changeText: 'hello' asText.
	expectedRuns := editor textStyler text runs.
	text := editor textMorph text deepCopy.
	originalTextColor := self colorOfFirstCharInText.
	
	settings newStyleSettings fontColors at: 'Paragraph' put: originalTextColor negated.
	settings change: settings newStyleSettings.
	newRuns := (text addAttribute: (TextColor color: originalTextColor negated)) runs.
	
	self assert: originalTextColor negated equals: self colorOfFirstCharInText.
	self assert:newRuns equals: editor textMorph text runs.
	
	closeBox := self closeBoxOfSettings.
	closeBox doButtonAction.
	self assert: expectedRuns equals: (editor textStyler text runs)