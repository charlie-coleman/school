import argparse
import random
import UnionFind
from math import *
import cs1graphics

class Maze:
  def __init__(self, size, displaySize, loops=0, showDestination=False):
    self._start = (random.randint(0,size-1), random.randint(0,size-1))
    while True:
      self._end = (random.randint(0,size-1), random.randint(0,size-1))
      if abs(self._start[0]-self._end[0]) > 1 or abs(self._start[1]-self._end[1]) > 1:
        break
        
    # Passage is a tripple (x,y,v) where (x,y) is the coorinate of the cell
    # above or to the left and v is a bool indicating if the opening is vertical
    self._passages = set()
    
    # Build the walls
    allWalls = list()
    for x in range(size):
      for y in range(size):
        if x < size-1:
          allWalls.append((x,y,True))
        if y < size-1:
          allWalls.append((x,y,False))
    random.shuffle(allWalls)
    
    components = UnionFind.UnionFind()
    for x in range(size):
      for y in range(size):
        components.add((x,y))
      
    for (x,y,v) in allWalls:
      cell0 = (x,y)
      if v:
        cell1 = (x+1,y)
      else:
        cell1 = (x,y+1)
        
      if components.find(cell0) != components.find(cell1):
        self._passages.add((x,y,v))
        components.union(cell0, cell1)
        
    # Add loops
    random.shuffle(allWalls)
    numLoops = 0
    for (x,y,v) in allWalls:
      if (x,y,v) not in self._passages and numLoops < loops:
        cell0 = (x,y)
        if v:
          cell1 = (x+1,y)
        else:
          cell1 = (x,y+1)
            
        self._passages.add((x,y,v))
        components.union(cell0, cell1)
        numLoops += 1
        print ('Adding loop', numLoops, loops)
      
    
    # Setup the canvas
    self._scale = displaySize / size
    self._canvas = cs1graphics.Canvas(displaySize,displaySize)
    self._canvas.setBackgroundColor('black')
  
    self._lineWidth = .2*self._scale
    border = cs1graphics.Square(displaySize, cs1graphics.Point(displaySize/2,displaySize/2))
    border.setBorderColor('red')
    border.setDepth(-10)
    border.setBorderWidth(self._lineWidth)
    self._canvas.add(border)

    self.reveal(self._start)
    self._current = cs1graphics.Circle(.25*self._scale, cs1graphics.Point((.5+self._start[0])*self._scale, (.5+self._start[1])*self._scale))
    self._current.setFillColor('blue')
    self._current.setDepth(-10)
    self._canvas.add(self._current)
    
    if showDestination:
      goal = cs1graphics.Circle(.25*self._scale, cs1graphics.Point((.5+self._end[0])*self._scale, (.5+self._end[1])*self._scale))
      goal.setFillColor('green')
      goal.setDepth(-10)
      self._canvas.add(goal)
      
  def run(self):
    current = list(self._start)
    command = ''
    while command != 'q':
      if tuple(current) == self._end:
        print('Congradulations, you have reached the goal!')
        break
      command = input('Command (u,d,l,r or q): ')
      if command == 'u':
        if (current[0],current[1]-1,False) in self._passages:
          current[1] -= 1
          self.reveal(current)
          self._current.move(0, -self._scale)
        else:
          print('Cannot move up, a wall is in the way.')
      if command == 'd':
        if (current[0],current[1],False) in self._passages:
          current[1] += 1
          self.reveal(current)
          self._current.move(0, self._scale)
        else:
          print('Cannot move down, a wall is in the way.')
      if command == 'l':
        if (current[0]-1,current[1],True) in self._passages:
          current[0] -= 1
          self.reveal(current)
          self._current.move(-self._scale, 0)
        else:
          print('Cannot move left, a wall is in the way.')
      if command == 'r':
        if (current[0],current[1],True) in self._passages:
          current[0] += 1
          self.reveal(current)
          self._current.move(self._scale, 0)
        else:
          print('Cannot move right, a wall is in the way.')
        
    
  def reveal(self, location):
    square = cs1graphics.Square(self._scale, cs1graphics.Point( (.5+location[0])*self._scale, (.5+location[1])*self._scale) )
    square.setFillColor('white')
    square.setBorderColor('white')
    square.setDepth(-5)
    self._canvas.add(square)
    
    x = location[0]
    y = location[1]
    for w in [(x,y,True),(x,y,False),(x-1,y,True),(x,y-1,False)]:
      if w not in self._passages:
        wall = cs1graphics.Path()
        wall.setBorderColor('red')
        wall.setDepth(-10)
        wall.setBorderWidth(self._lineWidth)
        if w[2]:
          wall.addPoint( cs1graphics.Point((w[0]+1)*self._scale, w[1]*self._scale) )
          wall.addPoint( cs1graphics.Point((w[0]+1)*self._scale, (w[1]+1)*self._scale) )
          for p in [cs1graphics.Point((w[0]+1)*self._scale, w[1]*self._scale), cs1graphics.Point((w[0]+1)*self._scale, (w[1]+1)*self._scale) ]:
            c = cs1graphics.Circle(self._lineWidth/2, p)
            c.setFillColor('red')
            c.setBorderWidth(0)
            c.setDepth(-10)
            self._canvas.add(c)
        else:
          wall.addPoint( cs1graphics.Point(w[0]*self._scale, (w[1]+1)*self._scale) )
          wall.addPoint( cs1graphics.Point((w[0]+1)*self._scale, (w[1]+1)*self._scale) )
          for p in [cs1graphics.Point(w[0]*self._scale, (w[1]+1)*self._scale), cs1graphics.Point((w[0]+1)*self._scale, (w[1]+1)*self._scale) ]:
            c = cs1graphics.Circle(self._lineWidth/2, p)
            c.setFillColor('red')
            c.setBorderWidth(0)
            c.setDepth(-10)
            self._canvas.add(c)
        self._canvas.add(wall)
        
    for px in [x,x+1]:
      for py in [y,y+1]:
        p = cs1graphics.Point(px*self._scale,py*self._scale)
        c = cs1graphics.Circle(self._lineWidth/2, p)
        c.setFillColor('red')
        c.setBorderWidth(0)
        c.setDepth(-10)
        self._canvas.add(c)

# Main routine
parser = argparse.ArgumentParser()
parser.add_argument('size', help='Number of rows and columns in the maze', type=int)
parser.add_argument('window_size', help='Width and height of the graphics window', type=int)
parser.add_argument('--loops', '-l', help='Number of loops in the maze (default: 0)', type=int, default=0)
parser.add_argument('--goal', '-g', help='Show goal', action='store_true')
args = parser.parse_args()

m = Maze(args.size, args.window_size, args.loops, args.goal)
m.run()
