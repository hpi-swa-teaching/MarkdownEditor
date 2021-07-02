as yet unclassified
createNew: aParsingState
	
	"REFACTORING NEEDED"
	| markerList indention |

	aParsingState currentLine isAllSeparators 
	& (aParsingState container class = MarkdownParagraph)
	ifTrue: [^ 0].
		
	(markerList := self parseListMarker: aParsingState) 
		ifNil: [^ 0].
	
	((markerList at: 2) = 1) | (aParsingState container class ~= MarkdownParagraph)
		ifFalse: [^0].
		
	indention := self parseIndention: (markerList at: 5).
	indention = 0 ifTrue: [^ 0].
	
	aParsingState newBlock: 
		(self new
			number: (markerList at: 2);
			indention: (markerList at: 3) + indention;
			isOrdered: (markerList at: 1);
			listMarker: (markerList at: 4)).
	aParsingState reduceCurrentLineTo: ((markerList at: 5) ifNotEmpty: [(markerList at: 5) allButFirst: indention]).
	^ 2