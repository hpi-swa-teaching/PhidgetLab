accessing
specifications: anSSMSpec
	specifications := anSSMSpec.
	self list: nil.
	specifications
		setupHeaderOn: self;
		setupInitialShowScreenOn: self.