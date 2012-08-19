### Wander Behaviour ###

class Move extends Behaviour

  constructor: (@vector, @radius = 100, @strength = 1.0) ->



    # @theta = 0.5*Math.PI * 2

    super
  
  apply: (p, dt, index) ->

    #super p, dt, index

    # @theta += (Math.random() - 0.5) * @jitter * Math.PI * 2

    @theta = (@vector.x - p.acc.x) / (@vector.y - p.acc.y)

    p.acc.x += Math.cos(@theta) * @radius * @strength
    p.acc.y += Math.sin(@theta) * @radius * @strength

