helper
show: anImage On: aModel

	| newText |
	"first select from position"
	aModel textMorph selectFrom: self position to: self text size - 1 + self position.
	"build new Text"
	newText := self text, Character cr asText, ((String value: 1) asText 
		addAttribute: (TextAnchor new
            	anchoredMorph: ((Form fromBinaryStream: anImage) scaledToHeight: 100) asMorph;
			yourself);
		flag: #ct;
		yourself).
	"other Option:"
	"newText := ('{1}{2}' asText format: {
       	self text, Character cr asText.
		(String value: 1) asText
            	addAttribute: (TextAnchor new
                		anchoredMorph: ((Form fromBinaryStream: anImage) scaledToHeight: 100) asMorph;
                		yourself);
            	flag: #ct;
            	yourself})."
	
	"set new Text"
	aModel textMorph replaceSelectionWith: newText