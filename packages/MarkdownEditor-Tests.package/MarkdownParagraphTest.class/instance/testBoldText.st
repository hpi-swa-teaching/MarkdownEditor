tests
testBoldText

	| text |
	paragaph content: '**MiniMetro at station**'.
	text := paragaph asText.
	self assert: (text runs values) equals: {{TextEmphasis bold}}.
	
	paragaph content: '**MiniMetro at station** **'.
	text := paragaph asText.
	self assert: (text runs runs) equals: #(24 3).
	self assert: (text runs values) equals: {{TextEmphasis bold}. #()}.
	
	paragaph content: 'MiniMetro at station'.
	text := paragaph asText.
	self deny: (text runs values) equals: {{TextEmphasis bold}}.