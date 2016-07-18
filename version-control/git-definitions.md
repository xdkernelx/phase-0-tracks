# Nestor J. Alvarez

* What is version control?  Why is it useful?
  Version control is the concept of maintaining the changes in code in an organized manner as to reduce introduction of errors that can take a while to debug if there is no way to revert back to a working copy. 

* What is a branch and why would you use one?
  A branch is as the name suggests, a tangent in the main body of code. It allows for a developer to independently work on code to either add new features, optimize solutions, and debug or fix security exploits all without completely messing up with the original. If the developer fills like they have working code, it is sent to be analyzed, and then it is implemented (or merged) with the main code. 

* What is a commit? What makes a good commit message?
  A commit is more or less a save instance. If at any point, code that was working breaks either through a broken link, messed up APIs, or inaccessibility of other code (maybe improper authorization) or even updated syntax rules (i.e. Python 2 to Python 3 print function), you can easily just revert back to an earlier instance and see if everything works. In the case of updated syntax, you might need to start from ground zero. 

  A good commit message is one that describes in a concise but precise manner just exactly what you did to a file. Did you add a special function to a code? If so, what does it do, is it left unoptimized, what are some special notes of the additions? If you simple re-organized or optimized code, explain how to benefit future code maintainers. 

* What is a merge conflict?
  A merge conflict as I understand is when a file from two branches, including the master branch, is modified. When a merge is attempted, if there are any lines that "overlap," git will give you a warning.

  Likewise, if you have deleted any files that should be there from the point of branching and editing, you will get a warning. Nothing should occur if you create and then delete a file in a feature branch before merging with the master though. 