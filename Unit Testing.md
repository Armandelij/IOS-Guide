# Unit Testing

Unit testing is tesing a unit of code or single functionality. The purpose of this is to 

- Validate that a piece of code performs as expected.
- Confirms that code is woking the way it should be working.
- Prevents Regression.
- Use with CI/CD or Continous intergration or continuous deployment. Allows you and a co-worker successfully create features within a shared project 
so when you merge code both merged samples wont break the others features.



## Best Practices
 Independent - They should not rely on any external source (database, api)
 
 Automated - They can run in the background
 
 *Given - When - Then*
 
 Given - What will you be testing. 
 
 When - is the condition for what youre doing.
 
 Then - What should happen as a result of the testing. 
 
 Code Coverage - What percentage of Code Coverage should you have. (At least %60 covered)
 
 Quality over Quantity - 
 
 ## Test Driven Development (TDD)
 
 Step 1: Write a failing test or create a feature you have not written the code for and the challange it to make the test pass.
 
 Step 2: Write the minimum amount of code for your test to pass.
 
 Step 3: Refactor and make your code better. Keep the functionality the same.
 
 RED - GREEN - REFACTOR
 
 
 ## COMMON TERMS WHEN DEALING WITH UNIT TESTING
 
 Mocking - Simulate behavior of real objects
 
 Stubbing - Create predictable input to the fuctionality being tested.
 
 Faking - Working different implementation that is different than production.
 
 
 
 
 
 
 
