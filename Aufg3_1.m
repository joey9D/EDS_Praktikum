% w in von 0 - 1000 in 0.1 Schritten
w = 0:0.1:1000
% Uebertragsfunktion fuer 1)
G = exp(-(0.03 * j .* w))
plot(real(G), imag(G))