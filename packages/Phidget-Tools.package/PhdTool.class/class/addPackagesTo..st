sarCreation
addPackagesTo: zip

	self packagesForSar, self additionalPackages
		do: [:each |
			| mczStream |
			mczStream := RWBinaryOrTextStream on: (String new: 10000).
			(MCWorkingCopy forPackage: (MCPackage new name: each))
															newVersion fileOutOn: mczStream.
			(zip addString: mczStream contents as: each, '.mcz') desiredCompressionLevel: 0].