model lab7

parameter Real N = 1420; // максимальное количество людей, которых может заинтересовать товар
parameter Real n0 = 12; // количество людей, знающих о товаре в начальный момент времени
Real n(start=n0); // количество людей, знающих о товаре

function k
  input Real t;
  output Real result;
algorithm
//result := 0.7; //для первого случая
//result := 0.00003; //для второго случая
result := 0.57*sin(t); //для третьего случая
end k;

function p
  input Real t;
  output Real result;
algorithm
//result := 0.000012; // для первого случая
//result := 0.5; //для второго случая
result := 0.38*cos(13*t); //для третьего случая
end p;

equation

der(n) = (k(time) + p(time) * n)*(N-n);

end lab7;
