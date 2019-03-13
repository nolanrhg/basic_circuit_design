%% Lab 2 Post-lab

% frequencies used
f = [100 200 400 600 800 1000 2000 4000 6000 8000 10000 20000 40000];

% simulated complete circuit voltages
pv_sim_complt = [0.853 0.829 0.749 0.655 0.568 0.496 0.286 0.15 0.101 ...
                 0.0759 0.0609 0.0305 0.0153];
             
% measured circuit voltages
pv_measrd = [0.854 0.8290 0.7585 0.670 0.587 0.5155 0.3040 0.159 0.109 ...
             0.0805 0.0640 0.0325 0.0165];

figure
semilogx(f, pv_sim_complt, 'r-', 'LineWidth', 1.3)
hold on
semilogx(f, pv_measrd, 'ko', 'LineWidth', 3)
axis([0 40000 0 1])
grid on
xlabel('Frequency (Hz)')
legend('Sim. Complete Voltages', 'Measured Voltages')
ylabel('Voltage (V)')
title('Peak Voltage across a 1.5 nF Capacitor')