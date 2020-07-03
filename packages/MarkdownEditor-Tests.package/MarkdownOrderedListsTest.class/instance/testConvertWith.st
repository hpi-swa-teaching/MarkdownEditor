as yet unclassified
testConvertWith

	| list | 
	
	list := MarkdownOrderedList newFrom: (MarkdownLine newFrom: '2. Butter', Character cr with: MarkdownStyleSettings default).
	list append: (MarkdownLine newFrom: '3. Milch', Character cr with: MarkdownStyleSettings default).
	list append: (MarkdownLine newFrom: '4. Brötchen', Character cr with: MarkdownStyleSettings default).
	list append: (MarkdownLine newFrom: '5. Kartoffeln' with: MarkdownStyleSettings default).
	
	self assert: (list convertWith: MarkdownHtmlConverter new) = ('<ol>', Character cr, '<li>Butter</li>', Character cr, '<li>Milch</li>', Character cr, '<li>Brötchen</li>', Character cr, '<li>Kartoffeln</li>', Character cr, '</ol>', Character cr)