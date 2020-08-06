tests
testCreateMarkdownOptions
	
	| options buttons |

	options := MarkdownSettings new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [].
	buttons := options submorphs select: [:morph | morph isKindOf: PluggableButtonMorph].
	
	self assert: buttons size = 2.
	self assert: buttons first label = 'Apply'. 
	self assert: buttons second label = 'Cancel'. 