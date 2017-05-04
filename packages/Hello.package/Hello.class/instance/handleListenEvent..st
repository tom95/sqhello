as yet unclassified
handleListenEvent: anEvent

	^ (anEvent isKeystroke and: [anEvent keyString = self activationKeyString])
		ifTrue: [
			 self visible
				ifTrue: [self close]
				ifFalse: [self open].
			true]
		ifFalse: [false]