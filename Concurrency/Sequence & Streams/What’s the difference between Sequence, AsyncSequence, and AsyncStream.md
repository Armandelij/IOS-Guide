# What’s the difference between Sequence, AsyncSequence, and AsyncStream

# Sequence

The sequence protocol will return values untill the sequence is terminated by returning nil. 
Things such as string, arrays, ranges and Data conform to the sequence protocol.
Through protocol extension Sequence gives us access to a variety of methods like contains(), filter(), and map()

# AsyncSequence & AsyncStreams 

The AsyncSequence protocol returnes each element asynchronously, there are two major impacts on the way it works.
- In order to read a value from a async sequence you must use the **await** keyword so the sequence can suspend itself while reading its next value.
- More advanced async sequences knonw as async streams might generate values faster than you can read them and in this case you can discard extra values or
- buffer them to be read later. 


In the first case think of your code wanting the values faster than the async sequence can produce them and in the second case the async sequence generates
data faster than your code. 
