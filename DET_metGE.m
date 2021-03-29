function det = metGE(A)
    %Obliczanie wartości wyznacznika macierzy  
    %zastosowanie metody eliminacji Gaussa (GE)
    % Wywołanie: det = metGE(A)
    % WEJ: A- macierz trójdiagonalna
    % Wyj: det - wyznacznik badanej macierzy
    if A(1,1) == 0
        det = "Metoda nie jest wykonalna";
        return
    end 

    if size(A,1) ~= size(A,2) %sprawdzamy przypadek czy została podana macierz kwadratowa
        det = "To nie jest macierz kwadratowa";
        return
    end 

    n = size(A,1);
    B = A;

    for j = 2 : n  % wiersze
        wsp = B(j, j-1)/B(j-1, j-1); %obliczam wspólczynnik
        %for i = 1 : n  %kolumny  
            B(j, 1 : n) = B(j, 1 : n) - wsp .* B(j-1, 1 : n); % od każdego elementu z wiersza j odejmuje element z wiersza j-1 
        %end
    end
    det = 1;
    for i=1:n  % liczymy wyznacznik
        det = det * B(i, i);
    end 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function det = metGE(A)
    %Obliczanie wartości wyznacznika macierzy trójdiagonalnej 
    %zastosowanie metody eliminacji Gaussa (GE)
    % Wywołanie: det = metGE(A)
    % Wejście: A- macierz trójdiagonalna
    % Wyjście: det - wyznacznik badanej macierzy
    if A(1,1) == 0
        det = "Metoda nie jest wykonalna";
        return
    end 

    if size(A,1) ~= size(A,2) %sprawdzamy przypadek czy została podana macierz kwadratowa
        det = "To nie jest macierz kwadratowa";
        return
    end 

    n = size(A,1);
    B = A;

    for j = 2 : n  % wiersze
        wsp = B(j, j-1)/B(j-1, j-1); %obliczam wspólczynnik
        B(j, j-1:j) = B(j, j-1:j) - wsp .* B(j-1, j-1:j); % od elementów j-1, j z wiersza j odejmuje elementy j-1, j z wiersza j-1 
    end
    det = 1;
    for i=1:n  % liczymy wyznacznik
        det = det * B(i, i);
    end 
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ostateczna

function det = metGE(A)
%Obliczanie wartości wyznacznika macierzy trójdiagonalnej 
%zastosowanie metody eliminacji Gaussa (GE)
% Wywołanie: det = metGE(A)
% Wejście: A- macierz trójdiagonalna
% Wyjście: det - wyznacznik badanej macierzy

if A(1,1) == 0
    det = "Metoda nie jest wykonalna";
    return
end 

if size(A,1) ~= size(A,2) %sprawdzamy przypadek czy została podana macierz kwadratowa
    det = "To nie jest macierz kwadratowa";
    return
end 

n = size(A,1);
B = A;

for j = 2 : n  % wiersze
    
    if B(j-1, j-1) ~= 0
        wsp = B(j, j-1)/B(j-1, j-1); %obliczam wspólczynnik
        B(j, j-1:j) = B(j, j-1:j) - wsp .* B(j-1, j-1:j); % od elementów j-1, j z wiersza j odejmuje elementy j-1, j z wiersza j-1 
    end
    
    if B(j-1, j-1) == 0
        det = "Metoda nie jest wykonalna";
        return
    end
end
det = B(1, 1);
for i=2:n  % liczymy wyznacznik
    det = det * B(i, i);
end 
end