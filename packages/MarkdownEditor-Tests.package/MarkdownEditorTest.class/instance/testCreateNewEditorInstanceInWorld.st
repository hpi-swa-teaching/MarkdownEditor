tests - window
testCreateNewEditorInstanceInWorld

	| newEditor windowsBefore windowsAfter |

	windowsBefore := (World submorphs select: [:morph | morph model isKindOf: MarkdownEditor]). 
	newEditor := MarkdownEditor new.
	window := toolbuilder open: newEditor.
	newEditor createNewInstance.
	windowsAfter := (World submorphs select: [:morph | morph model isKindOf: MarkdownEditor]). 
	self assert: (windowsAfter size - windowsBefore size = 2).
	windowsAfter do: [:window_ | window_ delete] 