accessing
next: anInteger

	| ans endPosition |

	endPosition := position + anInteger  min:  readLimit.
	ans := collection copyFrom: position+1 to: endPosition.
	(ans size ~= anInteger) 
		ifTrue: [ans := ans padded: #right to: anInteger with: Character space].
	position := endPosition.
	^ans