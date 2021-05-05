open / save
putTextOn: aStream

	| text |

	self saveTextInModel.
	text := self textMorph text asString.
	
	aStream nextPutAll: text.