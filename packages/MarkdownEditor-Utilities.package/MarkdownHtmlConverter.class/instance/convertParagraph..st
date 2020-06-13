as yet unclassified
convertParagraph: aParagraph

	| paragraphText html currentIsItalic nextIsItalic lastIsItalic currentIsBold nextIsBold lastIsBold skipCount |
	
	paragraphText := aParagraph asText.
	html := '<p>'.
	currentIsItalic := false.
	nextIsItalic := false.
	lastIsItalic := false.
	currentIsBold := false.
	nextIsBold := false.
	lastIsBold := false.
	skipCount := 0.
	
	1 to: paragraphText size do: [:i |
		currentIsItalic := (paragraphText attributesAt: i) contains: [:anAttribute | anAttribute = TextEmphasis italic].
		nextIsItalic := i < paragraphText size and: [(paragraphText attributesAt: i + 1) contains: [:anAttribute | anAttribute = TextEmphasis italic]].
		lastIsItalic := i > 1 and: [(paragraphText attributesAt: i - 1) contains: [:anAttribute | anAttribute = TextEmphasis italic]].
		currentIsBold := (paragraphText attributesAt: i) contains: [:anAttribute | anAttribute = TextEmphasis bold].
		nextIsBold := i < paragraphText size and: [(paragraphText attributesAt: i + 1) contains: [:anAttribute | anAttribute = TextEmphasis bold]].
		lastIsBold := i > 1 and: [(paragraphText attributesAt: i - 1) contains: [:anAttribute | anAttribute = TextEmphasis bold]].
		
		lastIsItalic ifFalse: [currentIsItalic ifTrue: [ html := html, '<em>'. skipCount := 1 ]].
		currentIsItalic ifTrue: [nextIsItalic ifFalse: [ html := html, '</em>'. skipCount := 1 ]].
		lastIsBold ifFalse: [currentIsBold ifTrue: [ html := html, '<strong>'. skipCount := 2 ]].
		currentIsBold ifTrue: [nextIsBold ifFalse: [ html := html allButLast, '</strong>'. skipCount := 1 ]].
		
		skipCount < 1
			ifTrue: [html := html, (paragraphText at: i)]
			ifFalse: [skipCount := skipCount - 1].].
	
	^ html, '</p>', Character cr.
