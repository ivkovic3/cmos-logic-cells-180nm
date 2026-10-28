wp_wn_ratio = [6/6, 9/6, 12/6,  15/6, 18/6, 21/6, 24/6, 27/6];

% Merenja kašnjenja u sekundama (primerne vrednosti – zameni svojim!)
tplh = [38.687e-12, 30.1429e-12, 26.0117e-12, 23.34587e-12, 21.180793e-12, 20.11632e-12, 19.08357e-12, 18.27728e-12];
tphl = [18.5267e-12, 20.1239e-12, 22.26899e-12, 24.58256e-12, 26.648772e-12, 28.90393e-12, 31.047926e-12, 33.13877e-12];

% Ukupno (prosečno) kašnjenje
tavg = (tplh + tphl) / 2;

% Crtanje grafika
figure;
hold on;
plot(wp_wn_ratio, tphl * 1e12, '-o', 'LineWidth', 2, 'Color', 'r'); % crveno - tplh
plot(wp_wn_ratio, tplh * 1e12, '-s', 'LineWidth', 2, 'Color', 'b'); % plavo - tphl
plot(wp_wn_ratio, tavg * 1e12, '-d', 'LineWidth', 2, 'Color', 'g'); % zeleno - tavg

% Podešavanje izgleda
xlabel('Odnos W_{PMOS} / W_{NMOS}');
ylabel('Kašnjenje [ps]');
title('Zavisnost kašnjenja od odnosa Wp/Wn');
legend('t_{PHL}', 't_{PLH}', 't_{avg}', 'Location', 'best');
grid on;
hold off;
