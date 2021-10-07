Class {
	#name : #MyArrayTest,
	#superclass : #TestCase,
	#traits : 'TContainerTests',
	#classTraits : 'TContainerTests classTrait',
	#category : #'Containers-Tests'
}

{ #category : #initialization }
MyArrayTest >> setUp [

	super setUp.
	container := MyVector new.
]
