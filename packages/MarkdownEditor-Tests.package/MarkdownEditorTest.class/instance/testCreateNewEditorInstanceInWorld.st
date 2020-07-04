tests - window
testCreateNewEditorInstanceInWorld

	| editor windowsBefore windowsAfter |
	
	windowsBefore := (World submorphs select: [:morph | morph model isKindOf: MarkdownEditor]). 
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor createNewInstance.
	windowsAfter := (World submorphs select: [:morph | morph model isKindOf: MarkdownEditor]). 
	self assert: (windowsAfter size - windowsBefore size = 2).
	windowsAfter do: [:window_ | window_ delete]