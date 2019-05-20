## IOS Essentials notes

## Intro to IOS Development

XCode
  - the IDE used to build iOS applications
  - provides all the tools needed to build the user interface (Storyboards) and manage the logic of the app (Swift)
  - XCode 9.4.1 was used to develop this application
  
Storyboards
  - used to build the user interface in XCode
  - allows us to visually layout user interface instead of having to build it in code
  - gives us quick feedback on what the interface looks like
  - in the storyboard, we can manage each scene for the app
  - each scene managed by a View Controller which connects what we build in our storyboard to the code
      - allows us to respond to taps on the screen, as well as load data into our view

Swift
  - programming language developed by Apple as a successor to Objective-C
  - complied language (before program can run, compiler takes all the code and runs through all of it to ensure there are no errors)
  - if no errors, complier generates a file of "machine code" that will run on iOS devices or simulators
  
  print() function
  - takes a value passed in the parentheses and outputs the value passed out to the screen
  - e.g. print("Hello, World!");
  
  Variables
  - defined using the var keyword
  - e.g. var myNumber = 5   // myNumber contains the Integer 5
         myNumber = 6       // myNumber now contains the Integer 6
  
  Constants
  - value held never changes over the execution of the program
  - defined using the let keyword
  - e.g. let myNumber = 5   // myNumber contains the Integer 5
         myNumber = 6       // error here, cannot redefine a constant
  
  Types
    - a way of telling the computer the type of data that is being stored in a variable
    - common types:
        - Int for who numbers, or Integers
        - Double for double precision floating point numbers, e.g. 3.141592653
        - String for a list of characters that are always surrounded by double quotes, e.g. "This is a string"
        - Boolean for true/false
    - these types allow the swift compiler to verify that the data that is being passed around in the application matches what each part of the application expects
    - allows compiler to help programmers by showing errors and warnings that the wrong types are being used
    - let implicitly infer variables (i.e. compiler decides what type the variable should be based on the data it was assigned to)
    
    e.g. 
      let integerNumber                 = 5    // 5 is a whole number so the type is inferred to an Integers
      let doubleNumber                  = 5.25 // Adding the '.25' makes this an implicit Double
      let explicitDoubleNumber : Double = 5    // The ': Double' tells the compiler to make this constant a Double even though the number being assigned is a whole number
      
    - Variables are never implicitly converted to other types, it is up to the programmer to change the type of variable if needed
    
    e.g. 
      var label = "Number of students enrolled "
      var studentCount = 10
      var studentLabel = label + String(width)  // String() function converts number to String
      // Can also include values inside of strings by using the \() syntax
      // studentLabel = "Number of students enrolled \(studentCount)"
  
  Arrays
    - store an ordered list of values
    - elements accessed by their index number, or the position they have in the array using the [0] syntax
    
    e.g.
      let myArray = [1,2,3,4,5] // myArray contains the values 1 through 5
      print(myArray.count)      // prints the number 5, the amount of items in the array
      print(myArray[0])         // prints the number 1, the first item in the array
      
    - Array indexes start at 0, therefore to get the final number in the array above you have to used myArray[4] instead of myArray[5]
    
  Dictionaries
    - similar to arrays, still contain a list of items, except instead of using a number to identify each item, a name is used
    - name gets associated with value stored in the dictionary
    
    e.g.
      let studentScores : [String: Int] = ["Malcolm": 73, "Jack": 45, "Leela": 90, "Jean-Luc":85]
      print(studentScores["Jack"])  // prints the number 45
      
  Control Flow
    - if, else if, else
    - allows use to branch our code depending on a certain condition
    
    e.g. 
      let studentCount = 1
      if studentCount == 1{
        print("We have \(studentCount) student enrolled")
      } else {
        print("We have \(studentCount) students enrolled")
      }
      
    - what goes after the if or else if must evaluate to a boolean expression (i.e. true/false)
    - in this case, we are using the == operator to compare the variable studentCount to the number 1
    
    - Another tool is the ability to loop through all the values in an Array
    - allows us to run some code against each value in the array. 
    - loop using for ... in syntax
    
    e.g. 
      let studentGrades = [50, 23, 68, 75, 89, 42]
      var passingStudents = 0
      for grade in studentGrades {
        if grade >= 50 {
          passingStudents += 
        }
        // No else case here has we don't want to do anything if the grade isn't above 50
      }
      
      print(passingStudents)  // prints the number 4
      
    - The above code loops through the constant sutdentGrades and checks each value in the array.
      if the grade is above or equal (>=) to 50, 1 is added (+=) to the passingStudents variable.
      After looping is done, the number is printed.
      
  Function
    - allow us to collect isntructions together into a repeatable section of code that we can then invoke from other parts of the code
    - define functions by using the func keyword
    
    e.g.
      func greet(){
        print("Hello!")
      }
      
      - In this example, we create a function called greet
      - Note that the code inside the function does NOT get run, but stored into memory to be invoked at a later time
      - if we were to write out greet() elsewhere in the code, our program would execute the instructions inside of this function (write out string Hellow! to the screen)
    
    - Functions can also take arguments which can then be used by the function to change the way it works
    
    e.g. 
      func greet(name: String){
        print("Hello, \(name)!")
      }
      
      greet(name: "Malcolm") // prints "Hello, Malcolm!"
      greet(name: "Jack")    // prints "Hello, Jack!"
      greet(name: 1)         // Error, name has to be a string
      
    - every argument in a function has to have the type of each argument that is expected 
      or an error will be thrown
      
    - functions can also return a value
    - allows us to break up our code and have functions that can make decisions and return the result of that decision to another part of our code 
    - in order to tell the code what it should send back to the part of the code which called the function, use keyword return
    
      e.g. 
        func greet(name: String) -> String {
          return "Hello, \(name)"
        }
        
        let greetMalcolm = greet(name: "Malcolm") // greetMalcom now contains the String "Hello, Malcolm!"
      
      - need to define the type that the function returns
      - use '-> Type' syntax to show that the function returns that type
      - the compiler can check that the returned value is the same type that's being expected.
  
