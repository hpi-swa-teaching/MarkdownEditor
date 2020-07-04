open / save
putDictionaryOn: aStream

	self saveTextInModel.
	STON put: (Dictionary with: #text -> self textMorph text asString 
						    with: #style_settings -> (Dictionary with: #font_sizes ->  self blockTextStyler styleSettings fontSizes
														  	    with: #font_colors -> self blockTextStyler styleSettings fontColors))
		   onStreamPretty: aStream.