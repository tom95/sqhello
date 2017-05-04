as yet unclassified
keyStroke: anEvent

	| key |
	key := anEvent keyString.

	(#('<down>' '<Cmd-j>') includes: key)  ifTrue: [^ self triggerEvent: #move with: 1].
	(#('<up>' '<Cmd-k>') includes: key) ifTrue: [^ self triggerEvent: #move with: -1].

	super keyStroke: anEvent