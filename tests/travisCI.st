| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'Project07';
  repository: 'filetree://', gitPath, '/PhidgetLab/packages';
  get.

Metacello new
  baseline: 'Project07';
  repository: 'filetree://', gitPath, '/PhidgetLab/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfProject07' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
