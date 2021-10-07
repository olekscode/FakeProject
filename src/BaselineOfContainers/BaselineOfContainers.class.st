Class {
	#name : #BaselineOfContainers,
	#superclass : #BaselineOf,
	#category : #BaselineOfContainers
}

{ #category : #baselines }
BaselineOfContainers >> baseline: spec [
	<baseline>
	spec for: #common do: [	
		"Packages"
		spec 
			package: 'Containers';
			package: 'Containers-Tests' with: [ spec requires: #(Containers) ] ].
]
