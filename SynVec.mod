: Graded Synapse with first order binding kinetics

NEURON {
POINT_PROCESS SynVec
	RANGE g,gain
	RANGE e
	RANGE postX,postY,preX,preY,cellNum
	NONSPECIFIC_CURRENT i
}

PARAMETER {
	g=0					:set by presynaptic release
	e=0					:reversal potential
	postX=0				:location x
	postY=0				:location y
	preX=0
	preY=0				:location of presynaptic cell
	cellNum=-1			:the presynaptic BC
	gain=1				:gain factor

}

ASSIGNED {
	v (millivolt)
	i (nanoamp)
}
 
BREAKPOINT {
	if(g<0){
		g=0
	}
	i = (1e-3)*g*gain* (v - e)
}
 
 
