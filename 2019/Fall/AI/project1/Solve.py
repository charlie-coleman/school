import argparse

parser = argparse.ArgumentParser(description='Solve a sliding tile puzzle.')
parser.add_argument('size', type=int, help="Work with a size by size puzzle, e.g size=3, 4 or 5")
parser.add_argument('--graphics', '-g', type=int, help="Display the solution using graphics with specified window size")
args = parser.parse_args()

from SlidingTilePuzzleSolver import *

p = SlidingTilePuzzle (args.size, range(args.size*args.size))
s = p.randomState()
print 'Solving puzzle:', s

solver=MySolver(args.size,s)
moves = solver.solution()
#print 'Solution:', moves

# Check the solution
puzzle = solver.getPuzzle()
state = puzzle.getInitial()
for a in moves:
  state = puzzle.result(state, a)
if puzzle.isGoal(state):
  print 'Solution is correct'
else:
  print 'Solution is incorrect'

if args.graphics:
  from Visualize import *
  v = SlidingTileVisualizer(args.size, s, p, args.graphics)
  v.animate(moves)
  
