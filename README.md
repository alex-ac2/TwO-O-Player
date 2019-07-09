# TwO-O-Player

<!-- 
Remember that objects are important for two things:

State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)
Write down the methods for each class while also speaking to the following points:

What information is relevant to each class?
What will they need in order to be initialized?
What public methods will be defined on them?
Furthermore:

Which class will contain the game loop (where each instance of the loop is the other players turn)?
Which class should manage who the current_player is?
Which class(es) will contain user I/O and which will not have any? -->

Main --> Game(loop)

Main.rb
- calls game class


Classes 
- Game
- Player
- Question
- Turn
- Turn manager
- Summary

Game class:
1. Initialize local instance
- @player1 (p1), player2(p2)
- @Current Players
- @turn_manager instance
2. Game loop

Player class:
- @name
- @lives: 3
- @score

Question class:
- 2 select number between 1-20
- Pre calculated correct answer
- Question printout

Turn 
- @Current player
- @Answer input
- @Round Number

Turn manager
- Writes change to life and or score


Summary
- Checks current player life level/ if gameover
- Player score
- If answer was correct 

