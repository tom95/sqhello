as yet unclassified
search: aString

	^ {HelloItem
	action: 'Google'
	label: 'Search ''', aString, ''' ...'
	do: [ExternalUnixOSProcess command: 'xdg-open "http://google.com/search?q=', aString, '"']
	score: 0}