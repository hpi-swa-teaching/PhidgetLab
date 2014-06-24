export
export

| packageA packageB packageC packageD folder zip mczStreamA mczStreamB mczStreamC mczStreamD workingCopyA workingCopyB workingCopyC workingCopyD version |

packageA := 'Phidget-EToys'.
packageB := 'Phidget-Core'.
packageC := 'MultiColumn Lists-Core'.
packageD := 'Project07-Core'.
folder := (FileDirectory uri: 'out_sar') fullName.

FileDirectory deleteFilePath: packageA, '.sar'.

zip := ZipArchive new.
mczStreamA := RWBinaryOrTextStream on: (String new: 10000).
workingCopyA := MCWorkingCopy forPackage: (MCPackage new name: packageA).
version := workingCopyA newVersion fileOutOn: mczStreamA.
(zip addString: mczStreamA contents as: packageA, '.mcz') desiredCompressionLevel: 0.

mczStreamB := RWBinaryOrTextStream on: (String new: 10000).
workingCopyB := MCWorkingCopy forPackage: (MCPackage new name: packageB).
version := workingCopyB newVersion fileOutOn: mczStreamB.
(zip addString: mczStreamB contents as: packageB, '.mcz') desiredCompressionLevel: 0.

mczStreamC := RWBinaryOrTextStream on: (String new: 10000).
workingCopyC := MCWorkingCopy forPackage: (MCPackage new name: packageC).
version := workingCopyC newVersion fileOutOn: mczStreamC.
(zip addString: mczStreamC contents as: packageC, '.mcz') desiredCompressionLevel: 0.

mczStreamD := RWBinaryOrTextStream on: (String new: 10000).
workingCopyD := MCWorkingCopy forPackage: (MCPackage new name: packageD).
version := workingCopyD newVersion fileOutOn: mczStreamD.
(zip addString: mczStreamD contents as: packageD, '.mcz') desiredCompressionLevel: 0.

zip addFile: ((FileDirectory default) containingDirectory containingDirectory fullName, FileDirectory slash, 'PhidgetPlugin.dll') as: 'PhidgetPlugin.dll'.

zip addString:  'self fileInMonticelloZipVersionNamed: ''' , packageA, '.mcz''. 
  self fileInMonticelloZipVersionNamed: ''' , packageB, '.mcz''.
 self fileInMonticelloZipVersionNamed: ''' , packageC, '.mcz''.
 self fileInMonticelloZipVersionNamed: ''' , packageD, '.mcz''.
(FileDirectory new fileExists: ((FileDirectory default) containingDirectory fullName, FileDirectory slash, ''Etoys-To-Go 5.0.app'', FileDirectory slash, ''PhidgetPlugin.dll''))
	ifTrue: [self extractMember: ''PhidgetPlugin.dll'' toFileNamed: (FileDirectory default) containingDirectory fullName, FileDirectory slash, ''Etoys-To-Go 5.0.app'', FileDirectory slash, ''PhidgetPlugin.dll''].'
 as: 'install/preamble'.

zip writeToFileNamed: packageA , '.sar'.