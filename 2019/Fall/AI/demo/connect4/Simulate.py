from Play import *

players = ['RandomLegal', 'MinMaxPointHeuristicD6', 'MinMaxTotalLengthHeuristicD6', 'MinMaxPossible4HeuristicD6', 'MinMaxPointHeuristicD4', 'MinMaxTotalLengthHeuristicD4', 'MinMaxPossible4HeuristicD4', 'MinMaxRandomLegalHeuristicD4']

results = []
for i in range(5):
  for player1 in players:
    for player2 in players:
      print(player1,player2)
      p = Play(player1, player2, 700)
      p._draw._canvas.setTitle(player1 + ' vs ' + player2)
      result = p.run()
      results.append( (player1,player2,result) )
      if result == 1:      
        p._draw._canvas.setTitle(player1 + ' vs ' + player2 + ': Red wins!')
      elif result == -1:      
        p._draw._canvas.setTitle(player1 + ' vs ' + player2 + ': Yellow wins!')
      else:      
        p._draw._canvas.setTitle(player1 + ' vs ' + player2 + ': Draw')
        
      p._draw._canvas.close()
    
      record = {}
      for p in players:
        record[p] = [0,0,0]
      for (p1,p2,r) in results:
        if r == 1:
          record[p1][0] += 1
          record[p2][1] += 1
        elif r == -1:
          record[p1][1] += 1
          record[p2][0] += 1
        else:
          record[p1][2] += 1
          record[p2][2] += 1
        
      print()
      output = []
      for p in players:
        try:
          total = (record[p][0] + .5*record[p][2])*100./sum(record[p])
        except:
          total = 0.
        l = ' '.join((('%6.2f'%total),p, ' - '.join([str(r) for r in record[p]])))
        output.append((total,-record[p][2],l))
      output.sort()
      output.reverse()
      for (a,b,c) in output:
        print(c)
      print()
