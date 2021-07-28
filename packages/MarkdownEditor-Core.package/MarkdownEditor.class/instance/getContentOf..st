open / save
getContentOf: aStream

	"necessary because other editors make a line break with ten, 13 instead of just 13"
	^ aStream contentsOfEntireFile reject: [:c | c = 10 asCharacter]