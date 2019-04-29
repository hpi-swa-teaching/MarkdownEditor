accessing-private
nextTokenFor: aStream

	| theDelimiter pos |
	theDelimiter := self prototypeDelimiters detect: [:delimiter|
			delimiter content = (aStream peek: delimiter content size)]
		ifNone: [^ MarkdownCharacter new position: aStream position + 1; content: aStream next; yourself].
	pos := aStream position + 1.
	aStream next: theDelimiter content size.
	^ theDelimiter copy 
		position: pos;
		yourself
	