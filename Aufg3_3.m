%w in von 0 - 1000 in 0.1 Schritten
w = 0:0.01:100
%Uebertragsfunktion fuer 1)
G = 2 * exp(-(6 * j .* w)) ./ j .* w .*(1 + 1 * j .* w)
plot(real(G), imag(G))