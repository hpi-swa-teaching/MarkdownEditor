as yet unclassified
startsWith: aString

	"\s{0,3}((\*\s*){3,}|(_\s*){3,}|(-\s*){3,})$ is currently not working because of a bug in RxParser"
	^ aString matchesRegex: '\s{0,3}((\*\s*)(\*\s*)(\*\s*)+|(_\s*)(_\s*)(_\s*)+|(-\s*)(-\s*)(-\s*)+)$'