helpers - emphasis
punctuationCharactersAsRegex

	| stream |
	stream := String new writeStream.
	self punctuationCharacters asStringOn: stream delimiter: '\'.
	^ '\', stream contents