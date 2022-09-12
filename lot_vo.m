function dydt = lot_vo(t,y,a1,b1,c1,d1,a2,b2,c2,d2)

% Lotka - Volterra system of differential equations

  dydt = zeros(2,1);
  if t > 25
  dydt(1) = - d2 * y(1) + c2 * y(1) * y(2);
  dydt(2) = a2 * y(2) - b2 * y(1) * y(2);
else
  dydt(1) = - d1 * y(1) + c1 * y(1) * y(2);
  dydt(2) = a1 * y(2) - b1 * y(1) * y(2);
  end
end