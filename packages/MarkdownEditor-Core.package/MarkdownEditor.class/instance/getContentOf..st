open / save
getContentOf: aStream

	^ aStream contentsOfEntireFile reject: [:c | c = 10 asCharacter]
	"Necessary because other editors make a linebreak with 10, 13 instead of just 13"