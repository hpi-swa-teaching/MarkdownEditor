as yet unclassified
testCreateMarkdownOptions
	
	| options buttons |

	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [].
	
	self assert: (MarkdownStyleSettings default = options currentStyleSettings).
	buttons := options submorphs select: [:morph | morph isKindOf: PluggableButtonMorph].
	
	self assert: buttons size = 2.
	self assert: buttons first label = 'Apply'. 
	self assert: buttons second label = 'Cancel'. 