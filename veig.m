function veig
	format long
	N=4;
	A=[1 2 1 2;2 2 -1 1;1 -1 1 1;2 1 1 1]
	[P,D]=eig(A)
	%display("down:\n")
	setround(-1)
	V=P*D;
	%display("up:\n")
	setround(1)
	VV=P*D;
	mV=V+0.5*(VV-V);
	rV=mV-V;
	%display("down:\n")
	setround(-1)
	E=mV*P'+(-rV)*abs(P')-A;
	F=P*P'-eye(N);
	%display("up:\n")
	setround(1)
	EE=mV*P'+rV*abs(P')-A;
	FF=P*P'-eye(N);
	k=max(abs(E),abs(EE));
	k2=max(abs(F),abs(FF));
	e1=norm(k,inf)
	e2=norm(k2,inf)
	e=diag(abs(D)*e2+e1*eye(N))
endfunction