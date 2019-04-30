tests
testItalicText

	| text |
	paragaph content: '*MiniMetro driving faaaaast*'.
	text := paragaph asText.
	self assert: (text runs values) equals: {{TextEmphasis italic}}.
	
	paragaph content: '*MiniMetro driving faaaaast* *'.
	text := paragaph asText.
	self assert: (text runs runs) equals: #(28 2).
	self assert: (text runs values) equals: {{TextEmphasis italic}. #()}.
	
	paragaph content: 'MiniMetro driving faaaaast'.
	text := paragaph asText.
	self deny: (text runs values) equals: {{TextEmphasis italic}}.