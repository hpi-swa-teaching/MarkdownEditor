tests
testCreateMarkdownOptions
	
	| buttons |

	buttons := settings dependents select: [:morph | morph isKindOf: PluggableButtonMorph].
	
	self assert: buttons size = 5.
	self assert: (buttons at: 1) label = 'General'. 
	self assert: (buttons at: 2) label = 'Headings'. 
	self assert: (buttons at: 3) label = 'Lists'. 
	self assert: (buttons at: 4) label = 'Apply'. 
	self assert: (buttons at: 5) label = 'Cancel'