private
privateStyle: aText

	| text |
	text := self parse: aText asText.
	aText runs: text runs
