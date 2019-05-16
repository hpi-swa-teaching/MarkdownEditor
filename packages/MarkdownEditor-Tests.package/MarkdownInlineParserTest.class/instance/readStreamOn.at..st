accessing
readStreamOn: aString at: anInteger

	^ (MarkdownReadStream on: aString) 
		next: anInteger; 
		yourself