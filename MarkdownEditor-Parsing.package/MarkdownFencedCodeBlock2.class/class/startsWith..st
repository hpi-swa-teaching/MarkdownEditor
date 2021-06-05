as yet unclassified
startsWith: aString

	^ aString matchesRegex: '\s{0,3}(~{3,}|`{3,})\s*([^~`\s]+)?'