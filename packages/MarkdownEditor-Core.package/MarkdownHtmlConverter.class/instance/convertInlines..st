converting
convertInlines: aStyleElement
	
	| startIndex html inlineElements index |
	
	aStyleElement styler privateStyle: aStyleElement croppedContent asText.
	startIndex := 1.
	html := ''.
	inlineElements := aStyleElement sortedInlineElements.
	index := 1.
	
	[index <= inlineElements size] 
		whileTrue: [
			| element nestedHTML nested offset |
			offset := 1.
			nested := self createNested.
			element := inlineElements at: index.
			html := html, (aStyleElement croppedContent copyFrom: startIndex to: element startPosition - 1).
			nested add: element.
			[index < (inlineElements size - (offset - 1)) and: [(inlineElements at: index + offset) endPosition < element endPosition]]
				whileTrue: [nested add: (inlineElements at: index + offset).
							offset := offset + 1].
		
			nestedHTML := self createNestedHTML: nested.
		
			html := html, nestedHTML first.
			startIndex := nestedHTML last + 1.
			index := index + offset].
	
	html := html, (aStyleElement croppedContent copyFrom: startIndex to: aStyleElement croppedContent size).
		
	^ html