from Connect4 import *
import importlib

class Play:
  def __init__(self, player1, player2, graphics):
      self.Player1 = importlib.import_module(player1)
      exec('self._player1 = self.Player1.' + player1 + '()')
      self.Player2 = importlib.import_module(player2)
      exec('self._player2 = self.Player2.' + player2 + '()')
    
      self._state = Connect4State()

      if graphics:
        import Draw
        self._draw = Draw.Connect4Visualizer(graphics)
      else:
        self._draw = None
        
  def run(self):
    while not self._state.gameOver():
      moves = self._state.actions()
      if self._state.getTurn() % 2 == 0:
        move = self._player1.getMove(self._state)
        if move not in moves:
          print('Illegal move by red player.  Game over!')
      else:
        move = self._player2.getMove(self._state)
        if move not in moves:
          print('Illegal move by yellow player.  Game over!')
          
      #print('Turn', self._state.getTurn(),':',move)
      self._state.apply(move)
      
      if self._draw:
        self._draw.draw(self._state)
      else:
        self._state.display()
        print()
        
      
    winner = self._state.winner()
    if winner == 1:
      print('Red wins!')
    elif winner == -1:
      print('Yellow wins!')
    else:
      print("It's a draw")
      
    return winner
        
      
if __name__ == '__main__':
  import sys
  p = Play(sys.argv[1], sys.argv[2], int(sys.argv[3]))
  p.run()
