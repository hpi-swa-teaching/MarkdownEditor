tests
testItalicText

	| text |
	paragaph content: '*MiniMetro driving faaaaast*'.
	text := paragaph asText.
	self assert: (text runs values) equals: {{TextEmphasis italic}}.
	
	paragaph content: 'MiniMetro at station'.
	text := paragaph asText.
	self deny: (text runs values) equals: {{TextEmphasis italic}}.