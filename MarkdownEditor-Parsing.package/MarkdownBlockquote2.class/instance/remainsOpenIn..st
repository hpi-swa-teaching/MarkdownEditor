as yet unclassified
remainsOpenIn: aString
	
	"also remains open if the line is a simple paragraph"
	^ aString matchesRegex: '\s{0,3}>'