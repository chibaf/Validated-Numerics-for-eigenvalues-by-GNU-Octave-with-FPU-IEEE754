function veig
	format long
	N=4;
	A=[1 2 1 2;2 2 -1 1;1 -1 1 1;2 1 1 1]
	[P,D]=eig(A)
	setround(-1)  % round toward downward
	V=P*D;
	setround(1)  % round toward upward
	VV=P*D;
	mV=V+0.5*(VV-V);
	rV=mV-V;
	setround(-1)  % round toward downward
	E=mV*P'+(-rV)*abs(P')-A;
	F=P*P'-eye(N);
	setround(1)  % round toward upward
	EE=mV*P'+rV*abs(P')-A;
	FF=P*P'-eye(N);
	k=max(abs(E),abs(EE));
	k2=max(abs(F),abs(FF));
	e1=norm(k,inf)
	e2=norm(k2,inf)
	display("\n")
	display(" errors of approximate eigenvaues\n")
	e=diag(abs(D)*e2+e1*eye(N))
endfunction