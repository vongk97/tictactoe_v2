# tictactoe_v2
an updated tic tac toe game

New Changes:
- PVP instead of PVE
- Improved use of OOP design principles
- Improve UI
- Replay function

Project Class Structure:
Main:
- starts a game by instantiating a Game object and calling Game's play method
Game:
- instantiates a new Board and displays it
Board:
- Generates a 3x3 grid and sets win rules via array sequences
Player:
- Determines p1 and p2 names
    

Pseudocode:
1. Welcome message / Rules
2. Show 3x3 grid
3. Prompt P1 input
4. Verify valid input for P1 (entered value b/w 1-9 AND the corresponding cell is available)
    4a. Repeat Steps 3 and 4 until a valid input is entered
5. Repeat Steps 3,4 for P2
6. Repeat Steps 3,4,5 until:
    -A winning combination is found (Three identical symbols found horizontally, vertically, or diagonally)
    -A stalemate has been reached (All cells are occupied and no winning combo is found)
7. Prompt user to play again
