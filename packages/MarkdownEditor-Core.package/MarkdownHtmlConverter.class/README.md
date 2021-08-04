A MarkdownHtmlConverter converts Markdown text into HTML. It is implemented as a double dispatch. This is why the converter has so much knowledge about the different blocks, but it also causes the linter to complain about a violation of the Law of Demeter. This construction is intentional.

Instance Variables
