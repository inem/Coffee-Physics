### BoundsDemo ###
class BoundsDemo extends Demo

	setup: ->

		super

		min = new Vector 0.0, 0.0
		max = new Vector @width, @height

		edge = new EdgeBounce min, max

		for i in [0..10]

			p = new Particle 3
			p.setRadius p.mass * 5

			p.moveTo new Vector (Random @width), (Random @height)

			p.behaviours.push new Move((new Vector 10,10), 1, 100)
			p.behaviours.push edge

			@physics.particles.push p


