from cs1graphics import *

class Connect4Visualizer:
  def __init__(self, size):
    self._spacing = size/7.
    self._radius = self._spacing/3.
    
    self._canvas = Canvas(size, size*6./7, title='Connect 4')
    self._canvas.setBackgroundColor('blue')
    
    self._circles = []
    for r in range(6):
      row = []
      for c in range(7):
        spot = Circle(self._radius)
        spot.setFillColor('white')
        spot.moveTo((c+.5)*self._spacing, (5.5-r)*self._spacing)
        row.append(spot)
        self._canvas.add(spot)
      self._circles.append(row)
      
      
  def draw(self, state):
    for r in range(6):
      for c in range(7):
        if state.getRed(r,c):
          self._circles[r][c].setFillColor('red')
        elif state.getYellow(r,c):
          self._circles[r][c].setFillColor('yellow')
