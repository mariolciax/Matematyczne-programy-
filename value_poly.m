function val_poly = my_polyval(w,x)
  
  
val_poly = 0;
n = length(w);
for s = 2:n
  val_poly = val_poly.*x+ w(s);
end
end
