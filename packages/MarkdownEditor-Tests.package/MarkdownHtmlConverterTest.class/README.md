A MarkdownHtmlConverterTest tests conversion of Markdown text to HTML.

Instance Variables
	htmlConverter:		<MarkdownHtmlConverter>
	oldStyleSettings:	<MarkdownStyleSettings>
	parser:						<MarkdownParser>
	parsingState:			<MarkdownParsingState>

htmlConverter
	- is the converter that converts the Markdown text

oldStyleSettings
	- current style settings of user

parser
	- is a MarkdownParser that parses the Markdown text before the convertion

parsingState
	- is a MarkdownParserState that is needed when parsing the Markdown text
