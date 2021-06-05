as yet unclassified
startsWith: aString

	^ aString matchesRegex: '\s{0,3}#{1,6}\s+([^#]*)#*\s*$'