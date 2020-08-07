open / save
putDictionaryOn: aStream

	| dictionary |

	self saveTextInModel.
	
	dictionary := (Dictionary 
		with: #text -> self textMorph text asString 
   	 	with: #style_settings -> (Dictionary 
			with: #font_sizes ->  self blockTextStyler styleSettings fontSizes
  	    		with: #font_colors -> self blockTextStyler styleSettings fontColors)).
	
	STON put: dictionary onStreamPretty: aStream