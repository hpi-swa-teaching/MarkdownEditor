running
htmlDocumentHead

	^ '<!DOCTYPE html>
<html>
<head>', Character cr,
(htmlConverter convertStyleSettings: self styleSettingsForHtmlTests), Character cr,
'</head>
<body>', Character cr