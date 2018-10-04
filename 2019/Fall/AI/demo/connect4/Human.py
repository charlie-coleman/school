from random import *

class Player:
  def getMove(self, state):
    actions = state.actions()
    
    print('Move options: ' + ' '.join([str(x) for x in actions]))
    return int(input('Select move: '))
    
    
