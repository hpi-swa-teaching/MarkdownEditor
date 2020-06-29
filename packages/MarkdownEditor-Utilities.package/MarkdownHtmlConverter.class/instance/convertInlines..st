as yet unclassified
convertInlines: aMarkdownBlock
	
	| startIndex html |
	aMarkdownBlock asText.
	startIndex := 1.
	html := ''.
	aMarkdownBlock styler inlineElements do: [ :element | 
		element startPosition = startIndex 
		ifFalse: [
			html := html, (aMarkdownBlock content copyFrom: startIndex to: element startPosition - 1).
			Transcript show: html; cr].
		html := html, (element convertWith: self).
		Transcript show: html; cr.
		startIndex := element endPosition + 1].
	startIndex <= aMarkdownBlock croppedContent size ifTrue: [
		html := html, (aMarkdownBlock croppedContent copyFrom: startIndex to: aMarkdownBlock croppedContent size).
		Transcript show: html; cr].
	
	
	"html inspect.
	aMarkdownBlock inspect."
		
	^ html