inserting
insert: aText into: anotherText afterPosition: position

	| firstHalf secondHalf |
	firstHalf := anotherText copyFrom: 1 to: position.
	secondHalf := anotherText copyFrom: position + 1 to: anotherText size.
	^ firstHalf, aText, secondHalf