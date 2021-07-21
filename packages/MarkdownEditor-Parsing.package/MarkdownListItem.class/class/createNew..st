instance creation
createNew: aParsingState
	
	| listData |
	(self checkBlankAfterParagraph: aParsingState)
		ifTrue: [^0].
	(listData := self parseWithState: aParsingState)
		ifNil: [^0].
	"a list item that follows a Paragraph may only begin with a 1" 
	aParsingState container class = MarkdownParagraph
	& (listData at: #isOrdered) ==> ((listData at: #start) = 1)
		ifFalse: [^0].
	aParsingState newBlock: 
		((self newFrom: listData)
			startPosition: aParsingState charPos;
			innerLine: (listData at: #remains);
			yourself).
	^ 1