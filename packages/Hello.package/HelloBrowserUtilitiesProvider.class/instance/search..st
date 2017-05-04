as yet unclassified
search: aString

	| browser window |
	window := SystemWindow topWindow.

	^ ((window respondsTo: #model) and: [window model isKindOf: Browser])
		ifTrue: [
			browser := window model.

			self filter: browser messageList by: aString action: 'Switch To' labelDo: #yourself do: [:message | browser selectMessageNamed: message]]
		ifFalse: [#()]