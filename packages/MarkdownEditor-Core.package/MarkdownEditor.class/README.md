A MarkdownEditor provides a simple text area for writing Markdown documents, formats your Markdown text individually and contains a menu for interactions.

Instance Variables
	currentFilePath:		<ByteString>
	markdownMenu:		<MarkdownEditorMenu>
	markdownText:			<Text>
	pluggableTextMorph:	<PluggableTextMorphPlus>
	window:				<PluggableSystemWindow>

currentFilePath
	- is the current file path used to open and save files

markdownMenu
	- is the yellowbutton menu with which a user can interact with the editor, 
	e.g. open the settings menu and display the parsing tree

markdownText
	- is the text that a user writes in the editor

pluggableTextMorph
	- is the area where a user can write Markdown text

window
	- is the window to the model in which the editor is displayed
