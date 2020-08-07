constants
default

	| dictionaries |
	dictionaries := self createDefaultDictionaries.
	
	^ self new 
		fontSizes: dictionaries first;
		fontColors: dictionaries second;
		yourself