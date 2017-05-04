as yet unclassified
defaultItems

	^ {
		HelloItem action: 'Image' label: 'Save' do: [Smalltalk saveSession].
		HelloItem action: 'Image' label: 'Save and Quit' do: [Smalltalk snapshot: true andQuit: true].
		HelloItem action: 'Open' label: 'Monticello' do: [MCWorkingCopyBrowser open].
		HelloItem action: 'Open' label: 'Workspace' do: [StandardToolSet openWorkspace].
		HelloItem action: 'Open' label: 'Browser' do: [StandardToolSet openClassBrowser].
		HelloItem action: 'Open' label: 'File List' do: [StandardToolSet openFileList].
		HelloItem action: 'Open' label: 'Transcript' do: [Transcript openLabel: 'Transcript']}