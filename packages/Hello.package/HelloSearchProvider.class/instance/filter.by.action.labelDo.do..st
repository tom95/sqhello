as yet unclassified
filter: aCollection by: aSearchString action: anActionString labelDo: aLabelBlock do: anActivateBlock

	^ (OrderedCollection streamContents: [:stream | | index num |
		num := 0.
		index := 1.
		[index <= aCollection size and: [num < self maxResults]] whileTrue: [ | label score item |
			item := aCollection at: index.
			label := aLabelBlock value: item.
			score := self match: aSearchString value with: label.
			index := index + 1.
			
			score > 0 ifTrue: [
				num := num + 1.
				stream nextPut: (HelloItem
					action: (anActionString valueWithArguments: {item})
					label: label
					do: [anActivateBlock value: item]
					score: score)]]]) contents