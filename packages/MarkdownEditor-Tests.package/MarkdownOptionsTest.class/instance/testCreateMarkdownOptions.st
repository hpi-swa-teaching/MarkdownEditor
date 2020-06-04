as yet unclassified
testCreateMarkdownOptions
	
	| options buttons |
	
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [].
	self assert: options label = 'Markdown Editor - Options'.
	self assert: MarkdownStyleSettings default = options currentStyleSettings.
	"Transcript show: options submorphs."
	buttons := options submorphs select: [:morph | morph isKindOf: PluggableButtonMorph].
	self assert: buttons size = 2.
	self assert: buttons first label = 'Save'. 
	self assert: buttons second label = 'Cancel'. 