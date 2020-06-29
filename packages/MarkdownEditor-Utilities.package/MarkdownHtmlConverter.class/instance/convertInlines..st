as yet unclassified
convertInlines: aMarkdownBlock
	
	| startIndex html |
	aMarkdownBlock styler privateStyle: aMarkdownBlock croppedContent asText.
	startIndex := 1.
	html := ''.
	aMarkdownBlock styler inlineElements do: [ :element | 
		element startPosition = startIndex 
		ifFalse: [
			html := html, (aMarkdownBlock croppedContent copyFrom: startIndex to: element startPosition - 1)].
		html := html, (element convertWith: self).
		startIndex := element endPosition + 1].
	startIndex <= aMarkdownBlock croppedContent size ifTrue: [
		html := html, (aMarkdownBlock croppedContent copyFrom: startIndex to: aMarkdownBlock croppedContent size)].
		
	^ html