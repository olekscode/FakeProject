Class {
	#name : #CTArrayTest,
	#superclass : #TestCase,
	#traits : 'TContainerTests',
	#classTraits : 'TContainerTests classTrait',
	#category : #'Containers-Tests'
}

{ #category : #initialization }
CTArrayTest >> setUp [

	super setUp.
	container := CTArray new.
]
