as yet unclassified
initialize

	super initialize.

	self activeHand addKeyboardListener: self.

	activeItemIndex := 0.

	searchInput := (HelloInput placeholder: 'Search ...')
		font: '16';
		when: #confirmed send: #doSelectedItem to: self;
		when: #move send: #moveActiveItem: to: self;
		when: #cancelled send: #close to: self;
		when: #startSearch send: #startSearch: to: self.

	resultList := BTListGroup new.

	self
		withLayout;
		vertical: true;
		padding: BTWidget spacing;
		spacing: BTWidget spacing;
		add: searchInput;
		add: resultList