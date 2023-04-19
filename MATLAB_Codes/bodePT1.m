% - erstellt Vector mit Werten zwischen 10^-2 und 10^2
w=logspace(-2,2);
% - erstellt Vector G enthält 
% - size(w) 1 kreuz N Matrix; N = # Elemente in w entspricht Array mit N
% Elementen
% - ones(size(w)) erstellt 1 kreuz N Matrix, an jedem Index mit 1 befüllt
% - ./ teilt Elementweise jeden Wert des Arrays/Matrix durch das komplexe
% Ergebnis des Nenners
% - G ist der Ergebnis Array/die Matrix
G=ones(size(w))./(1+j*w);
% - subplot erstellt ein Raster/Matrix mit (x, y, ) Achse. Der 3. Wert gibt
% die Position des aktuellen Subplot an
% - semilogx erstellt Plot mit logarithmische X-Achse, linearer y-Achse.
% (x, y) gib die Daten für die entsprechende Achse
subplot(2, 1, 1), semilogx(w, 20 * log10(abs(G)))
grid, ylabel('|G(w)| [db]')
% erstellt zweiten Plot mit den (x, y) Werten für (w, WInkel in Grad)
subplot(2, 1, 2), semilogx(w, 180*angle(G)/pi)
grid, xlabel('w normiert auf w-gernz')
ylabel('Phase [grad]')