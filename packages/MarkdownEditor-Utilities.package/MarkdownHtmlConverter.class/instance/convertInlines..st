as yet unclassified
convertInlines: aMarkdownBlock
	
	| startIndex html inlineElements element nested index nestedMarkdown nestedHTML parent start stop |
	
	aMarkdownBlock styler privateStyle: aMarkdownBlock croppedContent asText.
	startIndex := 1.
	html := ''.
	inlineElements := aMarkdownBlock styler inlineElements sort: [ :elem1 :elem2 | elem1 startPosition <= elem2 startPosition].
	nested := Stack new.
	index := 1.
	nestedMarkdown := nil.
	
	[index <= inlineElements size] 
	whileTrue: [ 
		element := inlineElements at: index.
		element startPosition = startIndex 
			ifFalse: [html := html, (aMarkdownBlock croppedContent copyFrom: startIndex to: element startPosition - 1)].
		nested push: element.
		[index < inlineElements size and: [(inlineElements at: index + 1) endPosition < element endPosition]]
			whileTrue: [nested push: (inlineElements removeAt: index + 1)].
			
		1 to: nested size do: [: i | 
			nestedMarkdown ifNil: [ nestedMarkdown := nested pop ]
							   ifNotNil: [
								parent := nested pop.
								parent content: (StringUtil replaceFrom: start - parent startPosition + 1 - parent indicator size to: stop - parent startPosition + 1 - parent indicator size in: parent content with: nestedHTML).
								nestedMarkdown := parent].
							
			start := nestedMarkdown startPosition.
			stop := nestedMarkdown endPosition.
			nestedHTML := nestedMarkdown convertWith: self].
		
		html := html, nestedHTML.
		startIndex := stop + 1.
		index := index + 1.
		nestedMarkdown := nil].
	
	startIndex <= aMarkdownBlock croppedContent size ifTrue: [
		html := html, (aMarkdownBlock croppedContent copyFrom: startIndex to: aMarkdownBlock croppedContent size)].
		
	^ html