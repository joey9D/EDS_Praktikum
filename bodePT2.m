w=logspace(-2,2);
ws = dot(w, w);
G=ones(size(w))./(1+2*0.1j*w - ws);
subplot(2, 1, 1), semilogx(w, 20 * log10(abs(G)))
grid, ylabel('|G(omega)| [db]')
subplot(2, 1, 2), semilogx(w, 180*angle(G)/pi)
grid, xlabel('omega normiert auf omega-gernz')
ylabel('Phase [grad]')