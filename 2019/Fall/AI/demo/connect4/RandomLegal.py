from random import *

class RandomLegal:
  def getMove(self, state):
    actions = state.actions()
    
    return actions[randint(0,len(actions)-1)]
